.class public Lcom/kingsoft/mail/chat/ChatViewUtils;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$IMenuItemState;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;,
        Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "show.chat.view.activity"

.field public static final DELAY_TIME_FOR_SCROLL:I = 0x12c

.field public static final DELAY_TIME_FOR_SCROLL_MESSAGE:I = 0x96

.field public static DELAY_TIME_FOR_SELECTED:I = 0x0

.field public static final DELAY_TIME_FOR_SELECTED_LAST_POSITION:I = 0x12c

.field public static final MIN_SOFT_KEYBOARD_THRESHOLD:I = 0x64

.field public static final WHAT_LISTVIEW_SMOOTH_SCROLL:I = 0x1

.field private static spaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x64

    sput v0, Lcom/kingsoft/mail/chat/ChatViewUtils;->DELAY_TIME_FOR_SELECTED:I

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/chat/ChatViewUtils;->spaceWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method public static getChatMergeCount(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Folder;)I
    .locals 9
    .param p0, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, "mergeCount":I
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    .line 83
    .end local v7    # "mergeCount":I
    .local v8, "mergeCount":I
    :goto_0
    return v8

    .line 78
    .end local v8    # "mergeCount":I
    .restart local v7    # "mergeCount":I
    :cond_0
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->getChatCursor(JJLcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v7

    .line 83
    .end local v7    # "mergeCount":I
    .restart local v8    # "mergeCount":I
    goto :goto_0
.end method

.method public static getSpaceWidth(Landroid/graphics/Paint;)I
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 328
    sget v0, Lcom/kingsoft/mail/chat/ChatViewUtils;->spaceWidth:I

    if-nez v0, :cond_0

    .line 329
    const-string/jumbo v0, "1 1"

    invoke-static {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    const-string/jumbo v1, "11"

    invoke-static {v1, p0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/kingsoft/mail/chat/ChatViewUtils;->spaceWidth:I

    .line 331
    :cond_0
    sget v0, Lcom/kingsoft/mail/chat/ChatViewUtils;->spaceWidth:I

    return v0
.end method

.method public static getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3
    .param p0, "toShow"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 312
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 315
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 316
    .local v1, "width":I
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-static {p1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getSpaceWidth(Landroid/graphics/Paint;)I

    move-result v2

    add-int/2addr v1, v2

    .line 319
    :cond_0
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-static {p1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getSpaceWidth(Landroid/graphics/Paint;)I

    move-result v2

    add-int/2addr v1, v2

    .line 324
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    :cond_1
    return v1
.end method

.method public static getUIAccountFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 45
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v7, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    return-object v7

    .line 49
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 52
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isBelongToInbox(Landroid/content/Context;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderid"    # J

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 64
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    iget v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_2

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 71
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {p0, v1, v2}, Lcom/kingsoft/mail/chat/ChatViewUtils;->isBelongToInbox(Landroid/content/Context;J)Z

    move-result v1

    goto :goto_0
.end method

.method public static measureImageViewWidth(Landroid/widget/ImageView;)I
    .locals 3
    .param p0, "iv"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 88
    .local v1, "w":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 89
    .local v0, "h":I
    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    return v2
.end method

.method public static setEmailContent(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Landroid/content/Context;)V
    .locals 4
    .param p0, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p1, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getText()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "body":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, ""

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isFWDEmailFromSubject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringForwardEmailInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringForwardEmailInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringNoContent(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v2, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/chat/EllipsizeText;->setGravity(I)V

    .line 150
    iget-object v2, p1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->content:Lcom/kingsoft/mail/chat/EllipsizeText;

    invoke-static {v0, p2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->colorEmailBody(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/chat/EllipsizeText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setUserInfoCollaps(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 3
    .param p0, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    const/16 v2, 0x8

    .line 94
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvNames:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getCollapseUserInfo()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setIsUserInfoCollaps(Z)V

    .line 107
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static setUserInfoExpand(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f100128

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 110
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvNames:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFromName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getToName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "to":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    move-object v2, p3

    .line 116
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1003ad

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_0
    invoke-virtual {p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getCcName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f10010e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v4, 0x7f0200f6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setIsUserInfoCollaps(Z)V

    .line 135
    return-void

    .line 120
    .end local v0    # "cc":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 127
    .restart local v0    # "cc":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mMsgItemExpandRecipient:Landroid/widget/ImageView;

    const v4, 0x7f0200f5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
