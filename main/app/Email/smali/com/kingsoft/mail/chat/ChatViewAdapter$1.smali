.class Lcom/kingsoft/mail/chat/ChatViewAdapter$1;
.super Ljava/lang/Object;
.source "ChatViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewAdapter;->fillDataToViewHolder(Lcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

.field final synthetic val$cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

.field final synthetic val$viewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewAdapter;Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->val$viewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->val$cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "stop":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->val$viewHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$ViewHolder;->mAttachmentHolder:Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatViewUtils$AttachmentHolder;->mDownloadAll:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->val$cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->cancelAttachmentsByMsgId(Landroid/content/Context;J)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->access$100(Lcom/kingsoft/mail/chat/ChatViewAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewAdapter$1;->val$cacheItem:Lcom/kingsoft/mail/chat/ChatCacheItem;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/email/mail/attachment/AttachmentDialogFragment;->downloadAttachmentsByMsgId(Landroid/app/FragmentManager;Landroid/content/Context;J)V

    goto :goto_0
.end method
