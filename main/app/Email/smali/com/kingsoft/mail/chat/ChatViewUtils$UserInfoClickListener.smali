.class public Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;
.super Ljava/lang/Object;
.source "ChatViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfoClickListener"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field private mContext:Landroid/content/Context;

.field private mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;)V
    .locals 0
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 293
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mContext:Landroid/content/Context;

    .line 294
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->accountName:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .line 296
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isNeedExpend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->isCollapse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->accountName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/chat/ChatViewUtils;->setUserInfoExpand(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewUtils$UserInfoClickListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewUtils;->setUserInfoCollaps(Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    goto :goto_0
.end method
