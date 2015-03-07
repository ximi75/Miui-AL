.class public Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreMenuItemClick"
.end annotation


# instance fields
.field private mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field private mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .line 266
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 267
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 271
    packed-switch p1, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Message;->starred:Z

    if-eqz v3, :cond_0

    .line 274
    .local v1, "starredVisible":I
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemStarred:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "starredVisible":I
    :cond_0
    move v1, v2

    .line 273
    goto :goto_1

    .line 277
    :pswitch_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 278
    .local v0, "readVisible":I
    :goto_2
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$MoreMenuItemClick;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->ItemRead:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "readVisible":I
    :cond_1
    move v0, v1

    .line 277
    goto :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
