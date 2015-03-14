.class public Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "SyncErrorDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;-><init>()V

    .line 40
    .local v0, "frag":Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10039d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10039e

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10029f

    new-instance v2, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$2;-><init>(Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100395

    new-instance v2, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment$1;-><init>(Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
