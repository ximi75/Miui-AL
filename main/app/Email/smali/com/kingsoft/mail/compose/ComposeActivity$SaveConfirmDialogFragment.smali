.class public Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveConfirmDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3735
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3736
    return-void
.end method

.method public static newInstance(IZZ)Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;
    .locals 3
    .param p0, "messageId"    # I
    .param p1, "save"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 3740
    new-instance v1, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;-><init>()V

    .line 3741
    .local v1, "frag":Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3742
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "messageId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3743
    const-string/jumbo v2, "save"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3744
    const-string/jumbo v2, "showToast"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3745
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3746
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3751
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "messageId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3752
    .local v0, "messageId":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "save"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3753
    .local v1, "save":Z
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "showToast"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3755
    .local v2, "showToast":Z
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100133

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100132

    new-instance v5, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$2;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100134

    new-instance v5, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$1;

    invoke-direct {v5, p0, v1, v2}, Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment$1;-><init>(Lcom/kingsoft/mail/compose/ComposeActivity$SaveConfirmDialogFragment;ZZ)V

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
