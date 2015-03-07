.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;)V
    .locals 0

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->dismiss()V

    .line 1334
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1335
    .local v0, "asb":Landroid/app/Activity;
    instance-of v1, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    if-eqz v1, :cond_0

    .line 1336
    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .end local v0    # "asb":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog$4;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->onErrorDialogEditButton()V

    .line 1342
    return-void

    .line 1338
    :catch_0
    move-exception v1

    goto :goto_0
.end method
