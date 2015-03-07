.class public Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendConfirmDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3676
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3677
    return-void
.end method

.method public static newInstance(IZZ)Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;
    .locals 3
    .param p0, "titleId"    # I
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 3681
    new-instance v1, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;-><init>()V

    .line 3682
    .local v1, "frag":Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3683
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "titleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3684
    const-string/jumbo v2, "save"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3685
    const-string/jumbo v2, "showToast"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3686
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3687
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3692
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "titleId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3693
    .local v2, "titleId":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "save"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3694
    .local v0, "save":Z
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "showToast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3696
    .local v1, "showToast":Z
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100107

    new-instance v5, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$2;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10036e

    new-instance v5, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment$1;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$SendConfirmDialogFragment;ZZ)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
