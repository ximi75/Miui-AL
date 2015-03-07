.class Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;)V
    .locals 0

    .prologue
    .line 3759
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->stopSaveDraftTimer()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1900(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 3766
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/ComposeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->doDiscardWithoutConfirmation(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2000(Lcom/kingsoft/mail/compose/ComposeActivity;Z)V

    .line 3767
    return-void
.end method
