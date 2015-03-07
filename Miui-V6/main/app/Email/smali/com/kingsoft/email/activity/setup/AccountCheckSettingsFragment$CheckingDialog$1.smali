.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    .line 1008
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .line 1009
    .local v0, "target":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    if-eqz v0, :cond_0

    .line 1010
    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1012
    :cond_0
    return-void
.end method
