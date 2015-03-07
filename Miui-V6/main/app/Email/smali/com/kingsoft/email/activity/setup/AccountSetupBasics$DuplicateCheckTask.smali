.class Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoSetup:Z

.field private final mCheckAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "checkAddress"    # Ljava/lang/String;
    .param p4, "autoSetup"    # Z

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1030
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    .line 1031
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckAddress:Ljava/lang/String;

    .line 1033
    const/4 v0, 0x1

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z
    invoke-static {p1, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$602(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z

    .line 1034
    iput-boolean p4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mAutoSetup:Z

    .line 1035
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1023
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v0, 0x0

    .line 1041
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$700(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1044
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckAddress:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1023
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1096
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z
    invoke-static {v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$602(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z

    .line 1097
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DuplicateCheckTask cancelled (AccountSetupBasics)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1099
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1023
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "duplicateAccountName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1052
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z
    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$602(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z

    .line 1054
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPaused:Z
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$800(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1057
    :cond_0
    if-eqz p1, :cond_1

    .line 1058
    invoke-static {p1}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v6

    .line 1060
    .local v6, "dialogFragment":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "DuplicateAccountDialogFragment"

    invoke-virtual {v6, v0, v1}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    .end local v6    # "dialogFragment":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    :cond_1
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mAutoSetup:Z

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, "ps":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->access$900(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    .line 1067
    .local v7, "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    iget-object v0, v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1068
    .local v3, "type":I
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v4, v4, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, v8, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountSettingCheckTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    .line 1071
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountSettingCheckTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->setCheckAccountResult(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;)V

    .line 1072
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountSettingCheckTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->excute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountSettingCheckTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->newInstance(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    .line 1074
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v4, "AccountCheckSetupDataDialog"

    invoke-virtual {v0, v1, v4}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0, v9}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 1089
    .end local v2    # "ps":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v7    # "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0, v9}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto/16 :goto_0
.end method
