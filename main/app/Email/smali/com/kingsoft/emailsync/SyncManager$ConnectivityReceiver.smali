.class public Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;)V
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1193
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1194
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1195
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1196
    .local v0, "a":Landroid/net/NetworkInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connectivity alert for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1198
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 1199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1200
    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1201
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1202
    :try_start_0
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1203
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    const-string/jumbo v4, "connected"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 1211
    .end local v0    # "a":Landroid/net/NetworkInfo;
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return-void

    .line 1203
    .restart local v0    # "a":Landroid/net/NetworkInfo;
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1205
    :cond_1
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 1206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v4, "disconnected"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method
