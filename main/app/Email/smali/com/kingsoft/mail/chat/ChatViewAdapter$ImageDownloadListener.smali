.class public Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDownloadListener"
.end annotation


# instance fields
.field private mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field private mContext:Landroid/content/Context;

.field private mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;Landroid/content/Context;)V
    .locals 0
    .param p2, "viewHolder"    # Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;
    .param p3, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    .line 700
    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    .line 701
    iput-object p4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mContext:Landroid/content/Context;

    .line 702
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0201e3

    const v6, 0x7f0201e2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 706
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v4, v4, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v4, v4, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2, v4, v5}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->toggleAttachmentBarListVisibility(Landroid/widget/LinearLayout;Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 710
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 713
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setMattCllaps(Z)V

    .line 721
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 722
    .local v1, "resTag":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 723
    .local v0, "allAttachmentsDownloaded":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 724
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    :goto_1
    const-string/jumbo v2, "T42"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 746
    .end local v0    # "allAttachmentsDownloaded":Z
    .end local v1    # "resTag":Ljava/lang/Boolean;
    :goto_2
    return-void

    .restart local v1    # "resTag":Ljava/lang/Boolean;
    :cond_1
    move v0, v3

    .line 722
    goto :goto_0

    .line 728
    .restart local v0    # "allAttachmentsDownloaded":Z
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 733
    .end local v0    # "allAttachmentsDownloaded":Z
    .end local v1    # "resTag":Ljava/lang/Boolean;
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 734
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mUpDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 735
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100279

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v6, v6, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentBarListOriginInvisible:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mChatCacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setMattCllaps(Z)V

    .line 742
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mAttachmentCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$ImageDownloadListener;->mViewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v2, v2, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    const-string/jumbo v2, "T41"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_2
.end method
