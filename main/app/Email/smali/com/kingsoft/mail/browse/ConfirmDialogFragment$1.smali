.class Lcom/kingsoft/mail/browse/ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConfirmDialogFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 58
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 61
    :cond_0
    return-void
.end method
