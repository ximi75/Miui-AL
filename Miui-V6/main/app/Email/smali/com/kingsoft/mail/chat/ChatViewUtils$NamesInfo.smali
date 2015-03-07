.class public Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamesInfo"
.end annotation


# instance fields
.field mItemExpandRecipientMarginLeft:I

.field mItemExpandRecipientMarginRight:I

.field mItemMargin:I

.field mItemMsgPeopleUnit:Ljava/lang/String;

.field mItemMsgUserEtc:Ljava/lang/String;

.field mListPadding:I

.field mMsgItemStarMarginLeft:I

.field mMsgItemStarMarginRigth:I

.field mNameInfoSpace:I

.field mScreenWidth:I

.field mTo:Ljava/lang/String;

.field mUserHeadMarginLeft:I

.field mUserHeadMarginRight:I

.field mUserHeadSpaceTakerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->init(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mScreenWidth:I

    .line 177
    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mListPadding:I

    .line 178
    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMargin:I

    .line 179
    const v1, 0x7f0d005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadSpaceTakerWidth:I

    .line 180
    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadMarginLeft:I

    .line 181
    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mUserHeadMarginRight:I

    .line 182
    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginLeft:I

    .line 183
    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mMsgItemStarMarginRigth:I

    .line 184
    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemExpandRecipientMarginLeft:I

    .line 185
    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemExpandRecipientMarginRight:I

    .line 187
    const v1, 0x7f0d0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mNameInfoSpace:I

    .line 188
    const v1, 0x7f1003ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mTo:Ljava/lang/String;

    .line 189
    const v1, 0x7f100118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMsgUserEtc:Ljava/lang/String;

    .line 190
    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$NamesInfo;->mItemMsgPeopleUnit:Ljava/lang/String;

    .line 191
    return-void
.end method
