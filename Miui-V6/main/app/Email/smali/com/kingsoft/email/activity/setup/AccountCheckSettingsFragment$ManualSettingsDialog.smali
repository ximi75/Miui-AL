.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManualSettingsDialog"
.end annotation


# static fields
.field private static final ARGS_HOST_NAME:Ljava/lang/String; = "ManualSettingsDialog.HostName"

.field public static final TAG:Ljava/lang/String; = "ManualSettingsDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1461
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1462
    return-void
.end method

.method public static newInstance(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;
    .locals 3
    .param p0, "target"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1466
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;-><init>()V

    .line 1467
    .local v1, "fragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1468
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "ManualSettingsDialog.HostName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1470
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1471
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 1476
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1477
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1478
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v4, "ManualSettingsDialog.HostName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .line 1481
    .local v3, "target":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1003c1

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f100056

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;

    invoke-direct {v6, p0, v3}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
