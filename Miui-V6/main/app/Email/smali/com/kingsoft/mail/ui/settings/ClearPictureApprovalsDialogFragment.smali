.class public Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ClearPictureApprovalsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "ClearPictureApprovalsDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;-><init>()V

    .line 44
    .local v0, "fragment":Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    .line 61
    .local v0, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->clearSenderWhiteList()V

    .line 62
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f100371

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 65
    .end local v0    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100123

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100122

    invoke-virtual {v0, v1, p0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100107

    invoke-virtual {v0, v1, p0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
