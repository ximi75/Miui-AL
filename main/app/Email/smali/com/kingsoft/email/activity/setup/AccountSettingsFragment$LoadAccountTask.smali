.class Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field static final UI_ACCOUNT_KEY:Ljava/lang/String; = "uiAccount"


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$1;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 594
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->doInBackground([Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/util/Map;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 600
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 601
    .local v8, "accountId":J
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 602
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_0

    .line 603
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 605
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 607
    iget-object v0, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 608
    const/4 v6, 0x0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 618
    .local v7, "accountCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    new-instance v11, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v11, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    .local v11, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v7, :cond_1

    .line 625
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 629
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 630
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "account"

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v0, "uiAccount"

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-object v10

    .line 621
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 624
    .end local v11    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 625
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 594
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const-string/jumbo v1, "account"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 639
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    const-string/jumbo v1, "uiAccount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;
    invoke-static {v2, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$302(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;

    .line 640
    if-nez v0, :cond_1

    .line 641
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    const/4 v2, 0x0

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z
    invoke-static {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$402(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 642
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 650
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_0
    :goto_0
    return-void

    .line 644
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # setter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$602(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 645
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mStarted:Z
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$700(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoaded:Z
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$800(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettings()V
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    goto :goto_0
.end method
