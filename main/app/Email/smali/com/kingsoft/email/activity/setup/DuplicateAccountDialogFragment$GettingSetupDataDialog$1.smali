.class Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;
.super Ljava/lang/Object;
.source "DuplicateAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 99
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 100
    return-void
.end method
