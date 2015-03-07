.class Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->performAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)V
    .locals 0

    .prologue
    .line 3866
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    new-instance v0, Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mTarget:Ljava/util/Collection;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->access$800(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mAction:I
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->access$900(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->mIsSelectedSet:Z
    invoke-static {v4}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->access$1000(Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;)Z

    move-result v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/ToastBarOperation;-><init>(IIIZLcom/kingsoft/mail/providers/Folder;)V

    invoke-virtual {v6, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 3871
    return-void
.end method
