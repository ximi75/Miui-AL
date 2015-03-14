.class final Lcom/kingsoft/email/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/NotificationController;->ensureHandlerExists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 254
    # getter for: Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Delayed notification processing"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 255
    # getter for: Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessageLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$500()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 256
    const/4 v3, 0x0

    :try_start_0
    # setter for: Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z
    invoke-static {v3}, Lcom/kingsoft/email/NotificationController;->access$602(Z)Z

    .line 257
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 258
    .local v1, "context":Landroid/content/Context;
    # getter for: Lcom/kingsoft/email/NotificationController;->sRefreshAllNeeded:Z
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$700()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const/4 v3, 0x0

    # setter for: Lcom/kingsoft/email/NotificationController;->sRefreshAllNeeded:Z
    invoke-static {v3}, Lcom/kingsoft/email/NotificationController;->access$702(Z)Z

    .line 260
    # invokes: Lcom/kingsoft/email/NotificationController;->refreshAllNotificationsInternal(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->access$800(Landroid/content/Context;)V

    .line 262
    :cond_0
    # getter for: Lcom/kingsoft/email/NotificationController;->sRefreshAccountSet:Ljava/util/HashSet;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$900()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 263
    .local v0, "accountId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    # invokes: Lcom/kingsoft/email/NotificationController;->refreshNotificationsForAccountInternal(Landroid/content/Context;J)V
    invoke-static {v1, v5, v6}, Lcom/kingsoft/email/NotificationController;->access$1000(Landroid/content/Context;J)V

    goto :goto_0

    .line 266
    .end local v0    # "accountId":Ljava/lang/Long;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 265
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    # getter for: Lcom/kingsoft/email/NotificationController;->sRefreshAccountSet:Ljava/util/HashSet;
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->access$900()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 266
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    const/4 v3, 0x1

    return v3
.end method
