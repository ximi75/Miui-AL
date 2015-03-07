.class public Lcom/kingsoft/mail/chat/ChatCacheItem;
.super Ljava/lang/Object;
.source "ChatCacheItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;
    }
.end annotation


# static fields
.field public static final CHAT_SNIPPET_LIMINET:I = 0xc8

.field private static mDefaultIcon:Landroid/graphics/Bitmap;


# instance fields
.field private ccName:Ljava/lang/String;

.field private isBBC:Z

.field private isCC:Z

.field private isFromMe:Z

.field private itemType:I

.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseUserInfo:Landroid/text/SpannableStringBuilder;

.field private mDateText:Ljava/lang/String;

.field private mDownloadInline:Z

.field private mFlagLoaded:Z

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFromAddress:Ljava/lang/String;

.field private mFromName:Ljava/lang/String;

.field private mGestureSign:Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

.field private mHtml:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mMessage:Lcom/kingsoft/mail/providers/Message;

.field private mNeedExpend:Z

.field private mText:Ljava/lang/String;

.field private mViewType:Z

.field private receiverCount:I

.field private toName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->toName:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->ccName:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->itemType:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mViewType:Z

    .line 43
    const-string/jumbo v0, "do not get body from database"

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mHtml:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mGestureSign:Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mCollapseUserInfo:Landroid/text/SpannableStringBuilder;

    .line 49
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDownloadInline:Z

    .line 50
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mNeedExpend:Z

    .line 54
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 55
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    .line 56
    return-void
.end method


# virtual methods
.method public getAccountAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mAttachments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getAttachmentsFromMessage(Lcom/kingsoft/mail/providers/Message;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mAttachments:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getCachedOrDefaultIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    .line 149
    :goto_0
    return-object v0

    .line 144
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, p0, v1, v2}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getIcon(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 146
    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getDefaultIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getCcName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getCcName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCcName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxLength"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->ccName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getAllReceivers([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->ccName:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->ccName:Ljava/lang/String;

    return-object v0
.end method

.method public getCollapseUserInfo()Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mCollapseUserInfo:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getDateText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDateText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDateText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    invoke-static {p1, v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getDateShort(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDateText:Ljava/lang/String;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDateText:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget-object v0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getIcon(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 137
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolder(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v0, :cond_0

    .line 185
    invoke-static {p1, p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getFolder(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public getFromEmailAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    invoke-static {p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getFromEmailAddr(Lcom/kingsoft/mail/chat/ChatCacheItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromAddress:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFromName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    invoke-static {p1, p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getName(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromName:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFromName:Ljava/lang/String;

    return-object v0
.end method

.method public getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mGestureSign:Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 128
    invoke-static {p1, p0, v1, v1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getIcon(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCacheItem;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemType()I
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->itemType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getItemType(Lcom/kingsoft/mail/chat/ChatCacheItem;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->itemType:I

    .line 156
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->itemType:I

    return v0
.end method

.method public getMessage()Lcom/kingsoft/mail/providers/Message;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    return-object v0
.end method

.method public getReceiversCount()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->receiverCount:I

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getReceiverCount(Lcom/kingsoft/mail/providers/Message;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->receiverCount:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->receiverCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getToName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getToName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxLength"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->toName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Message;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getAllReceivers([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->toName:Ljava/lang/String;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->toName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mViewType:Z

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initCacheItem(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFromList"    # Z

    .prologue
    const/16 v3, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget v2, v2, Lcom/kingsoft/mail/providers/Message;->flagLoaded:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFlagLoaded:Z

    .line 65
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFlagLoaded:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mText:Ljava/lang/String;

    .line 75
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->isFromMe(Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe:Z

    .line 78
    invoke-static {p0}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getItemType(Lcom/kingsoft/mail/chat/ChatCacheItem;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->itemType:I

    .line 80
    return-void

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 69
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mText:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Message;->snippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mText:Ljava/lang/String;

    goto :goto_1
.end method

.method public isBccToMe()Z
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isBBC:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->isBCCed(Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isBBC:Z

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isBBC:Z

    return v0
.end method

.method public isCcToMe()Z
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isCC:Z

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getAccountAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->isCCed(Ljava/lang/String;Lcom/kingsoft/mail/providers/Message;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isCC:Z

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isCC:Z

    return v0
.end method

.method public isDownloadInline()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDownloadInline:Z

    return v0
.end method

.method public isFlagLoaded()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFlagLoaded:Z

    return v0
.end method

.method public isFromMe()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe:Z

    return v0
.end method

.method public isNeedExpend()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mNeedExpend:Z

    return v0
.end method

.method public resetViewType(Z)V
    .locals 1
    .param p1, "isFromMainList"    # Z

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mViewType:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mViewType:Z

    .line 178
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollapseUserInfo(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "collapseUserInfo"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mCollapseUserInfo:Landroid/text/SpannableStringBuilder;

    .line 277
    return-void
.end method

.method public setDownloadInline(Z)V
    .locals 0
    .param p1, "downloadInline"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mDownloadInline:Z

    .line 261
    return-void
.end method

.method public setNeedExpend(Z)V
    .locals 0
    .param p1, "needExpend"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mNeedExpend:Z

    .line 269
    return-void
.end method

.method public update(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFlagLoaded:Z

    .line 84
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mFlagLoaded:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mText:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatCacheItem;->mMessage:Lcom/kingsoft/mail/providers/Message;

    invoke-static {p1, v0}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->setItemAsRead(Landroid/content/Context;Lcom/kingsoft/mail/providers/Message;)V

    .line 89
    :cond_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
