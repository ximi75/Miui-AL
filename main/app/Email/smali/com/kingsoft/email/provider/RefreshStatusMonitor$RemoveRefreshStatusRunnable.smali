.class Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;
.super Ljava/lang/Object;
.source "RefreshStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/RefreshStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveRefreshStatusRunnable"
.end annotation


# instance fields
.field private final mCallback:Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

.field private final mMailboxId:J

.field private mNumRetries:I

.field final synthetic this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/RefreshStatusMonitor;JLcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;)V
    .locals 1
    .param p2, "mailboxId"    # J
    .param p4, "callback"    # Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mNumRetries:I

    .line 102
    iput-wide p2, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    .line 103
    iput-object p4, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mCallback:Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v1

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    .local v0, "isSyncRunning":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mIsStorageLow:Z
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$000(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RefreshStatusMonitor: mailboxId=%d LOW STORAGE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$300(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showErrorToast(Landroid/content/Context;I)V

    .line 116
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mCallback:Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    const/4 v5, 0x4

    invoke-interface {v1, v3, v4, v5}, Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;->onRefreshCompleted(JI)V

    .line 118
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v1

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_0
    monitor-exit v2

    .line 157
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # invokes: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->isConnected()Z
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$400(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RefreshStatusMonitor: mailboxId=%d NOT CONNECTED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$300(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f100283

    invoke-static {v1, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 124
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mCallback:Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;->onRefreshCompleted(JI)V

    .line 126
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v1

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    .end local v0    # "isSyncRunning":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    .restart local v0    # "isSyncRunning":Ljava/lang/Boolean;
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mNumRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mNumRetries:I

    .line 132
    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RefreshStatusMonitor: mailboxId=%d Retry %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mNumRetries:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mNumRetries:I

    const/16 v3, 0xf0

    if-le v1, v3, :cond_2

    .line 135
    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RefreshStatusMonitor: mailboxId=%d TIMEOUT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v1

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mCallback:Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-interface {v1, v3, v4}, Lcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;->onTimeout(J)V

    goto/16 :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$500(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 149
    :cond_3
    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RefreshStatusMonitor: mailboxId=%d SYNC DETECTED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    iget-object v1, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->this$0:Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    # getter for: Lcom/kingsoft/email/provider/RefreshStatusMonitor;->mMailboxSync:Ljava/util/Map;
    invoke-static {v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->access$100(Lcom/kingsoft/email/provider/RefreshStatusMonitor;)Ljava/util/Map;

    move-result-object v1

    iget-wide v3, p0, Lcom/kingsoft/email/provider/RefreshStatusMonitor$RemoveRefreshStatusRunnable;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
