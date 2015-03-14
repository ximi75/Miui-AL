.class Lcom/kingsoft/mail/ui/AbstractActivityController$18;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;->getUndoClickedListener(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final synthetic val$listAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0

    .prologue
    .line 4986
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->val$listAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4994
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 4995
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->undo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4998
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->val$listAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_1

    .line 4999
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;->val$listAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setUndo(Z)V

    .line 5002
    :cond_1
    return-void
.end method
