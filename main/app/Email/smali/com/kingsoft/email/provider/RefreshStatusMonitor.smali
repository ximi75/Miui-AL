.class public Lcom/kingsoft/email/provider/RefreshStatusMonitor;
.super Ljava/lang/Object;
.source "RefreshStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;,
        Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;
    }
.end annotation


# static fields
.field private static final MAX_RETRY:I = 0xf0

.field private static final REMOVE_REFRESH_STATUS_DELAY_MS:I = 0xfa

.field public static final REMOVE_REFRESH_TIMEOUT_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/kingsoft/email/provider/RefreshStatusMonitor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsStorageLow:Z

.field private final mMailboxSync:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->sInstance:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/provider/RefreshStatusMonitor$1;-><init>(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)V

    invoke-static {v0}, Lcom/kingsoft/mail/utils/StorageLowState;->registerHandler(Lcom/kingsoft/mail/utils/StorageLowState$LowStorageHandler;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/email/provider/RefreshStatusMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kingsoft/email/provider/RefreshStatusMonitor;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v1, Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->sInstance:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->sInstance:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->sInstance:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isConnected()Z
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 90
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 91
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public monitorRefreshStatus(JLcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;)V
    .locals 5
    .param p1, "mailboxId"    # J
    .param p3, "callback"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;-><init>(Lcom/kingsoft/email/provider/RefreshStatusMonitor;JLcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncStarted(J)V
    .locals 6
    .param p1, "mailboxId"    # J

    .prologue
    .line 78
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "RefreshStatusMonitor: setSyncStarted: mailboxId=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    iget-object v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
