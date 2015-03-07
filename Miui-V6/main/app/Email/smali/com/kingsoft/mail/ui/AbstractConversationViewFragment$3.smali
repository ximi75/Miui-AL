.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;
.super Lcom/kingsoft/mail/ui/FragmentRunnable;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->popOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 4

    .prologue
    .line 636
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V

    .line 640
    :cond_0
    return-void
.end method
