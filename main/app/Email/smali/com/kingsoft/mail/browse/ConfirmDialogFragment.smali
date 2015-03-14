.class public Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmDialogFragment.java"


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "confirm-dialog"

.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"


# instance fields
.field private final POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/kingsoft/mail/browse/ConfirmDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment$1;-><init>(Lcom/kingsoft/mail/browse/ConfirmDialogFragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    .locals 3
    .param p0, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    new-instance v1, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;-><init>()V

    .line 76
    .local v1, "f":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public final displayDialog(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 98
    const-string/jumbo v0, "confirm-dialog"

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10012f

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10029f

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->POSITIVE_ACTION:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100107

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
