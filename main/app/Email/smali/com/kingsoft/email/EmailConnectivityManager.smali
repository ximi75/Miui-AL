.class public Lcom/kingsoft/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# static fields
.field private static final CONNECTIVITY_WAIT_TIME:I = 0x927c0

.field public static final NO_ACTIVE_NETWORK:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EmailConnectivityMgr"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mListWifiConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/callback/WifiConnectedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    .line 71
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mStop:Z

    .line 75
    iput-boolean v3, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mRegistered:Z

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mListWifiConnected:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 91
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 191
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 196
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addWifiConnectedList(Lcom/kingsoft/email/callback/WifiConnectedCallback;)V
    .locals 1
    .param p1, "wifiConnectedCallback"    # Lcom/kingsoft/email/callback/WifiConnectedCallback;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mListWifiConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public getActiveNetworkType()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public hasConnectivity()Z
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 177
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoSyncAllowed()Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onConnectivityLost(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onConnectivityRestored(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 147
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 149
    .local v4, "state":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 150
    iget-object v6, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 151
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 154
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 155
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_0

    .line 157
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 159
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 162
    .restart local v4    # "state":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mListWifiConnected:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/callback/WifiConnectedCallback;

    .line 164
    .local v0, "callback":Lcom/kingsoft/email/callback/WifiConnectedCallback;
    invoke-interface {v0}, Lcom/kingsoft/email/callback/WifiConnectedCallback;->call()V

    goto :goto_1
.end method

.method public stopWait()V
    .locals 2

    .prologue
    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mStop:Z

    .line 106
    iget-object v0, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 107
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iput-boolean v1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mRegistered:Z

    .line 136
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 134
    iput-boolean v1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    iget-boolean v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mRegistered:Z

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "ConnectivityManager not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, "waiting":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 208
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 210
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mStop:Z

    if-nez v2, :cond_7

    .line 211
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    .line 214
    if-eqz v1, :cond_1

    .line 215
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 216
    const-string/jumbo v2, "EmailConnectivityMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_2
    iput-object v6, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 248
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :goto_1
    return-void

    .line 221
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_3
    if-nez v1, :cond_5

    .line 222
    :try_start_1
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 223
    const-string/jumbo v2, "EmailConnectivityMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    :cond_4
    const/4 v1, 0x1

    .line 228
    :cond_5
    iget-object v3, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :try_start_2
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :try_start_3
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 238
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 243
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    iget-object v3, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_6
    iput-object v6, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    .line 243
    :cond_7
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 244
    iget-object v2, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_8
    iput-object v6, p0, Lcom/kingsoft/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_1

    .line 233
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_2
.end method
