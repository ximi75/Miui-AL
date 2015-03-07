.class Lcom/kingsoft/emailsync/SyncManager$3;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager;->onCreate()V
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
    .line 1367
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$3;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1371
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1372
    :cond_0
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1373
    :try_start_0
    const-string/jumbo v0, "!!! onCreate"

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$3;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager$3;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v2}, Lcom/kingsoft/emailsync/SyncManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1377
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sStop:Z
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    monitor-exit v1

    goto :goto_0

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
