.class Lcom/kingsoft/emailsync/SyncManager$4;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/SyncManager;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1395
    :try_start_0
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1397
    :try_start_1
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->test()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    const-string/jumbo v1, "!!! Email application not found; stopping self"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/kingsoft/emailsync/SyncManager;->stopSelf()V

    .line 1401
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1403
    const-string/jumbo v1, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1404
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/kingsoft/emailsync/SyncManager;->stopSelf()V

    .line 1406
    new-instance v1, Lcom/kingsoft/emailsync/SyncManager$4$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/emailsync/SyncManager$4$1;-><init>(Lcom/kingsoft/emailsync/SyncManager$4;)V

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1415
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1433
    # setter for: Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z
    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->access$502(Z)Z

    .line 1435
    :goto_0
    return-void

    .line 1419
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1, v3}, Lcom/kingsoft/emailsync/SyncManager;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 1421
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/kingsoft/emailsync/SyncManager;->maybeStartSyncServiceManagerThread()V

    .line 1422
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 1423
    const-string/jumbo v1, "!!! EAS SyncServiceManager, stopping self"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1424
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1}, Lcom/kingsoft/emailsync/SyncManager;->stopSelf()V

    .line 1431
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1433
    # setter for: Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z
    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->access$502(Z)Z

    goto :goto_0

    .line 1425
    :cond_2
    :try_start_3
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sStop:Z
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1427
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    # invokes: Lcom/kingsoft/emailsync/SyncManager;->setAlarm(JJ)V
    invoke-static {v1, v3, v4, v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->access$700(Lcom/kingsoft/emailsync/SyncManager;JJ)V

    goto :goto_1

    .line 1431
    .end local v0    # "deviceId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1433
    :catchall_1
    move-exception v1

    # setter for: Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z
    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->access$502(Z)Z

    throw v1

    .line 1429
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager$4;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/kingsoft/emailsync/SyncManager;->mServiceStartTime:J
    invoke-static {v1, v3, v4}, Lcom/kingsoft/emailsync/SyncManager;->access$802(Lcom/kingsoft/emailsync/SyncManager;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
