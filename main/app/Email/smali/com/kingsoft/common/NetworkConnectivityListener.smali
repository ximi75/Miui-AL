.class public Lcom/kingsoft/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/common/NetworkConnectivityListener$1;,
        Lcom/kingsoft/common/NetworkConnectivityListener$State;,
        Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/kingsoft/common/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 130
    sget-object v0, Lcom/kingsoft/common/NetworkConnectivityListener$State;->UNKNOWN:Lcom/kingsoft/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mState:Lcom/kingsoft/common/NetworkConnectivityListener$State;

    .line 131
    new-instance v0, Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/kingsoft/common/NetworkConnectivityListener;Lcom/kingsoft/common/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReceiver:Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/common/NetworkConnectivityListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kingsoft/common/NetworkConnectivityListener;)Lcom/kingsoft/common/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mState:Lcom/kingsoft/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/common/NetworkConnectivityListener;Lcom/kingsoft/common/NetworkConnectivityListener$State;)Lcom/kingsoft/common/NetworkConnectivityListener$State;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;
    .param p1, "x1"    # Lcom/kingsoft/common/NetworkConnectivityListener$State;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mState:Lcom/kingsoft/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/kingsoft/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/kingsoft/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/kingsoft/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/kingsoft/common/NetworkConnectivityListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kingsoft/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/common/NetworkConnectivityListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/kingsoft/common/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mState:Lcom/kingsoft/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReceiver:Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReceiver:Lcom/kingsoft/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mIsFailover:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kingsoft/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method
