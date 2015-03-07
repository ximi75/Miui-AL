.class public Lcom/kingsoft/exchange/service/PingTask;
.super Landroid/os/AsyncTask;
.source "PingTask.java"


# annotations
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


# static fields
.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private final mOperation:Lcom/kingsoft/exchange/eas/EasPing;

.field private final mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "amAccount"    # Landroid/accounts/Account;
    .param p4, "syncHandlerMap"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Lcom/kingsoft/exchange/eas/EasPing;

    invoke-direct {v0, p1, p2, p3}, Lcom/kingsoft/exchange/eas/EasPing;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    .line 41
    iput-object p4, p0, Lcom/kingsoft/exchange/service/PingTask;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/PingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Ping task starting for %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v5}, Lcom/kingsoft/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v2}, Lcom/kingsoft/exchange/eas/EasPing;->doPing()I

    move-result v1

    .line 66
    .local v1, "pingStatus":I
    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/PingParser;->shouldPingAgain(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :goto_0
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Ping task ending with status: %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    iget-object v2, p0, Lcom/kingsoft/exchange/service/PingTask;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    iget-object v3, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v3}, Lcom/kingsoft/exchange/eas/EasPing;->getAmAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v4}, Lcom/kingsoft/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->pingComplete(Landroid/accounts/Account;JI)V

    .line 78
    const/4 v2, 0x0

    return-object v2

    .line 67
    .end local v1    # "pingStatus":I
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Ping exception for account %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v5}, Lcom/kingsoft/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    const/4 v1, -0x4

    .restart local v1    # "pingStatus":I
    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/PingTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 85
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Ping cancelled for %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v4}, Lcom/kingsoft/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    iget-object v0, p0, Lcom/kingsoft/exchange/service/PingTask;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v1}, Lcom/kingsoft/exchange/eas/EasPing;->getAmAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v2}, Lcom/kingsoft/exchange/eas/EasPing;->getAccountId()J

    move-result-wide v2

    const/4 v4, -0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->pingComplete(Landroid/accounts/Account;JI)V

    .line 88
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/eas/EasPing;->restart()V

    .line 57
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/kingsoft/exchange/service/PingTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/service/PingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingsoft/exchange/service/PingTask;->mOperation:Lcom/kingsoft/exchange/eas/EasPing;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/eas/EasPing;->abort()V

    .line 52
    return-void
.end method
