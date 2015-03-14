.class Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;
.super Landroid/os/AsyncTask;
.source "AccountSetupOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 522
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 526
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 529
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 530
    .local v1, "auth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v1, :cond_0

    const-string/jumbo v2, ""

    .line 532
    .local v2, "protocal":Ljava/lang/String;
    :goto_0
    iget v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 533
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 535
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 536
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 539
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    invoke-direct {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->actionSetNames(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V

    .line 541
    const/4 v3, 0x0

    return-object v3

    .line 530
    .end local v2    # "protocal":Ljava/lang/String;
    :cond_0
    iget-object v2, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto :goto_0
.end method
