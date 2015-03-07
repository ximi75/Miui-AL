.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

.field final synthetic val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;->this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;->this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->dismiss()V

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;->this$1:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1184
    .local v0, "asb":Landroid/app/Activity;
    instance-of v1, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    if-eqz v1, :cond_0

    .line 1185
    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .end local v0    # "asb":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$4;->val$target:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    .line 1191
    return-void

    .line 1187
    :catch_0
    move-exception v1

    goto :goto_0
.end method
