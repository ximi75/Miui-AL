.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CheckProgressDialog"


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 950
    const-string/jumbo v0, "CheckProgressDialog.Progress"

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    .line 957
    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "stringId":I
    packed-switch p1, :pswitch_data_0

    .line 1053
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1044
    :pswitch_0
    const v0, 0x7f10005b

    .line 1045
    goto :goto_0

    .line 1047
    :pswitch_1
    const v0, 0x7f100059

    .line 1048
    goto :goto_0

    .line 1050
    :pswitch_2
    const v0, 0x7f10005a

    goto :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .locals 1
    .param p0, "parentFragment"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p1, "progress"    # I

    .prologue
    .line 967
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    .line 968
    .local v0, "f":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    invoke-virtual {v0, p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 969
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .line 1025
    .local v0, "target":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    if-eqz v0, :cond_0

    .line 1026
    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1028
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 1029
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 989
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 990
    const-string/jumbo v2, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 993
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 997
    :cond_1
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 998
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 999
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1001
    const/4 v2, -0x2

    const v3, 0x7f100108

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiui/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1014
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1034
    const-string/jumbo v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method public updateProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 980
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lmiui/app/AlertDialog;

    .line 981
    .local v0, "dialog":Lmiui/app/AlertDialog;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 984
    :cond_0
    return-void
.end method
