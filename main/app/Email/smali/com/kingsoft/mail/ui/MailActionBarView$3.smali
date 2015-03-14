.class Lcom/kingsoft/mail/ui/MailActionBarView$3;
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
    .line 368
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->transitionBackToMergeListMode()V

    .line 373
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$400(Lcom/kingsoft/mail/ui/MailActionBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowChatView(Z)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->transitionBackToChatListMode()Z

    .line 377
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$3;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # getter for: Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$400(Lcom/kingsoft/mail/ui/MailActionBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowChatView(Z)V

    goto :goto_0
.end method
