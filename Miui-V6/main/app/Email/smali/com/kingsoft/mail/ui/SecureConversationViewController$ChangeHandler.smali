.class Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;
.super Landroid/os/Handler;
.source "SecureConversationViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1540
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1543
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_2

    .line 1547
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # invokes: Lcom/kingsoft/mail/ui/SecureConversationViewController;->invalidateBodyView()V
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$2300(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V

    .line 1549
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v1

    instance-of v1, v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v1, :cond_0

    .line 1550
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1551
    .local v0, "f":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->closeDownloadingDialog()V

    .line 1552
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    goto :goto_0
.end method
