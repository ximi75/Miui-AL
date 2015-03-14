.class final Lcom/kingsoft/email/statistics/KingsoftAgent$5;
.super Ljava/lang/Thread;
.source "KingsoftAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/KingsoftAgent;->pushUserAccountSetupData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 326
    iget-object v8, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 327
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    if-eqz v1, :cond_2

    .line 328
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 329
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 331
    iget-object v8, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    move-result-object v7

    .line 333
    .local v7, "sender":Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    iget-object v8, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 335
    .local v5, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v5, :cond_0

    .line 337
    iput v10, v5, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 338
    iget-object v8, p0, Lcom/kingsoft/email/statistics/KingsoftAgent$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 340
    .local v6, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v6, :cond_0

    .line 342
    iput v10, v6, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 343
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 345
    .local v2, "domain":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 346
    const-string/jumbo v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v2, v8, v9

    .line 352
    :goto_1
    invoke-virtual {v7, v2, v5, v6}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->sendCollectConfig(Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v3

    .line 354
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "\\"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 348
    const-string/jumbo v8, "\\\\"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v2, v8, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 358
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v6    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v7    # "sender":Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    :cond_2
    return-void
.end method
