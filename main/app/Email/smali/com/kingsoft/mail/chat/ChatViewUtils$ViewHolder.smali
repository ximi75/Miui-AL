.class public Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"

# interfaces
.implements Lcom/kingsoft/mail/chat/ChatViewUtils$IMenuItemState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public ItemRead:Landroid/widget/ImageView;

.field public ItemStarred:Landroid/widget/ImageView;

.field public content:Lcom/kingsoft/mail/chat/EllipsizeText;

.field public dowdloadProgressBar:Landroid/widget/ProgressBar;

.field public icon:Landroid/widget/ImageView;

.field public infoBackground:Landroid/widget/RelativeLayout;

.field public llCollapseUserInfo:Landroid/widget/RelativeLayout;

.field public mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

.field public mItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field public mListViewItemLayout:Landroid/widget/LinearLayout;

.field public mMsgItemExpandRecipient:Landroid/widget/ImageView;

.field public tvDetailsCcNames:Landroid/widget/TextView;

.field public tvDetailsToNames:Landroid/widget/TextView;

.field public tvNames:Landroid/widget/TextView;

.field public tvSendTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCollapse()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsToNames:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->tvDetailsCcNames:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setReadItemVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemRead:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public setStarItemVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    return-void
.end method
