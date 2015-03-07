.class public abstract Lcom/kingsoft/emailsync/SyncManager;
.super Landroid/app/Service;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;,
        Lcom/kingsoft/emailsync/SyncManager$SyncError;,
        Lcom/kingsoft/emailsync/SyncManager$SyncStatus;,
        Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;,
        Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;,
        Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;,
        Lcom/kingsoft/emailsync/SyncManager$AccountObserver;,
        Lcom/kingsoft/emailsync/SyncManager$AccountList;
    }
.end annotation


# static fields
.field public static final CALENDAR_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final CONNECTIVITY_WAIT_TIME:I = 0x927c0

.field public static final EXTRA_MAILBOX_ID:I = -0x1

.field private static final HOLD_DELAY_MAXIMUM:I = 0x3a980

.field protected static INSTANCE:Lcom/kingsoft/emailsync/SyncManager; = null

.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

.field private static final MAX_CLIENT_CONNECTION_MANAGER_SHUTDOWNS:I = 0x1

.field private static final MINUTES:I = 0xea60

.field private static final ONE_DAY_MINUTES:I = 0x5a0

.field public static final PING_STATUS_DISABLED:I = 0x4

.field public static final PING_STATUS_OK:I = 0x0

.field public static final PING_STATUS_RUNNING:I = 0x1

.field public static final PING_STATUS_UNABLE:I = 0x3

.field public static final PING_STATUS_WAITING:I = 0x2

.field private static final SECONDS:I = 0x3e8

.field public static final SEND_FAILED:I = 0x1

.field public static final STATUS_CHANGE_COUNT_OFFSET:I = 0x5

.field public static final STATUS_EXIT_CHAR:I = 0x3

.field public static final STATUS_TYPE_CHAR:I = 0x1

.field public static final SYNC_CALLBACK_START:I = 0x6

.field public static final SYNC_KICK:I = 0x4

.field public static final SYNC_PING:I = 0x3

.field public static final SYNC_PUSH:I = 0x2

.field public static final SYNC_SCHEDULED:I = 0x1

.field private static final SYNC_SERVICE_HEARTBEAT_TIME:I = 0xdbba0

.field public static final SYNC_SERVICE_MAILBOX_ID:I = 0x0

.field public static final SYNC_SERVICE_PART_REQUEST:I = 0x5

.field public static final SYNC_SERVICE_START_SYNC:I = 0x6

.field public static final SYNC_UI_REQUEST:I = 0x7

.field public static final SYNC_UPSYNC:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final WHERE_CALENDAR_ID:Ljava/lang/String; = "calendar_id=?"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE:Ljava/lang/String; = "accountKey=? and type in (0,68,66,65)"

.field protected static final WHERE_IN_ACCOUNT_AND_TYPE_INBOX:Ljava/lang/String; = "accountKey=? and type = 0"

.field private static final WHERE_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey=?"

.field private static final WHERE_NOT_INTERVAL_NEVER_AND_ACCOUNT_KEY_IN:Ljava/lang/String; = "(type=4 or syncInterval<-1) and accountKey in ("

.field private static volatile sClientConnectionManagerShutdownCount:I

.field private static sClientConnectionManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field protected static sDeviceId:Ljava/lang/String;

.field protected static sFileLog:Z

.field protected static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;

.field protected static sUserLog:Z


# instance fields
.field public final mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

.field private mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mKicked:Z

.field private mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWaitReason:Ljava/lang/String;

.field private final mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public mResolver:Landroid/content/ContentResolver;

.field public final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/emailsync/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStartTime:J

.field public mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/emailsync/SyncManager$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocksHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    const-string/jumbo v0, "SyncManager"

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    .line 179
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    .line 214
    sput-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 216
    sput-object v2, Lcom/kingsoft/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    .line 221
    sput v1, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 223
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    .line 224
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    .line 237
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    .line 238
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sFileLog:Z

    .line 894
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$1;

    invoke-direct {v0}, Lcom/kingsoft/emailsync/SyncManager$1;-><init>()V

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    .line 194
    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    .line 232
    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    .line 1189
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/kingsoft/emailsync/SyncManager;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->shutdownConnectionManager()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kingsoft/emailsync/SyncManager;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/emailsync/SyncManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/emailsync/SyncManager;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$802(Lcom/kingsoft/emailsync/SyncManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/emailsync/SyncManager;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceStartTime:J

    return-wide p1
.end method

.method private acquireWakeLock(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 999
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v3

    .line 1000
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1001
    .local v0, "lock":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 1003
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/kingsoft/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1004
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string/jumbo v4, "MAIL_SERVICE"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1005
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1007
    const-string/jumbo v2, "+WAKE LOCK ACQUIRED"

    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1009
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :cond_1
    monitor-exit v3

    .line 1012
    return-void

    .line 1011
    .end local v0    # "lock":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static alarmOwner(J)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # J

    .prologue
    .line 1040
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 1041
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    .line 1050
    :goto_0
    return-object v2

    .line 1043
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "name":Ljava/lang/String;
    sget-boolean v2, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-eqz v2, :cond_1

    .line 1045
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    invoke-static {v2, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1046
    .local v0, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_1

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .end local v0    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mailbox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1132
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1133
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->checkSyncManagerRunning()V

    .line 1134
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    .line 1135
    const-string/jumbo v3, "SyncServiceManager alert"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v3, "ping SyncServiceManager"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    if-nez v1, :cond_2

    .line 1138
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v0

    .line 1141
    .local v0, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v0, :cond_0

    .line 1144
    const-string/jumbo v2, "SyncServiceManager Alert: "

    .line 1145
    .local v2, "threadName":Ljava/lang/String;
    iget-object v3, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_3

    .line 1146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/kingsoft/emailsync/SyncManager$2;

    invoke-direct {v4, v1, p1, p2, v0}, Lcom/kingsoft/emailsync/SyncManager$2;-><init>(Lcom/kingsoft/emailsync/SyncManager;JLcom/kingsoft/emailsync/AbstractSyncService;)V

    invoke-direct {v3, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 872
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-nez v0, :cond_0

    .line 873
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    .locals 9
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1708
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1709
    .local v4, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v4, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return v5

    .line 1712
    :cond_1
    iget-object v0, v4, Lcom/kingsoft/emailsync/SyncManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1715
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 1717
    .local v2, "policyKey":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->isNetworkTypeMobile(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1720
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 1721
    .local v1, "policy":Lcom/android/emailcommon/provider/Policy;
    if-nez v1, :cond_2

    .line 1722
    sget-object v7, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    invoke-static {v7, v2, v3}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 1723
    iput-object v1, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 1724
    invoke-static {v4, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1725
    invoke-static {v4, p0, v6}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1726
    const-string/jumbo v6, "canAutoSync; policies not active, set hold flag"

    invoke-static {v6}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1730
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v7, v1, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-nez v7, :cond_0

    .end local v1    # "policy":Lcom/android/emailcommon/provider/Policy;
    :cond_3
    move v5, v6

    .line 1734
    goto :goto_0
.end method

.method private static canSyncEmail(Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1743
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkMailboxes()J
    .locals 41

    .prologue
    .line 1804
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    .local v12, "deletedMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1806
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1807
    .local v17, "mailboxId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v16

    .line 1808
    .local v16, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v16, :cond_0

    .line 1809
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1829
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    .end local v17    # "mailboxId":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1813
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 1814
    .local v17, "mailboxId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 1815
    .local v32, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v32, :cond_2

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 1816
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1819
    :cond_3
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    .line 1820
    .local v10, "alive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted mailbox: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1821
    if-eqz v10, :cond_4

    .line 1822
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->stopManualSync(J)V

    goto :goto_1

    .line 1824
    :cond_4
    const-string/jumbo v3, "Removing from serviceMap"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 1829
    .end local v10    # "alive":Z
    .end local v17    # "mailboxId":Ljava/lang/Long;
    .end local v32    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1831
    const-wide/32 v21, 0xdbba0

    .line 1832
    .local v21, "nextWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 1836
    .local v25, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    if-nez v3, :cond_6

    .line 1837
    const-string/jumbo v3, "mAccountObserver null; service died??"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    move-wide/from16 v23, v21

    .line 1945
    .end local v21    # "nextWait":J
    .local v23, "nextWait":J
    :goto_2
    return-wide v23

    .line 1841
    .end local v23    # "nextWait":J
    .restart local v21    # "nextWait":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    invoke-virtual {v6}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->getSyncableMailboxWhere()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1843
    .local v11, "c":Landroid/database/Cursor;
    if-nez v11, :cond_7

    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 1845
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1846
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1847
    .local v17, "mailboxId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v29

    .line 1848
    .local v29, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-nez v29, :cond_f

    .line 1850
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/kingsoft/emailsync/SyncManager;->getAccountById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 1851
    .local v9, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v9, :cond_7

    .line 1854
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1855
    .local v19, "mailboxType":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lcom/kingsoft/emailsync/SyncManager;->isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 1861
    .local v33, "syncError":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    if-eqz v33, :cond_9

    .line 1863
    move-object/from16 v0, v33

    iget-boolean v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    if-nez v3, :cond_7

    .line 1864
    move-object/from16 v0, v33

    iget-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    cmp-long v3, v25, v3

    if-gez v3, :cond_8

    .line 1867
    move-object/from16 v0, v33

    iget-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    add-long v5, v25, v21

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 1868
    move-object/from16 v0, v33

    iget-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    sub-long v21, v3, v25

    .line 1869
    const-string/jumbo v3, "Release hold"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1943
    .end local v9    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v17    # "mailboxId":J
    .end local v19    # "mailboxType":I
    .end local v29    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    .end local v33    # "syncError":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    :catchall_1
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1874
    .restart local v9    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v17    # "mailboxId":J
    .restart local v19    # "mailboxType":I
    .restart local v29    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    .restart local v33    # "syncError":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    :cond_8
    const-wide/16 v3, 0x0

    :try_start_3
    move-object/from16 v0, v33

    iput-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    .line 1879
    :cond_9
    const/16 v3, 0x9

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v34, v0

    .line 1880
    .local v34, "syncInterval":J
    const-wide/16 v3, -0x2

    cmp-long v3, v34, v3

    if-nez v3, :cond_a

    .line 1881
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 1882
    .restart local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/kingsoft/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/kingsoft/emailsync/Request;)V

    goto/16 :goto_3

    .line 1883
    .end local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_a
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 1884
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/kingsoft/emailsync/SyncManager;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1885
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 1886
    .restart local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/emailsync/SyncManager;->startServiceThread(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto/16 :goto_3

    .line 1888
    .end local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, v34, v3

    if-lez v3, :cond_7

    const-wide/16 v3, 0x5a0

    cmp-long v3, v34, v3

    if-gtz v3, :cond_7

    .line 1890
    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1891
    .local v14, "lastSync":J
    sub-long v30, v25, v14

    .line 1892
    .local v30, "sinceLastSync":J
    const-wide/32 v3, 0xea60

    mul-long v3, v3, v34

    sub-long v39, v3, v30

    .line 1893
    .local v39, "toNextSync":J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1894
    .local v20, "name":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v39, v3

    if-gtz v3, :cond_c

    .line 1895
    const-class v3, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/provider/Mailbox;

    .line 1896
    .restart local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/kingsoft/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/kingsoft/emailsync/Request;)V

    goto/16 :goto_3

    .line 1897
    .end local v16    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_c
    cmp-long v3, v39, v21

    if-gez v3, :cond_e

    .line 1898
    move-wide/from16 v21, v39

    .line 1899
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v3, :cond_d

    .line 1900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Next sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v21, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1902
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduled sync, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 1903
    :cond_e
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v3, :cond_7

    .line 1904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Next sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v39, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1908
    .end local v9    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v14    # "lastSync":J
    .end local v19    # "mailboxType":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v30    # "sinceLastSync":J
    .end local v33    # "syncError":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    .end local v34    # "syncInterval":J
    .end local v39    # "toNextSync":J
    :cond_f
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    move-object/from16 v36, v0

    .line 1910
    .local v36, "thread":Ljava/lang/Thread;
    if-eqz v36, :cond_11

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1911
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v3, :cond_10

    .line 1912
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dead thread, mailbox released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1915
    :cond_10
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1916
    :try_start_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    .line 1917
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1919
    const-wide/16 v3, 0xbb8

    cmp-long v3, v21, v3

    if-lez v3, :cond_7

    .line 1920
    const-wide/16 v21, 0xbb8

    .line 1921
    :try_start_5
    const-string/jumbo v3, "Clean up dead thread(s)"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 1917
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3

    .line 1924
    :cond_11
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    move-wide/from16 v27, v0

    .line 1925
    .local v27, "requestTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-lez v3, :cond_7

    .line 1926
    sub-long v37, v27, v25

    .line 1927
    .local v37, "timeToRequest":J
    const-wide/16 v3, 0x0

    cmp-long v3, v37, v3

    if-gtz v3, :cond_12

    .line 1928
    const-wide/16 v3, 0x0

    move-object/from16 v0, v29

    iput-wide v3, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1929
    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/emailsync/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 1930
    :cond_12
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-lez v3, :cond_7

    cmp-long v3, v37, v21

    if-gez v3, :cond_7

    .line 1931
    const-wide/32 v3, 0xa1220

    cmp-long v3, v37, v3

    if-gez v3, :cond_14

    .line 1932
    const-wide/16 v3, 0xfa

    cmp-long v3, v37, v3

    if-gez v3, :cond_13

    const-wide/16 v21, 0xfa

    .line 1933
    :goto_4
    const-string/jumbo v3, "Sync data change"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_13
    move-wide/from16 v21, v37

    .line 1932
    goto :goto_4

    .line 1935
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal timeToRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v37

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 1943
    .end local v17    # "mailboxId":J
    .end local v27    # "requestTime":J
    .end local v29    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    .end local v36    # "thread":Ljava/lang/Thread;
    .end local v37    # "timeToRequest":J
    :cond_15
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-wide/from16 v23, v21

    .line 1945
    .end local v21    # "nextWait":J
    .restart local v23    # "nextWait":J
    goto/16 :goto_2
.end method

.method static checkSyncManagerRunning()V
    .locals 3

    .prologue
    .line 1495
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1496
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1498
    const-string/jumbo v1, "!!! checkSyncServiceManagerServiceRunning; starting service..."

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1499
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private clearAlarm(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1055
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 1056
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1057
    .local v1, "pi":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1058
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/kingsoft/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1059
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1061
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v3

    .line 1064
    return-void

    .line 1063
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 1084
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1085
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v4

    .line 1086
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1087
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1090
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1089
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1090
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .param p0, "id"    # J

    .prologue
    .line 1118
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1119
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->clearAlarm(J)V

    .line 1122
    :cond_0
    return-void
.end method

.method private static doStatics(Lcom/kingsoft/emailsync/AbstractSyncService;)V
    .locals 1
    .param p0, "svc"    # Lcom/kingsoft/emailsync/AbstractSyncService;

    .prologue
    .line 2300
    instance-of v0, p0, Lcom/kingsoft/exchange/EasSyncService;

    if-eqz v0, :cond_1

    .line 2301
    const-string/jumbo v0, "A19"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 2308
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    instance-of v0, p0, Lcom/kingsoft/exchange/EasAccountService;

    if-eqz v0, :cond_2

    .line 2303
    const-string/jumbo v0, "A20"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 2304
    :cond_2
    instance-of v0, p0, Lcom/kingsoft/exchange/EasOutboxService;

    if-eqz v0, :cond_0

    .line 2305
    const-string/jumbo v0, "A21"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static done(Lcom/kingsoft/emailsync/AbstractSyncService;)V
    .locals 21
    .param p0, "svc"    # Lcom/kingsoft/emailsync/AbstractSyncService;

    .prologue
    .line 2146
    sget-object v13, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2147
    .local v13, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v13, :cond_0

    .line 2224
    :goto_0
    return-void

    .line 2148
    :cond_0
    sget-object v16, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v16

    .line 2149
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailboxId:J

    .line 2151
    .local v11, "mailboxId":J
    invoke-direct {v13, v11, v12}, Lcom/kingsoft/emailsync/SyncManager;->isRunningInServiceThread(J)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2152
    monitor-exit v16

    goto :goto_0

    .line 2223
    .end local v11    # "mailboxId":J
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2154
    .restart local v11    # "mailboxId":J
    :cond_1
    :try_start_1
    invoke-virtual {v13, v11, v12}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    .line 2155
    const/4 v15, 0x0

    invoke-virtual {v13, v11, v12, v15}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxSyncStatus(JI)V

    .line 2157
    iget-object v7, v13, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2158
    .local v7, "errorMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/kingsoft/emailsync/SyncManager$SyncError;>;"
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 2160
    .local v14, "syncError":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mExitStatus:I

    .line 2161
    .local v8, "exitStatus":I
    invoke-static {v13, v11, v12}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 2162
    .local v10, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v10, :cond_2

    monitor-exit v16

    goto :goto_0

    .line 2164
    :cond_2
    const/4 v15, 0x2

    if-eq v8, v15, :cond_4

    .line 2165
    iget-wide v4, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 2166
    .local v4, "accountId":J
    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 2167
    .local v3, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v3, :cond_3

    monitor-exit v16

    goto :goto_0

    .line 2168
    :cond_3
    const/4 v15, 0x2

    invoke-virtual {v13, v13, v15, v3}, Lcom/kingsoft/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2170
    new-instance v15, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v15, v13}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    .end local v3    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v4    # "accountId":J
    :cond_4
    const/4 v9, 0x0

    .line 2176
    .local v9, "lastResult":I
    const/4 v6, 0x1

    .line 2178
    .local v6, "errorIsFatal":Z
    packed-switch v8, :pswitch_data_0

    .line 2217
    :goto_1
    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v17, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v8, v6}, Lcom/kingsoft/emailsync/SyncManager$SyncError;-><init>(Lcom/kingsoft/emailsync/SyncManager;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2220
    :try_start_3
    invoke-virtual {v13, v11, v12, v9}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2221
    const-string/jumbo v15, "sync completed"

    invoke-static {v15}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 2223
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2180
    :pswitch_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/emailsync/AbstractSyncService;->hasPendingRequests()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 2183
    :cond_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    const-class v17, Lcom/kingsoft/emailsync/SyncManager;

    monitor-enter v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2186
    const/4 v15, 0x0

    :try_start_5
    sput v15, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    .line 2187
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2220
    :try_start_6
    invoke-virtual {v13, v11, v12, v9}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2221
    const-string/jumbo v15, "sync completed"

    invoke-static {v15}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2187
    :catchall_1
    move-exception v15

    :try_start_7
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2220
    :catchall_2
    move-exception v15

    :try_start_9
    invoke-virtual {v13, v11, v12, v9}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2221
    const-string/jumbo v17, "sync completed"

    invoke-static/range {v17 .. v17}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2192
    :pswitch_1
    if-eqz v14, :cond_6

    .line 2193
    :try_start_a
    invoke-virtual {v14}, Lcom/kingsoft/emailsync/SyncManager$SyncError;->escalate()V

    .line 2194
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " held for "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v14, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, "s"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2220
    :try_start_b
    invoke-virtual {v13, v11, v12, v9}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxLastSyncResult(JI)V

    .line 2221
    const-string/jumbo v15, "sync completed"

    invoke-static {v15}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2197
    :cond_6
    :try_start_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " added to syncErrorMap, hold for 15s"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 2199
    const/4 v9, 0x1

    .line 2200
    const/4 v6, 0x0

    .line 2201
    goto/16 :goto_1

    .line 2204
    :pswitch_2
    new-instance v15, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v15, v13}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mExitReason:Ljava/lang/String;

    move-object/from16 v19, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(JLjava/lang/String;)V

    .line 2205
    const/4 v9, 0x2

    .line 2206
    goto/16 :goto_1

    .line 2209
    :pswitch_3
    const/4 v9, 0x3

    .line 2210
    goto/16 :goto_1

    .line 2212
    :pswitch_4
    const/4 v9, 0x5

    .line 2213
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailsync/SyncManager;->doStatics(Lcom/kingsoft/emailsync/AbstractSyncService;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_1

    .line 2178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .param p0, "accountId"    # J

    .prologue
    .line 741
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 742
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v1, :cond_0

    .line 743
    iget-object v0, v1, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    .line 744
    .local v0, "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    monitor-enter v0

    .line 745
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->getById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    monitor-exit v0

    .line 748
    .end local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :goto_0
    return-object v2

    .line 746
    .restart local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 748
    .end local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountByName(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 752
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 753
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v1, :cond_0

    .line 754
    iget-object v0, v1, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    .line 755
    .local v0, "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    monitor-enter v0

    .line 756
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->getByName(Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    monitor-exit v0

    .line 759
    .end local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :goto_0
    return-object v2

    .line 757
    .restart local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 759
    .end local v0    # "accountList":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 362
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    .line 363
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/emailsync/SyncManager;->getAccountsSelector()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 904
    const-class v6, Lcom/kingsoft/emailsync/SyncManager;

    monitor-enter v6

    const/4 v1, 0x0

    .line 906
    .local v1, "mgr":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :try_start_0
    iget-wide v7, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_0

    .line 907
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-object v1, v0

    .line 909
    :cond_0
    if-nez v1, :cond_2

    .line 912
    sget v5, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagerShutdownCount:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 913
    const-string/jumbo v5, "Shutting down process to unblock threads"

    invoke-static {v5}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 916
    :cond_1
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 917
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v5, "http.conn-manager.max-total"

    const/16 v7, 0x19

    invoke-interface {v2, v5, v7}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 918
    const-string/jumbo v5, "http.conn-manager.max-per-route"

    sget-object v7, Lcom/kingsoft/emailsync/SyncManager;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v5, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 919
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v4

    .line 920
    .local v4, "ssl":Z
    iget v3, p1, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 921
    .local v3, "port":I
    invoke-static {p0, v2, p1}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    .line 922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Creating connection manager for port "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", ssl: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 923
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "port":I
    .end local v4    # "ssl":Z
    :cond_2
    monitor-exit v6

    return-object v1

    .line 904
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2255
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 887
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received deviceId from Email app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 891
    :cond_0
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 2247
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2248
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2250
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 2232
    if-nez p0, :cond_0

    .line 2233
    const/4 v0, -0x1

    .line 2235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .locals 11
    .param p1, "outboxCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1667
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1672
    .local v6, "c":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1673
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1678
    if-eqz v6, :cond_1

    .line 1679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 1682
    :goto_0
    return v0

    .line 1678
    :cond_2
    if-eqz v6, :cond_3

    .line 1679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 1682
    goto :goto_0

    .line 1678
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private hasWakeLock(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 993
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .param p1, "accountId"    # J

    .prologue
    const/4 v1, 0x1

    .line 594
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    .line 595
    .local v0, "observer":Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;
    if-eqz v0, :cond_0

    .line 596
    iget-wide v2, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v1

    .line 596
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHoldingWakeLock(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 1094
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1095
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1096
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->hasWakeLock(J)Z

    move-result v1

    .line 1098
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z
    .locals 7
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "type"    # I

    .prologue
    const/16 v4, 0x42

    const/16 v6, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1759
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return v1

    .line 1762
    :cond_1
    const/16 v3, 0x44

    if-ne p2, v3, :cond_2

    .line 1764
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    goto :goto_0

    .line 1765
    :cond_2
    if-eq p2, v4, :cond_3

    if-ne p2, v6, :cond_8

    .line 1767
    :cond_3
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 1768
    goto :goto_0

    .line 1772
    :cond_4
    if-ne p2, v4, :cond_6

    .line 1773
    const-string/jumbo v0, "com.android.contacts"

    .line 1783
    .local v0, "authority":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v3, p1}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 1785
    goto :goto_0

    .line 1775
    .end local v0    # "authority":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "com.android.calendar"

    .line 1776
    .restart local v0    # "authority":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1779
    invoke-direct {p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_1

    .line 1787
    :cond_7
    if-ne p2, v6, :cond_0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/emailsync/SyncManager;->isCalendarEnabled(J)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1788
    goto :goto_0

    .line 1791
    .end local v0    # "authority":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x6

    if-ne p2, v3, :cond_9

    move v1, v2

    .line 1792
    goto :goto_0

    .line 1796
    :cond_9
    invoke-static {p1}, Lcom/kingsoft/emailsync/SyncManager;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v3, p1}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->getAmAccount(Lcom/android/emailcommon/provider/Account;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->canSyncEmail(Landroid/accounts/Account;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_a
    move v1, v2

    .line 1797
    goto :goto_0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 1689
    packed-switch p0, :pswitch_data_0

    .line 1697
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1695
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isRunningInServiceThread(J)Z
    .locals 3
    .param p1, "mailboxId"    # J

    .prologue
    .line 2133
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v0

    .line 2134
    .local v0, "syncService":Lcom/kingsoft/emailsync/AbstractSyncService;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2135
    .local v1, "thisThread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 2
    .param p0, "m"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 1958
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 2106
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2107
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 2108
    monitor-enter v0

    .line 2110
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    .line 2111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    :cond_0
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2115
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2116
    :try_start_1
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2117
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2119
    :cond_1
    return-void

    .line 2112
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2117
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 859
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 863
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 865
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sFileLog:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 12

    .prologue
    .line 792
    sget-boolean v7, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v7, :cond_2

    .line 793
    const-string/jumbo v7, "Sync holds:"

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 795
    .local v5, "time":J
    iget-object v7, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 796
    .local v3, "mailboxId":J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 797
    .local v2, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_1

    .line 798
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 801
    .local v0, "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    .line 802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->reason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", fatal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 804
    iget-wide v7, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 805
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Hold ends in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    .end local v0    # "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/android/emailcommon/provider/Mailbox;
    .end local v3    # "mailboxId":J
    .end local v5    # "time":J
    :cond_2
    return-void
.end method

.method private static onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 357
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pingStatus(J)I
    .locals 7
    .param p0, "mailboxId"    # J

    .prologue
    const/4 v2, 0x0

    .line 2044
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2045
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v1, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return v2

    .line 2047
    :cond_1
    invoke-virtual {v1, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2048
    const/4 v2, 0x1

    goto :goto_0

    .line 2051
    :cond_2
    iget-object v3, v1, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 2052
    .local v0, "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    .line 2053
    iget-boolean v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    if-eqz v3, :cond_3

    .line 2054
    const/4 v2, 0x3

    goto :goto_0

    .line 2055
    :cond_3
    iget-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2056
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static reconcileAccounts(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1441
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1442
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1443
    invoke-virtual {v0, p0}, Lcom/kingsoft/emailsync/SyncManager;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 1445
    :cond_0
    return-void
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 557
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;-><init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V

    .line 558
    .local v0, "observer":Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;
    iget-wide v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 565
    :cond_0
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 818
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 819
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 820
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/kingsoft/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 823
    :cond_0
    return-void
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 839
    const/4 v1, 0x0

    .line 840
    .local v1, "holdWasReleased":Z
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 841
    .local v4, "mailboxId":J
    if-eqz p3, :cond_1

    .line 842
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 843
    .local v3, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 844
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .end local v3    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 850
    .local v0, "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 851
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const/4 v1, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    .restart local v3    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-wide v8, p3, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    goto :goto_0

    .line 855
    .end local v3    # "m":Lcom/android/emailcommon/provider/Mailbox;
    .end local v4    # "mailboxId":J
    :cond_3
    return v1
.end method

.method private releaseWakeLock(J)V
    .locals 12
    .param p1, "id"    # J

    .prologue
    .line 1015
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v4

    .line 1016
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1017
    .local v1, "lock":Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 1018
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1019
    .local v2, "startTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1020
    .local v0, "historicalTime":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 1021
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1023
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1026
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1029
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1031
    const-string/jumbo v3, "+WAKE LOCK RELEASED"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1036
    .end local v0    # "historicalTime":Ljava/lang/Long;
    .end local v2    # "startTime":Ljava/lang/Long;
    :cond_2
    :goto_0
    monitor-exit v4

    .line 1037
    return-void

    .line 1033
    .restart local v0    # "historicalTime":Ljava/lang/Long;
    .restart local v2    # "startTime":Ljava/lang/Long;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Release request for lock not held: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    .end local v0    # "historicalTime":Ljava/lang/Long;
    .end local v1    # "lock":Ljava/lang/Long;
    .end local v2    # "startTime":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 3
    .param p0, "mailboxId"    # J

    .prologue
    .line 2126
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2127
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 2128
    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    :cond_0
    return-void
.end method

.method private requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/kingsoft/emailsync/Request;)V
    .locals 7
    .param p1, "m"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "reason"    # I
    .param p3, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 1235
    const/4 v2, 0x4

    .line 1237
    .local v2, "syncStatus":I
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    if-eqz v3, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1241
    :try_start_0
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1242
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_5

    .line 1244
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 1245
    .local v1, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-nez v1, :cond_5

    .line 1246
    invoke-virtual {p0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v1

    .line 1247
    iget-boolean v3, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mIsValid:Z

    if-nez v3, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 1259
    .end local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1248
    .restart local v0    # "acct":Lcom/android/emailcommon/provider/Account;
    .restart local v1    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_2
    :try_start_1
    iput p2, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mSyncReason:I

    .line 1249
    if-eqz p3, :cond_3

    .line 1250
    invoke-virtual {v1, p3}, Lcom/kingsoft/emailsync/AbstractSyncService;->addRequest(Lcom/kingsoft/emailsync/Request;)V

    .line 1252
    :cond_3
    invoke-direct {p0, v1}, Lcom/kingsoft/emailsync/SyncManager;->startServiceThread(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1253
    const/4 v3, 0x6

    if-lt p2, v3, :cond_4

    .line 1254
    const/4 v2, 0x1

    .line 1256
    :cond_4
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {p0, v5, v6, v2}, Lcom/kingsoft/emailsync/SyncManager;->setMailboxSyncStatus(JI)V

    .line 1259
    .end local v1    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .param p0, "id"    # J
    .param p2, "millis"    # J

    .prologue
    .line 1110
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1111
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1112
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/emailsync/SyncManager;->setAlarm(JJ)V

    .line 1113
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 1115
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .param p0, "id"    # J

    .prologue
    .line 1102
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1103
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->acquireWakeLock(J)V

    .line 1105
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->clearAlarm(J)V

    .line 1107
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/kingsoft/emailsync/Request;)V
    .locals 18
    .param p0, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 1998
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1999
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v1, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return-void

    .line 2000
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingsoft/emailsync/Request;->mMessageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 2001
    .local v12, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_0

    .line 2002
    iget-wide v10, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2003
    .local v10, "mailboxId":J
    invoke-static {v1, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 2004
    .local v9, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_0

    .line 2008
    iget v2, v9, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2009
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sourceMessageKey"

    aput-object v5, v3, v4

    const-string/jumbo v4, "messageKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v16, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2013
    .local v13, "sourceId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_2

    .line 2014
    invoke-static {v1, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 2016
    .local v15, "sourceMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v15, :cond_2

    .line 2017
    iget-wide v10, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2021
    .end local v13    # "sourceId":J
    .end local v15    # "sourceMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v10, v11, v0}, Lcom/kingsoft/emailsync/SyncManager;->sendRequest(JLcom/kingsoft/emailsync/Request;)V

    goto :goto_0
.end method

.method public static sendRequest(JLcom/kingsoft/emailsync/Request;)V
    .locals 3
    .param p0, "mailboxId"    # J
    .param p2, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 2025
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2026
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v1, :cond_0

    .line 2034
    :goto_0
    return-void

    .line 2027
    :cond_0
    invoke-virtual {v1, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v0

    .line 2028
    .local v0, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-nez v0, :cond_1

    .line 2029
    const/4 v2, 0x5

    invoke-static {p0, p1, v2, p2}, Lcom/kingsoft/emailsync/SyncManager;->startManualSync(JILcom/kingsoft/emailsync/Request;)V

    .line 2030
    const-string/jumbo v2, "part request"

    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2032
    :cond_1
    invoke-virtual {v0, p2}, Lcom/kingsoft/emailsync/AbstractSyncService;->addRequest(Lcom/kingsoft/emailsync/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .param p0, "mailboxId"    # J
    .param p2, "reason"    # I

    .prologue
    .line 1949
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/kingsoft/emailsync/SyncManager;->serviceRequest(JJI)V

    .line 1950
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 6
    .param p0, "mailboxId"    # J
    .param p2, "ms"    # J
    .param p4, "reason"    # I

    .prologue
    .line 1965
    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1966
    .local v3, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v3, :cond_1

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    invoke-static {v3, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1968
    .local v1, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1970
    :try_start_0
    invoke-virtual {v3, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v2

    .line 1971
    .local v2, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v2, :cond_2

    .line 1972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1973
    const-string/jumbo v4, "service request"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1977
    .end local v2    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1975
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v4}, Lcom/kingsoft/emailsync/SyncManager;->startManualSync(JILcom/kingsoft/emailsync/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static serviceRequestImmediate(J)V
    .locals 5
    .param p0, "mailboxId"    # J

    .prologue
    .line 1983
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1984
    .local v2, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v2, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1985
    :cond_1
    invoke-virtual {v2, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v1

    .line 1986
    .local v1, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v1, :cond_0

    .line 1987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    .line 1988
    invoke-static {v2, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1989
    .local v0, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 1990
    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iput-object v3, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1991
    iput-object v0, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1992
    const-string/jumbo v3, "service request immediate"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "millis"    # J

    .prologue
    .line 1067
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v4

    .line 1068
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1069
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_0

    .line 1070
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/kingsoft/emailsync/MailboxAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1071
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "mailbox"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Box"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1073
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1074
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1077
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, p3

    invoke-virtual {v0, v3, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1080
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    monitor-exit v4

    .line 1081
    return-void

    .line 1080
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static setUserDebug(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    .line 348
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sFileLog:Z

    .line 349
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sFileLog:Z

    if-eqz v0, :cond_0

    .line 350
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    .line 352
    :cond_0
    const-string/jumbo v1, "Sync Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Logging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "User "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sFileLog:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "File"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    return-void

    :cond_1
    move v0, v2

    .line 347
    goto :goto_0

    :cond_2
    move v0, v2

    .line 348
    goto :goto_1

    .line 352
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .param p0, "id"    # J
    .param p2, "millis"    # J

    .prologue
    .line 1125
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1126
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 1127
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/emailsync/SyncManager;->setAlarm(JJ)V

    .line 1129
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 4

    .prologue
    .line 1590
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1592
    :try_start_0
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-eqz v1, :cond_5

    .line 1593
    const-string/jumbo v1, "Shutting down..."

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1596
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->stopServiceThreads()V

    .line 1599
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailsync/SyncManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1605
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    if-eqz v1, :cond_1

    .line 1606
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1607
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    .line 1609
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    if-eqz v1, :cond_2

    .line 1610
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1611
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    .line 1613
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    if-eqz v1, :cond_3

    .line 1614
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1615
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    .line 1617
    :cond_3
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->unregisterCalendarObservers()V

    .line 1620
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->clearAlarms()V

    .line 1623
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1624
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 1625
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1626
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1628
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1631
    const/4 v1, 0x0

    sput-object v1, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1632
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    .line 1633
    const-string/jumbo v1, "Goodbye"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1635
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1636
    return-void

    .line 1628
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1635
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static declared-synchronized shutdownConnectionManager()V
    .locals 4

    .prologue
    .line 930
    const-class v3, Lcom/kingsoft/emailsync/SyncManager;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "Shutting down ClientConnectionManagers"

    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 931
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    .line 932
    .local v1, "mgr":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 930
    .end local v1    # "mgr":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 934
    :cond_0
    :try_start_1
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sClientConnectionManagers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    monitor-exit v3

    return-void
.end method

.method public static startManualSync(JILcom/kingsoft/emailsync/Request;)V
    .locals 6
    .param p0, "mailboxId"    # J
    .param p2, "reason"    # I
    .param p3, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 2063
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2064
    .local v1, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v1, :cond_0

    .line 2085
    :goto_0
    return-void

    .line 2065
    :cond_0
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2066
    :try_start_0
    iget-object v3, v1, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 2067
    .local v2, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-nez v2, :cond_4

    .line 2068
    iget-object v3, v1, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 2069
    monitor-exit v4

    goto :goto_0

    .line 2084
    .end local v2    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2070
    .restart local v2    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_1
    if-eqz p2, :cond_2

    .line 2071
    :try_start_1
    iget-object v3, v1, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    :cond_2
    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 2074
    .local v0, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_3

    .line 2075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting sync for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 2076
    invoke-direct {v1, v0, p2, p3}, Lcom/kingsoft/emailsync/SyncManager;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/kingsoft/emailsync/Request;)V

    .line 2084
    .end local v0    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 2080
    :cond_4
    const/4 v3, 0x6

    if-lt p2, v3, :cond_3

    .line 2081
    iput p2, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startServiceThread(Lcom/kingsoft/emailsync/AbstractSyncService;)V
    .locals 8
    .param p1, "service"    # Lcom/kingsoft/emailsync/AbstractSyncService;

    .prologue
    .line 1221
    iget-object v1, p1, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1222
    .local v1, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1223
    :try_start_0
    iget-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1224
    .local v2, "mailboxName":Ljava/lang/String;
    iget-object v4, p1, Lcom/kingsoft/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v4, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 1225
    .local v0, "accountName":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1226
    .local v3, "thread":Ljava/lang/Thread;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting thread for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " in account "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1228
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-wide v6, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v6, v7}, Lcom/kingsoft/emailsync/SyncManager;->runAwake(J)V

    .line 1230
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    invoke-virtual {p0, v1}, Lcom/kingsoft/emailsync/SyncManager;->onStartService(Lcom/android/emailcommon/provider/Mailbox;)V

    .line 1232
    return-void

    .line 1230
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "mailboxName":Ljava/lang/String;
    .end local v3    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static stopAccountSyncs(J)V
    .locals 2
    .param p0, "acctId"    # J

    .prologue
    .line 938
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 939
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 940
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 942
    :cond_0
    return-void
.end method

.method public static stopManualSync(J)V
    .locals 5
    .param p0, "mailboxId"    # J

    .prologue
    .line 2089
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 2090
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v0, :cond_0

    .line 2100
    :goto_0
    return-void

    .line 2091
    :cond_0
    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2092
    :try_start_0
    iget-object v2, v0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 2093
    .local v1, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v1, :cond_1

    .line 2094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stopping sync for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {v1}, Lcom/kingsoft/emailsync/AbstractSyncService;->stop()V

    .line 2096
    iget-object v2, v1, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 2097
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 2099
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .param p0, "acctId"    # J

    .prologue
    .line 985
    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 986
    .local v0, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 987
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 988
    const-string/jumbo v1, "reload folder list"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 990
    :cond_0
    return-void
.end method

.method private stopServiceThreads()V
    .locals 8

    .prologue
    .line 1275
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1276
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v3, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1280
    .local v1, "mailboxId":Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mailboxId":Ljava/lang/Long;
    .end local v3    # "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1284
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1285
    .restart local v1    # "mailboxId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 1286
    .local v2, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v2, :cond_1

    .line 1287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Stopping "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v2}, Lcom/kingsoft/emailsync/AbstractSyncService;->stop()V

    .line 1289
    iget-object v4, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 1290
    iget-object v4, v2, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1293
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/kingsoft/emailsync/SyncManager;->releaseWakeLock(J)V

    goto :goto_1

    .line 1295
    .end local v1    # "mailboxId":Ljava/lang/Long;
    .end local v2    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 571
    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 572
    .local v3, "ssm":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v3, :cond_0

    .line 578
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v2, v3, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 574
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, v3, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    .line 575
    .local v1, "observer":Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 577
    .end local v1    # "observer":Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;
    :cond_1
    iget-object v4, v3, Lcom/kingsoft/emailsync/SyncManager;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private waitForConnectivity()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1299
    const/4 v2, 0x0

    .line 1300
    .local v2, "waiting":Z
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailsync/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1302
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :goto_0
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    if-nez v3, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1304
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 1305
    iput-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1307
    if-eqz v2, :cond_0

    .line 1309
    const/4 v3, 0x0

    invoke-virtual {p0, p0, v9, v3}, Lcom/kingsoft/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1311
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->logSyncHolds()V

    .line 1338
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-void

    .line 1316
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 1317
    const/4 v2, 0x1

    .line 1318
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->stopServiceThreads()V

    .line 1322
    :cond_2
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1323
    const-wide/16 v5, -0x1

    const-wide/32 v7, 0x93b48

    :try_start_0
    invoke-static {v5, v6, v7, v8}, Lcom/kingsoft/emailsync/SyncManager;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :try_start_1
    const-string/jumbo v3, "Connectivity lock..."

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1326
    const/4 v3, 0x1

    sput-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    .line 1327
    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1328
    const-string/jumbo v3, "Connectivity lock released..."

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1332
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    .line 1334
    :goto_1
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->runAwake(J)V

    .line 1335
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1329
    :catch_0
    move-exception v3

    .line 1332
    const/4 v3, 0x0

    :try_start_3
    sput-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    goto :goto_1

    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    sput-boolean v5, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "historical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2259
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2260
    .local v7, "now":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2261
    .local v5, "mailboxId":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 2262
    .local v11, "time":Ljava/lang/Long;
    if-eqz v11, :cond_0

    .line 2266
    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 2267
    .local v4, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2268
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v12, -0x1

    cmp-long v12, v5, v12

    if-nez v12, :cond_1

    .line 2269
    const-string/jumbo v12, "    SyncManager"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2278
    .local v2, "logTime":J
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " held for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x3e8

    div-long v13, v2, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2270
    .end local v2    # "logTime":J
    :cond_1
    if-nez v4, :cond_2

    .line 2271
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    Mailbox "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (deleted?)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2273
    :cond_2
    iget-wide v12, v4, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 2274
    .local v9, "protocol":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    Mailbox "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2277
    .end local v9    # "protocol":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v2, v7, v12

    goto/16 :goto_2

    .line 2281
    .end local v4    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v5    # "mailboxId":J
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "time":Ljava/lang/Long;
    :cond_4
    return-void
.end method


# virtual methods
.method public abstract collectAccounts(Landroid/content/Context;Lcom/kingsoft/emailsync/SyncManager$AccountList;)Lcom/kingsoft/emailsync/SyncManager$AccountList;
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceStartTime:J

    sub-long v0, v2, v4

    .line 2286
    .local v0, "uptime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SyncManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " up for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 2288
    const-string/jumbo v2, "  Holding WakeLock"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocks:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/kingsoft/emailsync/SyncManager;->writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V

    .line 2293
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2294
    const-string/jumbo v2, "  Historical times"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    iget-object v2, p0, Lcom/kingsoft/emailsync/SyncManager;->mWakeLocksHistory:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p0, p2, v2, v3}, Lcom/kingsoft/emailsync/SyncManager;->writeWakeLockTimes(Ljava/io/PrintWriter;Ljava/util/HashMap;Z)V

    .line 2297
    :cond_0
    return-void

    .line 2291
    :cond_1
    const-string/jumbo v2, "  Not holding WakeLock"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getAccountManagerType()Ljava/lang/String;
.end method

.method public abstract getAccountObserver(Landroid/os/Handler;)Lcom/kingsoft/emailsync/SyncManager$AccountObserver;
.end method

.method public abstract getAccountsSelector()Ljava/lang/String;
.end method

.method public abstract getCallbackProxy()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.end method

.method public getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;
    .locals 3
    .param p1, "mailboxId"    # J

    .prologue
    .line 1656
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/AbstractSyncService;

    monitor-exit v1

    return-object v0

    .line 1658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/emailsync/AbstractSyncService;
.end method

.method public abstract getServiceIntent()Landroid/content/Intent;
.end method

.method maybeStartSyncServiceManagerThread()V
    .locals 4

    .prologue
    .line 1472
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1473
    :cond_0
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    .line 1475
    .local v0, "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :try_start_0
    invoke-virtual {p0, p0, v0}, Lcom/kingsoft/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/kingsoft/emailsync/SyncManager$AccountList;)Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    invoke-virtual {v0}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1481
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    if-nez v2, :cond_2

    const-string/jumbo v2, "Starting thread..."

    :goto_0
    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1482
    new-instance v2, Ljava/lang/Thread;

    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    .line 1483
    sput-object p0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 1484
    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1487
    .end local v0    # "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :cond_1
    :goto_1
    return-void

    .line 1476
    .restart local v0    # "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :catch_0
    move-exception v1

    .line 1478
    .local v1, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    goto :goto_1

    .line 1481
    .end local v1    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :cond_2
    const-string/jumbo v2, "Restarting thread..."

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    .line 1366
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 1367
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$3;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1382
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1452
    const-string/jumbo v0, "!!! onDestroy"

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1454
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$5;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1467
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!!! onStartCommand, startingUp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", running = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1389
    sget-boolean v0, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-nez v0, :cond_0

    .line 1390
    sput-boolean v1, Lcom/kingsoft/emailsync/SyncManager;->sStartingUp:Z

    .line 1391
    new-instance v0, Lcom/kingsoft/emailsync/SyncManager$4;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailsync/SyncManager$4;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1437
    :cond_0
    return v1

    .line 1387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
.end method

.method public abstract onStartup()V
.end method

.method public releaseMailbox(J)V
    .locals 2
    .param p1, "mailboxId"    # J

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/emailsync/SyncManager;->releaseWakeLock(J)V

    .line 1647
    return-void
.end method

.method public releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 833
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/emailsync/SyncManager;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v0

    .line 834
    .local v0, "holdWasReleased":Z
    const-string/jumbo v1, "security release"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    .line 835
    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1506
    sput-boolean v4, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    .line 1507
    const-string/jumbo v4, "Service thread running"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 1509
    invoke-static {p0}, Lcom/kingsoft/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 1513
    sget-object v5, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1514
    :try_start_0
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    if-eqz v4, :cond_0

    .line 1515
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1520
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Lcom/kingsoft/emailsync/SyncManager;->getAccountObserver(Landroid/os/Handler;)Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    .line 1521
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kingsoft/emailsync/SyncManager;->mAccountObserver:Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1522
    new-instance v4, Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;-><init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    .line 1523
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/kingsoft/emailsync/SyncManager;->mMailboxObserver:Lcom/kingsoft/emailsync/SyncManager$MailboxObserver;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1524
    new-instance v4, Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;-><init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    .line 1525
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kingsoft/emailsync/SyncManager;->mSyncedMessageObserver:Lcom/kingsoft/emailsync/SyncManager$SyncedMessageObserver;

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1528
    new-instance v4, Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    invoke-direct {v4, p0}, Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    .line 1529
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mConnectivityReceiver:Lcom/kingsoft/emailsync/SyncManager$ConnectivityReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v6}, Lcom/kingsoft/emailsync/SyncManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1532
    invoke-virtual {p0}, Lcom/kingsoft/emailsync/SyncManager;->onStartup()V

    .line 1534
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1538
    :goto_0
    :try_start_1
    sget-boolean v4, Lcom/kingsoft/emailsync/SyncManager;->sStop:Z

    if-nez v4, :cond_8

    .line 1539
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/kingsoft/emailsync/SyncManager;->runAwake(J)V

    .line 1540
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->waitForConnectivity()V

    .line 1541
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    .line 1542
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->checkMailboxes()J
    :try_end_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-wide v1

    .line 1544
    .local v1, "nextWait":J
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1545
    :try_start_3
    iget-boolean v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    if-nez v4, :cond_4

    .line 1546
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 1547
    const-string/jumbo v4, "Negative wait? Setting to 1s"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1548
    const-wide/16 v1, 0x3e8

    .line 1550
    :cond_1
    const-wide/16 v4, 0x2710

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 1551
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Next awake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/emailsync/SyncManager;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1554
    :cond_2
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/emailsync/SyncManager;->runAsleep(JJ)V

    .line 1556
    :cond_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1558
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1563
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1564
    :try_start_5
    iget-boolean v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    if-eqz v4, :cond_5

    .line 1566
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    .line 1568
    :cond_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1572
    .end local v1    # "nextWait":J
    :catch_0
    move-exception v3

    .line 1577
    .local v3, "pue":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_7
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "EmailProvider unavailable; shutting down"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1579
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/kingsoft/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1585
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->shutdown()V

    .line 1587
    .end local v3    # "pue":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_1
    return-void

    .line 1534
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4

    .line 1558
    .restart local v1    # "nextWait":J
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1559
    :catch_1
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_b
    const-string/jumbo v4, "SyncServiceManager interrupted"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1563
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1564
    :try_start_d
    iget-boolean v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    if-eqz v4, :cond_6

    .line 1566
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    .line 1568
    :cond_6
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v4
    :try_end_e
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1580
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "nextWait":J
    :catch_2
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_f
    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RuntimeException"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1583
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1585
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_4
    move-exception v4

    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->shutdown()V

    throw v4

    .line 1563
    .restart local v1    # "nextWait":J
    :catchall_5
    move-exception v4

    :try_start_10
    monitor-enter p0
    :try_end_10
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1564
    :try_start_11
    iget-boolean v5, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    if-eqz v5, :cond_7

    .line 1566
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/kingsoft/emailsync/SyncManager;->mKicked:Z

    .line 1568
    :cond_7
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v4
    :try_end_12
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :catchall_6
    move-exception v4

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v4

    .line 1571
    .end local v1    # "nextWait":J
    :cond_8
    const-string/jumbo v4, "Shutdown requested"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1585
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;->shutdown()V

    goto :goto_1
.end method

.method protected abstract runAccountReconcilerSync(Landroid/content/Context;)V
.end method

.method public setMailboxLastSyncResult(JI)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "result"    # I

    .prologue
    const/4 v3, 0x0

    .line 1269
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1270
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "uiLastSyncResult"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1272
    return-void
.end method

.method public setMailboxSyncStatus(JI)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 1263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1264
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "uiSyncStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1265
    iget-object v1, p0, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method public stopAccountSyncs(JZ)V
    .locals 10
    .param p1, "acctId"    # J
    .param p3, "includeAccountMailbox"    # Z

    .prologue
    .line 945
    sget-object v7, Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 946
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v1, "deletedBoxes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 948
    .local v3, "mid":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 949
    .local v0, "box":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 950
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    .line 951
    if-nez p3, :cond_1

    iget v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v6, v8, :cond_1

    .line 953
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 954
    .local v4, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v4, :cond_0

    .line 955
    invoke-virtual {v4}, Lcom/kingsoft/emailsync/AbstractSyncService;->stop()V

    goto :goto_0

    .line 974
    .end local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .end local v1    # "deletedBoxes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mid":Ljava/lang/Long;
    .end local v4    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 959
    .restart local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v1    # "deletedBoxes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mid":Ljava/lang/Long;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 960
    .restart local v4    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v4, :cond_2

    .line 961
    invoke-virtual {v4}, Lcom/kingsoft/emailsync/AbstractSyncService;->stop()V

    .line 962
    iget-object v5, v4, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 963
    .local v5, "t":Ljava/lang/Thread;
    if-eqz v5, :cond_2

    .line 964
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 967
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    .end local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .end local v3    # "mid":Ljava/lang/Long;
    .end local v4    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 972
    .restart local v3    # "mid":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    goto :goto_1

    .line 974
    .end local v3    # "mid":Ljava/lang/Long;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    return-void
.end method
