.class public Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardConfirmDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4486
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 4487
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4491
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100130

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100178

    new-instance v2, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment$1;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$DiscardConfirmDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
