.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;

.field final synthetic val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->dismiss()V

    .line 1493
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 1495
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    .line 1499
    :cond_0
    return-void
.end method
