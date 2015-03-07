.class Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 3395
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->finishRecipientErrorDialog()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$1500(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 3399
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment$1;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->showInputMethod()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;->access$1600(Lcom/kingsoft/mail/compose/ComposeActivity$RecipientErrorDialogFragment;)V

    .line 3400
    return-void
.end method
