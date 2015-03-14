.class public Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;
.super Landroid/os/AsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinalSetupTask2"
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
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 0
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 406
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    .line 407
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v1, "senderName"

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 417
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 419
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

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
    .line 401
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isSecurityHold"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 428
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    invoke-virtual {v1, v0, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 443
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1, v0, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 435
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    if-eqz v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finishActivity()V

    goto :goto_0

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finishActivity()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 401
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupNames$FinalSetupTask2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
