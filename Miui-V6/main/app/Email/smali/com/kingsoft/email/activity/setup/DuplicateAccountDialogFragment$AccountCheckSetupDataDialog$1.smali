.class Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;
.super Ljava/lang/Object;
.source "DuplicateAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->mTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->mTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->dismiss()V

    .line 136
    return-void
.end method
