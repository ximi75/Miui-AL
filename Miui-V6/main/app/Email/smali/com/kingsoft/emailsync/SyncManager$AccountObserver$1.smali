.class Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager$AccountObserver;-><init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

.field final synthetic val$this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;Lcom/kingsoft/emailsync/SyncManager;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    iput-object p2, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->val$this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 398
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v3, v2, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    monitor-enter v3

    .line 399
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v2}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 400
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    # invokes: Lcom/kingsoft/emailsync/SyncManager;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActive true; release hold for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    return-void
.end method
