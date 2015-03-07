.class Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    const-string/jumbo v0, "wmh"

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$100(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->run()V

    .line 121
    const-string/jumbo v0, "wmh"

    const-string/jumbo v1, "after"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$300(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    const/4 v1, 0x1

    # setter for: Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/ServiceProxy;->access$402(Lcom/android/emailcommon/service/ServiceProxy;Z)Z

    .line 133
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_2
    const-string/jumbo v0, "wmh"

    const-string/jumbo v2, "notify"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    goto :goto_0
.end method
