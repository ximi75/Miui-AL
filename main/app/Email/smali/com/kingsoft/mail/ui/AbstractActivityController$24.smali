.class Lcom/kingsoft/mail/ui/AbstractActivityController$24;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->makeDialogListener(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$action:I

.field final synthetic val$destructiveAction:Lcom/kingsoft/mail/ui/DestructiveAction;

.field final synthetic val$isBatch:Z

.field final synthetic val$target:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ILcom/kingsoft/mail/ui/DestructiveAction;Z)V
    .locals 0

    .prologue
    .line 5213
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$target:Ljava/util/Collection;

    iput p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$action:I

    iput-object p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$destructiveAction:Lcom/kingsoft/mail/ui/DestructiveAction;

    iput-boolean p5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$isBatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5217
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 5219
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$target:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5220
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 5221
    .local v0, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->moveCacheItem(Landroid/content/Context;JZ)V

    .line 5223
    .end local v0    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/mail/providers/Conversation;>;"
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$action:I

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$target:Ljava/util/Collection;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$destructiveAction:Lcom/kingsoft/mail/ui/DestructiveAction;

    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->val$isBatch:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    .line 5225
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v3, 0x0

    const/4 v4, -0x1

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->setListener(Landroid/content/DialogInterface$OnClickListener;I)V
    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3400(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 5226
    return-void
.end method
