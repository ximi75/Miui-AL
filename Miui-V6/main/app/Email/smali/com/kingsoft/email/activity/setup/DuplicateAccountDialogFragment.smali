.class public Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "DuplicateAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;,
        Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACCOUNT_NAME:Ljava/lang/String; = "NoteDialogFragment.AccountName"

.field public static final TAG:Ljava/lang/String; = "DuplicateAccountDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    .locals 3
    .param p0, "note"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v1, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;-><init>()V

    .line 47
    .local v1, "f":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "NoteDialogFragment.AccountName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 56
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "NoteDialogFragment.AccountName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "accountName":Ljava/lang/String;
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100011

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100010

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1002a0

    new-instance v4, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
