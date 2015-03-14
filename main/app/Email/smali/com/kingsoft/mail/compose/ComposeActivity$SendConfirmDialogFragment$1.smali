.class Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;

.field final synthetic val$save:Z

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;ZZ)V
    .locals 0

    .prologue
    .line 3709
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    iput-boolean p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$save:Z

    iput-boolean p3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$showToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-boolean v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$save:Z

    iget-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;->val$showToast:Z

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->finishSendConfirmDialog(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1700(Lcom/kingsoft/mail/compose/ComposeActivity;ZZ)V

    .line 3716
    return-void
.end method
