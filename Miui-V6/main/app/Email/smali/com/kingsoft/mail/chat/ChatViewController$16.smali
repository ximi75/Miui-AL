.class Lcom/kingsoft/mail/chat/ChatViewController$16;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->onViewLongClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;I)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iput p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1392
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1393
    .local v0, "first":I
    iget v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->val$position:I

    if-le v1, v0, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->val$position:I

    const/4 v3, 0x1

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->smoothScrollToPosition(IZ)V
    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$1000(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    .line 1398
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iget v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$16;->val$position:I

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->showFillLayout(IZ)V
    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$2900(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V

    goto :goto_0
.end method
