.class public abstract Lcom/android/emailcommon/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;
    }
.end annotation


# static fields
.field private static final DEBUG_PROXY:Z = false

.field public static final EXTRA_FORCE_SHUTDOWN:Ljava/lang/String; = "ServiceProxy.FORCE_SHUTDOWN"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field private mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

.field private mTaskCompleted:Z

.field private mTaskSet:Z

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 57
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 59
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    .line 91
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/emailcommon/service/ServiceProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/emailcommon/service/ServiceProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy;->getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 80
    .local v0, "lastDot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    return v0
.end method

.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method protected setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 168
    iget-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call setTask twice on the same ServiceProxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-boolean v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 172
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J

    .line 178
    const-string/jumbo v0, "wmh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProxyTask:name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;
    .locals 0
    .param p1, "secs"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 160
    return-object p0
.end method

.method public test()Z
    .locals 3

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/ServiceProxy$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    const-string/jumbo v2, "test"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected waitForCompletion()V
    .locals 8

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This cannot be called on the main thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 199
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 204
    .local v0, "time":J
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 214
    return-void

    .line 213
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 205
    .restart local v0    # "time":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method
