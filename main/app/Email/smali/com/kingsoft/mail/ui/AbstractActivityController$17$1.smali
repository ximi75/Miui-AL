.class Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController$17;)V
    .locals 0

    .prologue
    .line 3353
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    .line 3356
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$17$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController$17;->val$curMessage:Lcom/kingsoft/mail/browse/ConversationMessage;

    iget-wide v2, v2, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->editDraft(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    .line 3358
    return-void
.end method
