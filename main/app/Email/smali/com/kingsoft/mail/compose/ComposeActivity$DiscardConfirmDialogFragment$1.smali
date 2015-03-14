.class Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;)V
    .locals 0

    .prologue
    .line 4494
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/ComposeActivity;

    const/4 v1, 0x1

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->doDiscardWithoutConfirmation(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2000(Lcom/kingsoft/mail/compose/ComposeActivity;Z)V

    .line 4500
    return-void
.end method
