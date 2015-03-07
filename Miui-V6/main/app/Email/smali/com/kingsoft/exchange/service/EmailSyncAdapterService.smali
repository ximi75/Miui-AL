.class public Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
.super Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;
.source "EmailSyncAdapterService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;,
        Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;,
        Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    }
.end annotation


# static fields
.field private static final ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EXTRA_PING_ACCOUNT:Ljava/lang/String; = "PING_ACCOUNT"

.field private static final EXTRA_START_PING:Ljava/lang/String; = "START_PING"

.field private static final FULL_ACCOUNT_SYNC:J = -0x1L

.field private static final KICK_SYNC_INTERVAL:J = 0xe10L

.field private static final PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

.field private static final SCHEDULE_KICK:Z = true

.field private static final SYNC_ERROR_BACKOFF_MILLIS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final iRequestSyncWaitTimeOnConnectError:I = 0xea60

.field private static sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private mHasStartPingTask:Z

.field private final mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "emailAddress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;-><init>()V

    .line 399
    new-instance v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;-><init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .line 404
    new-instance v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;-><init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z

    .line 575
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z

    return p1
.end method

.method static synthetic access$100(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Landroid/accounts/Account;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->PUSH_ACCOUNTS_SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    return-object v0
.end method

.method public static createAccountSettingsIntent(JLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1024
    const-string/jumbo v1, "settings"

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1026
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 1027
    invoke-static {v0, p2}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->setAccountName(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 1028
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1038
    .local v0, "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_0
    const-string/jumbo v1, "com.android.calendar"

    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_1
    const-string/jumbo v1, "com.android.contacts"

    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_2
    return-object v0
.end method

.method private showAuthNotification(JLjava/lang/String;)V
    .locals 8
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 998
    invoke-static {p1, p2, p3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->createAccountSettingsIntent(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1004
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1000f6

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f1000f5

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020200

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1013
    .local v1, "notification":Landroid/app/Notification;
    const-string/jumbo v3, "notification"

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1015
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v3, "AuthError"

    invoke-virtual {v0, v3, v6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1016
    return-void
.end method

.method private stopAllPingTask()V
    .locals 3

    .prologue
    .line 650
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->access$400(Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/exchange/service/PingTask;

    .line 651
    .local v1, "task":Lcom/kingsoft/exchange/service/PingTask;
    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1}, Lcom/kingsoft/exchange/service/PingTask;->stop()V

    goto :goto_0

    .line 655
    .end local v1    # "task":Lcom/kingsoft/exchange/service/PingTask;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z

    .line 656
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->access$400(Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 657
    return-void
.end method


# virtual methods
.method protected getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
    .locals 2

    .prologue
    .line 707
    sget-object v1, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_0
    sget-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0, p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncAdapterImpl;-><init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 711
    :cond_0
    sget-object v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    monitor-exit v1

    return-object v0

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 675
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.email.EXCHANGE_INTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 678
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 628
    invoke-super {p0}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;->onCreate()V

    .line 629
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 630
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v0

    .line 631
    .local v0, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->setEmailSyncAdapterServer(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V

    .line 633
    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    sget-object v1, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "from EmailSyncAdapterService onCreate"

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInNormalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->restartAllPingTask()V

    .line 639
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 643
    invoke-super {p0}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;->onDestroy()V

    .line 644
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopAllPingTask()V

    .line 645
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v0

    .line 646
    .local v0, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->setEmailSyncAdapterServer(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V

    .line 647
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 683
    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.android.email.EXCHANGE_INTENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const-string/jumbo v1, "ServiceProxy.FORCE_SHUTDOWN"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Forced shutdown, killing process"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 692
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopSelf()V

    .line 702
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 693
    :cond_1
    const-string/jumbo v1, "START_PING"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Restarting ping from alarm"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 697
    const-string/jumbo v1, "PING_ACCOUNT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 699
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0}, Lcom/kingsoft/exchange/eas/EasPing;->requestPing(Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method public restartAllPingTask()V
    .locals 3

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z

    if-eqz v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z

    .line 669
    new-instance v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mSyncHandlerMap:Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;-><init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Landroid/content/ContentResolver;Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$RestartPingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stopServiceWithPingTask()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopAllPingTask()V

    .line 661
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopSelf()V

    .line 662
    return-void
.end method
