.class public Lcom/kingsoft/mail/chat/ChatCacheItemUtils;
.super Ljava/lang/Object;
.source "ChatCacheItemUtils.java"


# static fields
.field public static SEPARATOR:Ljava/lang/String; = null

.field public static final TYPE_COM_1_ATT:I = 0x1

.field public static final TYPE_COM_MORE_ATT:I = 0x2

.field public static final TYPE_COM_NO_ATT:I = 0x0

.field public static final TYPE_TO_1_ATT:I = 0x4

.field public static final TYPE_TO_MORE_ATT:I = 0x5

.field public static final TYPE_TO_NO_ATT:I = 0x3

.field public static mMailBoxs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, ", "

    sput-object v0, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->SEPARATOR:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->mMailBoxs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllReceivers([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "to"    # [Lcom/kingsoft/mail/providers/Address;
    .param p1, "myEMail"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxLength"    # I

    .prologue
    .line 183
    sget-object v0, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->SEPARATOR:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->parseNames([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentsFromMessage(Lcom/kingsoft/mail/providers/Message;)Ljava/util/List;
    .locals 12
    .param p0, "message"    # Lcom/kingsoft/mail/providers/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-boolean v9, p0, Lcom/kingsoft/mail/providers/Message;->hasAttachments:Z

    .line 202
    .local v9, "hasAttachments":Z
    const/4 v6, 0x0

    .line 203
    .local v6, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    if-eqz v9, :cond_0

    .line 204
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/EmailApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, "c":Landroid/database/Cursor;
    new-instance v11, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;

    invoke-direct {v11, v7}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;-><init>(Landroid/database/Cursor;)V

    .line 210
    .local v11, "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    :try_start_0
    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    const/4 v10, -0x1

    .line 212
    .local v10, "i":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 213
    :goto_0
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->get()Lcom/kingsoft/mail/providers/Attachment;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v10    # "i":I
    :catch_0
    move-exception v8

    .line 218
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->close()V

    .line 222
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v6, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getAttachments()Ljava/util/List;

    move-result-object v6

    .line 226
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    :cond_0
    return-object v6

    .line 220
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v11    # "mAttachmentsCursor":Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;
    :cond_1
    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Lcom/kingsoft/mail/browse/AttachmentLoader$AttachmentCursor;->close()V

    throw v0
.end method

.method public static getBodyHtml(Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 255
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuoteIndex:J

    long-to-int v0, v3

    .line 256
    .local v0, "quoteIndex":I
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v2

    .line 257
    .local v2, "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    if-lez v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 258
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(II)Ljava/lang/String;

    move-result-object v3

    .line 267
    .end local v0    # "quoteIndex":I
    .end local v2    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :goto_0
    return-object v3

    .line 259
    .restart local v0    # "quoteIndex":I
    .restart local v2    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0

    .line 265
    .end local v0    # "quoteIndex":I
    .end local v2    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    .local v1, "spannable":Landroid/text/SpannableString;
    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 267
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getBodyHtml(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getQuoteIndex()J

    move-result-wide v2

    long-to-int v0, v2

    .line 233
    .local v0, "quoteIndex":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    .line 234
    .local v1, "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(II)Ljava/lang/String;

    move-result-object v2

    .line 242
    .end local v0    # "quoteIndex":I
    .end local v1    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :goto_0
    return-object v2

    .line 236
    .restart local v0    # "quoteIndex":I
    .restart local v1    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0

    .line 242
    .end local v0    # "quoteIndex":I
    .end local v1    # "tree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCacheItemFromMessage(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Z)Lcom/kingsoft/mail/chat/ChatCacheItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "uiMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "isFromList"    # Z

    .prologue
    .line 81
    new-instance v0, Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;-><init>(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)V

    .line 82
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-virtual {v0, p0, p3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->initCacheItem(Landroid/content/Context;Z)V

    .line 83
    return-object v0
.end method

.method public static getDateLong(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 196
    new-instance v0, Lcom/kingsoft/mail/FormattedDateBuilder;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "dateBuilder":Lcom/kingsoft/mail/FormattedDateBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatLongDateTime(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateShort(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 191
    new-instance v0, Lcom/kingsoft/mail/FormattedDateBuilder;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "dateBuilder":Lcom/kingsoft/mail/FormattedDateBuilder;
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatShortDate(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFolder(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;)Lcom/kingsoft/mail/providers/Folder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public static getFromEmailAddr(Lcom/kingsoft/mail/chat/ChatCacheItem;)Ljava/lang/String;
    .locals 3
    .param p0, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 147
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 148
    .local v1, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 149
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 154
    .end local v1    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getIcon(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;ZZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p2, "defaultImage"    # Z
    .param p3, "cacheOnly"    # Z

    .prologue
    .line 126
    new-instance v3, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, "lp":Lcom/kingsoft/mail/photomanager/LetterTileProvider;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0d008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 129
    .local v2, "idealIconWidth":I
    const v5, 0x7f0d008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 130
    .local v1, "idealIconHeight":I
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    const/high16 v5, 0x3f800000

    invoke-direct {v0, v2, v1, v5}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>(IIF)V

    .line 132
    .local v0, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    if-eqz p2, :cond_0

    .line 133
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-virtual {v3, v0, v5, v6}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 139
    :goto_0
    return-object v5

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    .line 136
    invoke-virtual {p1, p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromEmailAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getCachedLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1, p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromEmailAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v2, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getIconFromContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method public static getItemType(Lcom/kingsoft/mail/chat/ChatCacheItem;)I
    .locals 3
    .param p0, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 75
    :cond_1
    :goto_0
    return v1

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 67
    const/4 v1, 0x2

    goto :goto_0

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 71
    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    .line 72
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 73
    const/4 v1, 0x4

    goto :goto_0

    .line 75
    :cond_6
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public static getName(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 159
    .local v0, "from":[Lcom/kingsoft/mail/providers/Address;
    const-string/jumbo v1, ","

    .line 160
    .local v1, "separator":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->parseNames([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getReceiverCount(Lcom/kingsoft/mail/providers/Message;)I
    .locals 3
    .param p0, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getToAddresses()[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 121
    .local v1, "toCnt":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Message;->getCcAddresses()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    .line 122
    .local v0, "ccCnt":I
    add-int v2, v1, v0

    return v2
.end method

.method public static isBCCed(Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Z
    .locals 4
    .param p0, "curAddress"    # Ljava/lang/String;
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "formatAddress":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getBcc()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "bcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCCed(Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Z
    .locals 4
    .param p0, "curAddress"    # Ljava/lang/String;
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "formatAddress":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "cc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFromMe(Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;)Z
    .locals 11
    .param p0, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromEmailAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "curAddress":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v6, v9, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 92
    .local v2, "isSendFromMyself":Z
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v6

    iget-wide v4, v6, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    .line 93
    .local v4, "mailBoxID":J
    if-eqz v2, :cond_0

    .line 94
    sget-object v6, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->mMailBoxs:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    sget-object v6, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->mMailBoxs:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v10, :cond_2

    move v2, v7

    .line 103
    :cond_0
    :goto_1
    return v2

    .line 90
    .end local v2    # "isSendFromMyself":Z
    .end local v4    # "mailBoxID":J
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .restart local v2    # "isSendFromMyself":Z
    .restart local v4    # "mailBoxID":J
    :cond_2
    move v2, v8

    .line 95
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 99
    .local v3, "mMailbox":Lcom/android/emailcommon/provider/Mailbox;
    iget v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v6, v10, :cond_4

    move v2, v7

    .line 100
    :goto_2
    sget-object v6, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->mMailBoxs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v2, v8

    .line 99
    goto :goto_2
.end method

.method public static parseNames([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "to"    # [Lcom/kingsoft/mail/providers/Address;
    .param p1, "myEMail"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->parseNames([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static parseNames([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "to"    # [Lcom/kingsoft/mail/providers/Address;
    .param p1, "myEMail"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "maxLength"    # I

    .prologue
    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v5, "result":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[Lcom/kingsoft/mail/providers/Address;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 170
    .local v0, "address":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 171
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1, p3}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "displayName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    if-lez p4, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, p4, :cond_2

    .line 179
    .end local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 169
    .restart local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    .restart local v2    # "displayName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
