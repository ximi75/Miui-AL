.class public Lcom/kingsoft/mail/chat/DelayedTaskManager;
.super Ljava/lang/Object;
.source "DelayedTaskManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/DelayedTaskManager$1;,
        Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;,
        Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;
    }
.end annotation


# static fields
.field private static final MESSAGE_REQUEST_EXECUTING:I = 0x1

.field private static final MESSAGE_TASK_FINISHED:I = 0x2


# instance fields
.field private mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

.field private mExecutingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    .line 27
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    .line 28
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecutingRequested:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/chat/DelayedTaskManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/DelayedTaskManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureExecuteThread()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;-><init>(Lcom/kingsoft/mail/chat/DelayedTaskManager;Lcom/kingsoft/mail/chat/DelayedTaskManager$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    .line 105
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->start()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mStop:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->access$002(Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;Z)Z

    .line 108
    return-void
.end method

.method private processFinishedTasks()V
    .locals 5

    .prologue
    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v2, "removedTaskHash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    .local v0, "hash":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;

    .line 87
    .local v3, "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    # getter for: Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->done:Z
    invoke-static {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->access$100(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->update()V

    goto :goto_0

    .line 94
    .end local v0    # "hash":Ljava/lang/Integer;
    .end local v3    # "task":Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    .restart local v0    # "hash":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    .end local v0    # "hash":Ljava/lang/Integer;
    :cond_3
    iget-boolean v4, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 98
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->requestExecuting()V

    .line 100
    :cond_4
    return-void
.end method

.method private requestExecuting()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecutingRequested:Z

    if-nez v0, :cond_0

    .line 61
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecutingRequested:Z

    .line 62
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;)V
    .locals 2
    .param p1, "task"    # Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$DelayedTask;->hash()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    if-nez v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->requestExecuting()V

    .line 57
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 70
    :pswitch_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecutingRequested:Z

    .line 71
    iget-boolean v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    if-nez v1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->ensureExecuteThread()V

    .line 73
    iget-object v1, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->requestExecuting()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->processFinishedTasks()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    .line 34
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPaused:Z

    .line 38
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->requestExecuting()V

    .line 41
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kingsoft/mail/chat/DelayedTaskManager;->mExecuteThread:Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->mStop:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;->access$002(Lcom/kingsoft/mail/chat/DelayedTaskManager$ExecuteThread;Z)Z

    .line 48
    :cond_0
    return-void
.end method
