.class Lcom/kingsoft/mail/ui/MailActionBarView$2;
.super Ljava/lang/Object;
.source "MailActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;->initializeTitleViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 354
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$000(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$300(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$300(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$300(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$2;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->gotoUnreadBox()V

    goto :goto_0
.end method
