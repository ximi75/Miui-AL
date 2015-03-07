.class Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupEng.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupEng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/android/emailcommon/provider/Account;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSetupEng;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 160
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "senderName"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 171
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 183
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isSecurityHold"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$000(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSetupEng;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSetupEng;->finishActivity()V
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->access$100(Lcom/kingsoft/email/activity/setup/AccountSetupEng;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupEng$FinalSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
