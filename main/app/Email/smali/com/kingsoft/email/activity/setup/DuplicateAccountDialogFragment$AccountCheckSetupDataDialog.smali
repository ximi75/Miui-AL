.class public Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;
.super Landroid/app/DialogFragment;
.source "DuplicateAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountCheckSetupDataDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccountCheckSetupDataDialog"


# instance fields
.field mTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 113
    return-void
.end method

.method public static newInstance(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;
    .locals 1
    .param p0, "task"    # Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .prologue
    .line 116
    new-instance v0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;-><init>()V

    .line 117
    .local v0, "f":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;
    iput-object p0, v0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->mTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .line 118
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 126
    const v2, 0x7f10011f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v2, -0x2

    const v3, 0x7f100108

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    return-object v1
.end method
