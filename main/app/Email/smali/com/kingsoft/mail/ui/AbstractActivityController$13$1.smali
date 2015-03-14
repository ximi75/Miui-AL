.class Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController$13;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$13;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController$13;)V
    .locals 0

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2551
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$13;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController$13;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->hideRefreshAnimation()V

    .line 2552
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$13$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$13;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController$13;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2553
    .local v0, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 2554
    iget-object v1, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->onRefreshComplete()V

    .line 2556
    :cond_0
    return-void
.end method
