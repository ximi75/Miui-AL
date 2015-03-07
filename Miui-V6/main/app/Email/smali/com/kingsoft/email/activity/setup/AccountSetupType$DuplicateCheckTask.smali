.class Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupType;
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
.field private final mAddress:Ljava/lang/String;

.field private final mAuthority:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAddress:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAuthority:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAuthority:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupType;->mButtonPressed:Z
    invoke-static {v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->access$002(Lcom/kingsoft/email/activity/setup/AccountSetupType;Z)Z

    .line 187
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Duplicate account check cancelled (AccountSetupType)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "duplicateAccountName"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    const/4 v2, 0x0

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSetupType;->mButtonPressed:Z
    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->access$002(Lcom/kingsoft/email/activity/setup/AccountSetupType;Z)Z

    .line 172
    if-eqz p1, :cond_0

    .line 174
    invoke-static {p1}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v0

    .line 176
    .local v0, "dialogFragment":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "DuplicateAccountDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    .end local v0    # "dialogFragment":Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment;
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupType;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupType;->onProceedNext()V
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->access$100(Lcom/kingsoft/email/activity/setup/AccountSetupType;)V

    goto :goto_0
.end method
