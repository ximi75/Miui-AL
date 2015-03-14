.class Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;
.super Landroid/os/HandlerThread;
.source "DelayedTaskManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/DelayedTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteThread"
.end annotation


# static fields
.field private static final EXECUTE_THREAD_NAME:Ljava/lang/String; = "DelayedTaskExecutor"

.field private static final MESSAGE_EXECUTE_TASK:I


# instance fields
.field private mExecuteThreadHandler:Landroid/os/Handler;

.field private mStop:Z

.field final synthetic this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/chat/DelayedTaskManager;)V
    .locals 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    .line 118
    const-string/jumbo v0, "DelayedTaskExecutor"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/chat/DelayedTaskManager;Lcom/kingsoft/mail/chat/DelayedTaskManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager;
    .param p2, "x1"    # Lcom/kingsoft/mail/chat/DelayedTaskManager$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;-><init>(Lcom/kingsoft/mail/chat/DelayedTaskManager;)V

    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mStop:Z

    return p1
.end method

.method private executeInBackground()V
    .locals 5

    .prologue
    .line 132
    iget-object v3, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->access$300(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->access$300(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 138
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->access$300(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;

    .line 142
    .local v1, "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    iget-boolean v3, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mStop:Z

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z
    invoke-static {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->access$100(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->execute()V

    .line 149
    const/4 v3, 0x1

    # setter for: Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z
    invoke-static {v1, v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->access$102(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;Z)Z

    goto :goto_1

    .line 139
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 152
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;>;"
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->this$0:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->access$400(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mExecuteThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mExecuteThreadHandler:Landroid/os/Handler;

    .line 164
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->executeInBackground()V

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public requestExecuting()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->ensureHandler()V

    .line 157
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mExecuteThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method
