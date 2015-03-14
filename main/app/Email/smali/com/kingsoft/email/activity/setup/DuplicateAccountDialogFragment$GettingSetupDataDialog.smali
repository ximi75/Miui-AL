.class public Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;
.super Landroid/app/DialogFragment;
.source "DuplicateAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GettingSetupDataDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GettingSetupDataDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 79
    return-void
.end method

.method public static newInstance()Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;-><init>()V

    .line 83
    .local v0, "f":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 91
    const v2, 0x7f1002b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v2, -0x2

    const v3, 0x7f100108

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    return-object v1
.end method
