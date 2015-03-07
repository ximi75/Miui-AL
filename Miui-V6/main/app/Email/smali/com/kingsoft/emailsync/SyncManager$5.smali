.class Lcom/kingsoft/emailsync/SyncManager$5;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager;->onDestroy()V
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
    .line 1454
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$5;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1458
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1461
    :try_start_0
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 1462
    const/4 v0, 0x1

    # setter for: Lcom/kingsoft/emailsync/SyncManager;->sStop:Z
    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->access$602(Z)Z

    .line 1463
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1465
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
