.class Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;
.super Ljava/util/TreeSet;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet",
        "<",
        "Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchdogPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    iput-object p1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 417
    invoke-direct {p0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 423
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    .line 418
    return-void
.end method

.method static synthetic access$800(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;
    .param p1, "x1"    # J

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V

    return-void
.end method

.method private cancelDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 7
    .param p1, "req"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .prologue
    const/4 v6, 0x0

    .line 708
    const-string/jumbo v1, "AttachmentDownload"

    const-string/jumbo v2, "cancelDownload #%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 709
    iput-boolean v6, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 710
    iget-object v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-wide v1, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    .line 714
    iget-wide v1, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 715
    const-string/jumbo v1, "AttachmentDownload"

    const-string/jumbo v2, "too many failures, giving up"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 726
    :goto_0
    return-void

    .line 717
    :cond_0
    const-string/jumbo v1, "AttachmentDownload"

    const-string/jumbo v2, "moving to end of queue, will retry"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 723
    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;JLcom/kingsoft/email/service/AttachmentDownloadService$1;)V

    .line 724
    .end local p1    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .local v0, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .end local v0    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .restart local p1    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    goto :goto_0
.end method

.method private declared-synchronized getDownloadInProgress(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 2
    .param p1, "attachmentId"    # J

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onWatchdogAlarm()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 616
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    # getter for: Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z
    invoke-static {v6}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$500(Lcom/kingsoft/email/service/AttachmentDownloadService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 620
    .local v1, "now":J
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 622
    .local v3, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v6, v3, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v4, v1, v6

    .line 623
    .local v4, "timeSinceCallback":J
    const-wide/16 v6, 0x7530

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 624
    const-string/jumbo v6, "AttachmentDownload"

    invoke-static {v6, v11}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 625
    const-string/jumbo v6, "AttachmentDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "== Download of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " timed out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 627
    :cond_3
    const-string/jumbo v6, "AttachmentDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onWatchdogAlarm-cancelDownload:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",req.attachmentId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    invoke-direct {p0, v3}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)V

    goto :goto_1

    .line 633
    .end local v3    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v4    # "timeSinceCallback":J
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v6, v6, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    invoke-virtual {v6}, Lcom/kingsoft/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 634
    invoke-virtual {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 637
    :cond_5
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 638
    const-string/jumbo v6, "AttachmentDownload"

    invoke-static {v6, v11}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 639
    const-string/jumbo v6, "AttachmentDownload"

    const-string/jumbo v7, "Reschedule watchdog..."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 641
    :cond_6
    invoke-direct {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm()V

    goto/16 :goto_0
.end method

.method private setWatchdogAlarm()V
    .locals 2

    .prologue
    .line 685
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V

    .line 686
    return-void
.end method

.method private setWatchdogAlarm(J)V
    .locals 6
    .param p1, "delay"    # J

    .prologue
    const/4 v5, 0x0

    .line 673
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 674
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/kingsoft/email/service/AttachmentDownloadService$Watchdog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    .line 679
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 680
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mWatchdogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 682
    return-void
.end method

.method private startDownload(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)V
    .locals 7
    .param p1, "service"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p2, "req"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 698
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "download the attachment id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    .line 700
    iput-boolean v0, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 701
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    # getter for: Lcom/kingsoft/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;
    invoke-static {v2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$600(Lcom/kingsoft/email/service/AttachmentDownloadService;)Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;

    move-result-object v2

    iget-wide v3, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    iget v5, p2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    :goto_0
    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V

    .line 704
    invoke-direct {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm()V

    .line 705
    return-void

    :cond_0
    move v0, v1

    .line 702
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized downloadsForAccount(J)I
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 601
    monitor-enter p0

    const/4 v0, 0x0

    .line 602
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 603
    .local v2, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v3, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v2    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_1
    monitor-exit p0

    return v0

    .line 601
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized endDownload(JI)V
    .locals 30
    .param p1, "attachmentId"    # J
    .param p3, "statusCode"    # I

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    const-string/jumbo v24, "AttachmentDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "end download the attachment id: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 740
    .local v6, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v24, 0x3

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 741
    const-string/jumbo v24, "AttachmentDownload"

    const-string/jumbo v25, "IO error, stop all the downloads"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->clear()V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->clear()V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->stopSelf()V

    .line 747
    const v16, 0x7f100175

    .line 748
    .local v16, "resInsufficientSpace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    .end local v16    # "resInsufficientSpace":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_1
    const/16 v24, 0x22

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 754
    :try_start_1
    const-string/jumbo v24, "AttachmentDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "endDownload:canceling attId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 756
    if-eqz v6, :cond_2

    .line 757
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v24, "uiState"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    const-string/jumbo v24, "uiDownloadedSize"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 762
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 734
    .end local v6    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 773
    .restart local v6    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 774
    .local v10, "downloadCount":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v15

    .line 778
    .local v15, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v6, :cond_8

    if-eqz p3, :cond_8

    const/16 v24, 0x22

    move/from16 v0, p3

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 788
    .local v3, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 789
    .local v11, "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/kingsoft/email/EmailConnectivityManager;->isAutoSyncAllowed()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v11}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    iget v0, v3, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x4000

    move/from16 v24, v0

    if-nez v24, :cond_6

    :cond_4
    const/16 v24, 0x20

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v24, 0x20

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    if-eqz v15, :cond_6

    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    cmp-long v24, v24, v26

    if-nez v24, :cond_6

    .line 795
    :cond_5
    sget-object v24, Lcom/kingsoft/email/EmailApplication;->fragmentInAttachmentCount:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-lez v24, :cond_9

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f1000d9

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 804
    :cond_6
    :goto_1
    if-nez v10, :cond_7

    .line 805
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 807
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .end local v3    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v11    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    :cond_8
    if-eqz v6, :cond_c

    const/16 v24, 0x20

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 813
    if-eqz v15, :cond_0

    .line 814
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .restart local v8    # "cv":Landroid/content/ContentValues;
    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    .line 816
    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    cmp-long v24, v24, v26

    if-lez v24, :cond_a

    .line 817
    const-string/jumbo v24, "AttachmentDownload"

    const-string/jumbo v25, "Connection Error #%d, giving up"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 818
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 820
    const/4 v12, 0x6

    .line 822
    .local v12, "flags":I
    const-string/jumbo v24, "uiState"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string/jumbo v24, "downloadFailureReason"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string/jumbo v24, "uiDownloadedSize"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string/jumbo v24, "flags"

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x7

    move/from16 v0, v25

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 798
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v12    # "flags":I
    .restart local v3    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v11    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v24

    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v24 .. v27}, Lcom/kingsoft/email/NotificationController;->showAttachmentDownloadFailedNotification(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 827
    .end local v3    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v11    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    .restart local v8    # "cv":Landroid/content/ContentValues;
    :cond_a
    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    cmp-long v24, v24, v26

    if-lez v24, :cond_b

    .line 833
    const-string/jumbo v24, "AttachmentDownload"

    const-string/jumbo v25, "ConnectionError #%d, retried %d times, adding delay"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 835
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x2710

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    .line 838
    const-wide/16 v24, 0x2710

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V

    goto/16 :goto_0

    .line 840
    :cond_b
    const-string/jumbo v24, "AttachmentDownload"

    const-string/jumbo v25, "ConnectionError #%d, retried %d times, adding delay"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 842
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 843
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 852
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_c
    if-eqz v15, :cond_d

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 856
    :cond_d
    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 857
    const-string/jumbo v24, "AttachmentDownload"

    const-string/jumbo v25, "saving to external storage"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 861
    :cond_e
    const-string/jumbo v24, "AttachmentDownload"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 862
    const-wide/16 v17, 0x0

    .line 863
    .local v17, "secs":J
    if-eqz v15, :cond_f

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v17, v24, v26

    .line 866
    :cond_f
    if-nez p3, :cond_16

    const-string/jumbo v20, "Success"

    .line 868
    .local v20, "status":Ljava/lang/String;
    :goto_2
    const-string/jumbo v24, "AttachmentDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "<< Download finished for attachment #"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "; "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " seconds from request, status: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 871
    .end local v17    # "secs":J
    .end local v20    # "status":Ljava/lang/String;
    :cond_10
    if-eqz v6, :cond_15

    .line 872
    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 874
    .local v4, "accountId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 875
    .local v7, "currentStorage":Ljava/lang/Long;
    if-nez v7, :cond_11

    .line 876
    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 878
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/4 v9, 0x0

    .line 880
    .local v9, "deleted":Z
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_14

    .line 881
    const/16 v24, 0x11

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v14

    .line 888
    .local v14, "nc":Lcom/kingsoft/email/NotificationController;
    invoke-virtual {v14, v6}, Lcom/kingsoft/email/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 889
    const/4 v9, 0x1

    .line 893
    .end local v14    # "nc":Lcom/kingsoft/email/NotificationController;
    :cond_12
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v24

    if-nez v24, :cond_14

    .line 895
    const-string/jumbo v24, "AttachmentDownload"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 896
    const-string/jumbo v24, "AttachmentDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "== Downloads finished for outgoing msg #"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-wide v0, v15, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->messageId:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 900
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 902
    .local v13, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v19

    .line 905
    .local v19, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_start_3
    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->sendMail(J)V

    .line 906
    const-string/jumbo v24, "AttachmentDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "send mail: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 912
    .end local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v19    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_14
    :goto_3
    const/16 v24, 0x10

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 913
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 914
    .restart local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v13, :cond_17

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 963
    .end local v4    # "accountId":J
    .end local v7    # "currentStorage":Ljava/lang/Long;
    .end local v9    # "deleted":Z
    .end local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 866
    .restart local v17    # "secs":J
    :cond_16
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 920
    .end local v17    # "secs":J
    .restart local v4    # "accountId":J
    .restart local v7    # "currentStorage":Ljava/lang/Long;
    .restart local v9    # "deleted":Z
    .restart local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V

    goto/16 :goto_0

    .line 923
    .end local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_18
    if-nez v9, :cond_15

    .line 933
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 934
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const/4 v12, 0x6

    .line 936
    .restart local v12    # "flags":I
    const-string/jumbo v24, "flags"

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x7

    move/from16 v0, v25

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    if-nez p3, :cond_1a

    .line 939
    const-string/jumbo v24, "uiState"

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string/jumbo v24, "uiDestination"

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    sget-boolean v24, Lcom/kingsoft/email/mail/attachment/AttachmentOffOn;->isFileMd5Off:Z

    if-nez v24, :cond_19

    .line 943
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 944
    .local v22, "strFileName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 945
    .local v21, "strContentUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAttachmentMd5(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 948
    .local v23, "strMd5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMd5(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 957
    .end local v21    # "strContentUri":Ljava/lang/String;
    .end local v22    # "strFileName":Ljava/lang/String;
    .end local v23    # "strMd5":Ljava/lang/String;
    :cond_19
    :goto_5
    const-string/jumbo v24, "isDeleted"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_4

    .line 952
    :cond_1a
    const-string/jumbo v24, "uiState"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string/jumbo v24, "downloadFailureReason"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 907
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v12    # "flags":I
    .restart local v13    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v19    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :catch_0
    move-exception v24

    goto/16 :goto_3
.end method

.method declared-synchronized findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 477
    .local v1, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v2, v1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 481
    .end local v1    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 474
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v2

    .line 435
    .local v2, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DownloadSet.onChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 436
    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    invoke-static {p2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    int-to-long v0, v3

    .line 437
    .local v0, "priority":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    .line 438
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "== Attachment changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 440
    if-eqz v2, :cond_0

    .line 443
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "== Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was in queue, removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    invoke-virtual {p0, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 445
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove the download request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V
    invoke-static {v3}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_1
    monitor-exit p0

    return-void

    .line 449
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 452
    if-nez v2, :cond_3

    .line 453
    new-instance v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .end local v2    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/kingsoft/email/service/AttachmentDownloadService$1;)V

    .line 454
    .restart local v2    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-virtual {p0, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->add(Ljava/lang/Object;)Z

    .line 455
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add a new download request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    :cond_3
    const-string/jumbo v3, "AttachmentDownload"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    const-string/jumbo v3, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "== Download queued for attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 433
    .end local v0    # "priority":J
    .end local v2    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized processQueue()V
    .locals 22

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "== Checking attachment queue, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v5, v5, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v5}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v4}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 498
    .local v17, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3

    .line 500
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 502
    .local v18, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->downloadsForAccount(J)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    .line 503
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "== Skip #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; maxed for acct #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 494
    .end local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v18    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 506
    .restart local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v18    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-nez v2, :cond_0

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 513
    .local v13, "currentTime":J
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryCount:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->retryStartTime:J

    cmp-long v2, v4, v13

    if-lez v2, :cond_2

    .line 514
    const-string/jumbo v2, "AttachmentDownload"

    const-string/jumbo v4, "== waiting to retry attachment %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 517
    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->setWatchdogAlarm(J)V

    goto/16 :goto_0

    .line 520
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)Z

    .line 521
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryStartDownload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 526
    .end local v13    # "currentTime":J
    .end local v18    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v15, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    .local v15, "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    if-nez v15, :cond_5

    .line 593
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 529
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Lcom/kingsoft/email/EmailConnectivityManager;->isAutoSyncAllowed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 530
    const-string/jumbo v2, "AttachmentDownload"

    const-string/jumbo v4, "Auto Sync is not allowed, pls check system account setting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 535
    :cond_6
    invoke-virtual {v15}, Lcom/kingsoft/email/EmailConnectivityManager;->getActiveNetworkType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    rsub-int/lit8 v10, v2, 0x2

    .line 543
    .local v10, "backgroundDownloads":I
    const/4 v2, 0x1

    if-le v10, v2, :cond_4

    .line 545
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x19

    invoke-static {v2, v4}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 547
    .local v3, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    # getter for: Lcom/kingsoft/email/service/AttachmentDownloadService;->mPrecacheInboxSelection:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/service/AttachmentDownloadService;->access$400(Lcom/kingsoft/email/service/AttachmentDownloadService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 552
    .local v11, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->getMappedAppStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 555
    .local v12, "cacheDir":Ljava/io/File;
    if-eqz v11, :cond_4

    .line 557
    :cond_7
    :goto_2
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 558
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 559
    .local v9, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v9, v11}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 561
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v8, :cond_8

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v2, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->delete(Landroid/content/Context;Landroid/net/Uri;J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 589
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 567
    .restart local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_8
    :try_start_5
    new-instance v16, Lcom/kingsoft/email/AttachmentInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v9}, Lcom/kingsoft/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 568
    .local v16, "info":Lcom/kingsoft/email/AttachmentInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/AttachmentInfo;->isEligibleForDownload()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 571
    iget-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    invoke-virtual {v2, v8, v12}, Lcom/kingsoft/email/service/AttachmentDownloadService;->canPrefetchForAccount(Lcom/android/emailcommon/provider/Account;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 574
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 575
    .local v19, "tryCount":Ljava/lang/Integer;
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_7

    .line 580
    :cond_a
    new-instance v18, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v9, v4}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/kingsoft/email/service/AttachmentDownloadService$1;)V

    .line 581
    .restart local v18    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->tryStartDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)Z

    .line 582
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryStartDownload at a low priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 589
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16    # "info":Lcom/kingsoft/email/AttachmentInfo;
    .end local v18    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v19    # "tryCount":Ljava/lang/Integer;
    :cond_b
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method declared-synchronized tryStartDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)Z
    .locals 9
    .param p1, "req"    # Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-wide v7, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-static {v6, v7, v8}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v3

    .line 650
    .local v3, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    iget-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->mDownloadsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v7, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 651
    .local v0, "alreadyInProgress":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 664
    :goto_1
    monitor-exit p0

    return v4

    .end local v0    # "alreadyInProgress":Z
    :cond_0
    move v0, v4

    .line 650
    goto :goto_0

    .line 652
    .restart local v0    # "alreadyInProgress":Z
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->this$0:Lcom/kingsoft/email/service/AttachmentDownloadService;

    iget-object v4, v4, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {v4, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 654
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_2
    const-string/jumbo v4, "AttachmentDownload"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    const-string/jumbo v4, "AttachmentDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ">> Starting download for attachment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 657
    :cond_2
    invoke-direct {p0, v3, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->startDownload(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v4, v5

    .line 664
    goto :goto_1

    .line 658
    :catch_0
    move-exception v2

    .line 661
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "AttachmentDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ">> Canceling download because of downloading failed for attachment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 662
    invoke-direct {p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->cancelDownload(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 646
    .end local v0    # "alreadyInProgress":Z
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
