.class public Lcom/kingsoft/email/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/NotificationController$NotificationThread;,
        Lcom/kingsoft/email/NotificationController$AccountContentObserver;,
        Lcom/kingsoft/email/NotificationController$MessageContentObserver;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_CONVERSATION:Ljava/lang/String; = "conversationUri"

.field public static final EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_DELAY:J = 0x3a98L

.field private static final NOTIFICATION_DELAYED_MESSAGE:I = 0x0

.field private static final NOTIFICATION_ID_ATTACHMENT_WARNING:I = 0x3

.field private static final NOTIFICATION_ID_BASE_LOGIN_WARNING:I = 0x20000000

.field private static final NOTIFICATION_ID_BASE_MASK:I = -0x10000000

.field private static final NOTIFICATION_ID_BASE_SECURITY_CHANGED:I = 0x40000000

.field private static final NOTIFICATION_ID_BASE_SECURITY_NEEDED:I = 0x30000000

.field private static final NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I = 0x2

.field private static final NOTIFICATION_ID_PASSWORD_EXPIRED:I = 0x5

.field private static final NOTIFICATION_ID_PASSWORD_EXPIRING:I = 0x4

.field private static sInstance:Lcom/kingsoft/email/NotificationController;

.field private static final sNotificationDelayedMessageLock:Ljava/lang/Object;

.field private static sNotificationDelayedMessagePending:Z

.field private static sNotificationHandler:Landroid/os/Handler;

.field private static sNotificationThread:Lcom/kingsoft/email/NotificationController$NotificationThread;

.field private static final sRefreshAccountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sRefreshAllNeeded:Z


# instance fields
.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mClock:Lcom/kingsoft/mail/utils/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifiedMsgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kingsoft/email/NotificationController;->sRefreshAccountSet:Ljava/util/HashSet;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessageLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/utils/Clock;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/kingsoft/mail/utils/Clock;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotifiedMsgMap:Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 108
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 110
    iput-object p2, p0, Lcom/kingsoft/email/NotificationController;->mClock:Lcom/kingsoft/mail/utils/Clock;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/NotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/NotificationController;J)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;
    .param p1, "x1"    # J

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/NotificationController;->registerMessageNotification(J)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/NotificationController;->refreshNotificationsForAccountInternal(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kingsoft/email/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/NotificationController;->refreshNotificationsForAccount(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1300()Lcom/kingsoft/email/NotificationController;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/email/NotificationController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/NotificationController;J)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;
    .param p1, "x1"    # J

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/NotificationController;->unregisterMessageNotification(J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->refreshAllNotifications(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/NotificationController;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kingsoft/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/NotificationController;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kingsoft/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/kingsoft/email/NotificationController;->sRefreshAllNeeded:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/kingsoft/email/NotificationController;->sRefreshAllNeeded:Z

    return p0
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->refreshAllNotificationsInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sRefreshAccountSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public static cancelNotifications(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 629
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v3, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    .line 631
    .local v2, "serviceInfo":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-nez v2, :cond_0

    .line 632
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Can\'t cancel notification for missing account %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v3, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/emailcommon/provider/Account;->getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 638
    .local v0, "notifAccount":Landroid/accounts/Account;
    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/NotificationUtils;->clearAccountNotifications(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 640
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v3

    iget-object v1, v3, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 642
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const-wide/32 v3, 0x20000000

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 643
    const-wide/32 v3, 0x30000000

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 644
    const-wide/32 v3, 0x40000000

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private createBaseAccountNotificationBuilder(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "contentText"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p8, "number"    # Ljava/lang/Integer;
    .param p9, "enableAudio"    # Z
    .param p10, "ongoing"    # Z

    .prologue
    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, "pending":Landroid/app/PendingIntent;
    if-eqz p6, :cond_0

    .line 154
    iget-object v4, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, p6, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 159
    :cond_0
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    if-nez p8, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020202

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/NotificationController;->mClock:Lcom/kingsoft/mail/utils/Clock;

    invoke-virtual {v5}, Lcom/kingsoft/mail/utils/Clock;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 170
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p9, :cond_1

    .line 171
    iget-object v4, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 172
    .local v1, "account":Lcom/android/emailcommon/provider/Account;
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/email/NotificationController;->setupSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/emailcommon/provider/Account;)V

    .line 175
    .end local v1    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    return-object v2

    .line 159
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_2
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method private static declared-synchronized ensureHandlerExists()V
    .locals 4

    .prologue
    .line 244
    const-class v1, Lcom/kingsoft/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationThread:Lcom/kingsoft/email/NotificationController$NotificationThread;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/kingsoft/email/NotificationController$NotificationThread;

    invoke-direct {v0}, Lcom/kingsoft/email/NotificationController$NotificationThread;-><init>()V

    sput-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationThread:Lcom/kingsoft/email/NotificationController$NotificationThread;

    .line 246
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/kingsoft/email/NotificationController;->sNotificationThread:Lcom/kingsoft/email/NotificationController$NotificationThread;

    invoke-virtual {v2}, Lcom/kingsoft/email/NotificationController$NotificationThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/email/NotificationController$2;

    invoke-direct {v3}, Lcom/kingsoft/email/NotificationController$2;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    monitor-exit v1

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-class v1, Lcom/kingsoft/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/kingsoft/email/NotificationController;

    sget-object v2, Lcom/kingsoft/mail/utils/Clock;->INSTANCE:Lcom/kingsoft/mail/utils/Clock;

    invoke-direct {v0, p0, v2}, Lcom/kingsoft/email/NotificationController;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/utils/Clock;)V

    sput-object v0, Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;

    .line 118
    :cond_0
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sInstance:Lcom/kingsoft/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getLoginFailedNotificationId(J)I
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 446
    const/high16 v0, 0x20000000

    long-to-int v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private static needsOngoingNotification(I)Z
    .locals 2
    .param p0, "notificationId"    # I

    .prologue
    .line 129
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    const/high16 v1, 0x30000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static refreshAllNotifications(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    sget-object v1, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    sget-boolean v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z

    if-eqz v0, :cond_0

    .line 748
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/NotificationController;->sRefreshAllNeeded:Z

    .line 757
    :goto_0
    monitor-exit v1

    .line 758
    return-void

    .line 750
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->ensureHandlerExists()V

    .line 751
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    sget-object v2, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z

    .line 755
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->refreshAllNotificationsInternal(Landroid/content/Context;)V

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static refreshAllNotificationsInternal(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 761
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/kingsoft/mail/utils/NotificationUtils;->resendNotifications(Landroid/content/Context;ZLandroid/net/Uri;Lcom/kingsoft/mail/utils/FolderUri;)V

    .line 762
    return-void
.end method

.method private static refreshNotificationsForAccount(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 649
    sget-object v1, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    sget-boolean v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z

    if-eqz v0, :cond_0

    .line 651
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sRefreshAccountSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    :goto_0
    monitor-exit v1

    .line 661
    return-void

    .line 653
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->ensureHandlerExists()V

    .line 654
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    sget-object v2, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/NotificationController;->sNotificationDelayedMessagePending:Z

    .line 658
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/NotificationController;->refreshNotificationsForAccountInternal(Landroid/content/Context;J)V

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static refreshNotificationsForAccountInternal(Landroid/content/Context;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 665
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 667
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "uiaccount"

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 671
    .local v10, "accountCursor":Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 672
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Null account cursor for account id %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const/4 v9, 0x0

    .line 678
    .local v9, "account":Lcom/kingsoft/mail/providers/Account;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    new-instance v9, Lcom/kingsoft/mail/providers/Account;

    .end local v9    # "account":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v9, v10}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    .restart local v9    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 685
    if-nez v9, :cond_3

    .line 686
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Tried to create a notification for a missing account %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 682
    .end local v9    # "account":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 691
    .restart local v9    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_3
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_NOTIFICATION_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 694
    .local v13, "mailboxCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 696
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 697
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 699
    .local v14, "mailboxId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-eqz v3, :cond_4

    .line 700
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 701
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_4

    iget v3, v12, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eqz v3, :cond_5

    iget v3, v12, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-eqz v3, :cond_4

    .line 704
    :cond_5
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 706
    .local v16, "unreadCount":I
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 709
    .local v17, "unseenCount":I
    const-string/jumbo v3, "uifolder"

    invoke-static {v3, v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 713
    .local v11, "folderCursor":Landroid/database/Cursor;
    if-nez v11, :cond_6

    .line 714
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Null folder cursor for account %d, mailbox %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 740
    .end local v11    # "folderCursor":Landroid/database/Cursor;
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v14    # "mailboxId":J
    .end local v16    # "unreadCount":I
    .end local v17    # "unseenCount":I
    :catchall_1
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 719
    .restart local v11    # "folderCursor":Landroid/database/Cursor;
    .restart local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14    # "mailboxId":J
    .restart local v16    # "unreadCount":I
    .restart local v17    # "unseenCount":I
    :cond_6
    const/4 v7, 0x0

    .line 721
    .local v7, "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 722
    new-instance v7, Lcom/kingsoft/mail/providers/Folder;

    .end local v7    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v7, v11}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 729
    .restart local v7    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 736
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v16

    move/from16 v5, v17

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/kingsoft/mail/utils/NotificationUtils;->setNewEmailIndicator(Landroid/content/Context;IILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 724
    :cond_7
    :try_start_4
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Empty folder cursor for account %d, mailbox %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 729
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v7    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :catchall_2
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 740
    .end local v11    # "folderCursor":Landroid/database/Cursor;
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v14    # "mailboxId":J
    .end local v16    # "unreadCount":I
    .end local v17    # "unseenCount":I
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private registerMessageNotification(J)V
    .locals 11
    .param p1, "accountId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/high16 v1, 0x1000000000000000L

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 283
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 288
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 290
    .local v7, "id":J
    invoke-direct {p0, v7, v8}, Lcom/kingsoft/email/NotificationController;->registerMessageNotification(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 293
    .end local v7    # "id":J
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/ContentObserver;

    .line 298
    .local v9, "obs":Landroid/database/ContentObserver;
    if-nez v9, :cond_1

    .line 299
    sget-object v1, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering for notifications for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    new-instance v10, Lcom/kingsoft/email/NotificationController$MessageContentObserver;

    sget-object v1, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v2, p1, p2}, Lcom/kingsoft/email/NotificationController$MessageContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;J)V

    .line 302
    .local v10, "observer":Landroid/database/ContentObserver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {v10, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_1
.end method

.method private setupSoundAndVibration(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/emailcommon/provider/Account;)V
    .locals 15
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 342
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "ringtoneUri":Ljava/lang/String;
    const/4 v14, 0x0

    .line 346
    .local v14, "vibrate":Z
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "uiaccount"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .local v7, "accountCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 350
    .local v13, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz v7, :cond_1

    .line 352
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    new-instance v13, Lcom/kingsoft/mail/providers/Account;

    .end local v13    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    invoke-direct {v13, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .restart local v13    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    if-eqz v13, :cond_6

    .line 361
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v13, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 365
    .local v10, "folderCursor":Landroid/database/Cursor;
    if-nez v10, :cond_3

    .line 368
    sget-object v1, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null folder cursor for mailbox %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v13, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    .end local v10    # "folderCursor":Landroid/database/Cursor;
    :goto_0
    const/4 v8, 0x4

    .line 396
    .local v8, "defaults":I
    if-eqz v14, :cond_2

    .line 397
    or-int/lit8 v8, v8, 0x2

    .line 400
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 402
    return-void

    .line 356
    .end local v8    # "defaults":I
    .end local v13    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 371
    .restart local v10    # "folderCursor":Landroid/database/Cursor;
    .restart local v13    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_3
    const/4 v9, 0x0

    .line 373
    .local v9, "folder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    new-instance v9, Lcom/kingsoft/mail/providers/Folder;

    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v9, v10}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 380
    if-eqz v9, :cond_5

    .line 381
    new-instance v11, Lcom/kingsoft/mail/preferences/FolderPreferences;

    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v11, v1, v2, v9, v3}, Lcom/kingsoft/mail/preferences/FolderPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 384
    .local v11, "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    invoke-virtual {v11}, Lcom/kingsoft/mail/preferences/FolderPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v12

    .line 385
    invoke-virtual {v11}, Lcom/kingsoft/mail/preferences/FolderPreferences;->isNotificationVibrateEnabled()Z

    move-result v14

    .line 386
    goto :goto_0

    .line 377
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v11    # "folderPreferences":Lcom/kingsoft/mail/preferences/FolderPreferences;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 387
    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_5
    sget-object v1, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null folder for mailbox %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v13, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 392
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v10    # "folderCursor":Landroid/database/Cursor;
    :cond_6
    sget-object v1, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null uiAccount for account id %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 400
    .restart local v8    # "defaults":I
    :cond_7
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method private showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "contentText"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "notificationId"    # I

    .prologue
    .line 190
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {p7 .. p7}, Lcom/kingsoft/email/NotificationController;->needsOngoingNotification(I)Z

    move-result v11

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/kingsoft/email/NotificationController;->createBaseAccountNotificationBuilder(JLjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 193
    .local v12, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    return-void
.end method

.method private unregisterMessageNotification(J)V
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v3, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 319
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-wide/high16 v3, 0x1000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 320
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unregistering notifications for all accounts"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    iget-object v3, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 323
    .local v1, "observer":Landroid/database/ContentObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 325
    .end local v1    # "observer":Landroid/database/ContentObserver;
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 333
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 327
    :cond_2
    sget-object v3, Lcom/kingsoft/email/NotificationController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unregistering notifications for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    iget-object v3, p0, Lcom/kingsoft/email/NotificationController;->mNotificationMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 329
    .restart local v1    # "observer":Landroid/database/ContentObserver;
    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 509
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, p2}, Lcom/kingsoft/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 510
    return-void
.end method

.method public cancelPasswordExpirationNotifications()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 556
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 557
    return-void
.end method

.method public cancelSecurityNeededNotification()V
    .locals 1

    .prologue
    .line 605
    new-instance v0, Lcom/kingsoft/email/NotificationController$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/NotificationController$3;-><init>(Lcom/kingsoft/email/NotificationController;)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 622
    return-void
.end method

.method public getNotifiedMsgMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mNotifiedMsgMap:Ljava/util/Map;

    return-object v0
.end method

.method public showAttachmentDownloadFailedNotification(Ljava/lang/String;J)V
    .locals 8
    .param p1, "attachmentFileName"    # Ljava/lang/String;
    .param p2, "accountKey"    # J

    .prologue
    const v1, 0x7f1000d9

    .line 431
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x3

    move-object v0, p0

    move-wide v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 440
    return-void
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .param p1, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    .line 413
    .local v9, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v9, :cond_0

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 415
    .local v8, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    iget-wide v1, v8, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f1001dd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1001de

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "e"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 472
    .local v9, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v9, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 475
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_0

    .line 477
    if-eqz p3, :cond_2

    .line 478
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v1, v0, v9}, Lcom/kingsoft/special/NetEasyHandle;->dealWithErr(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/Account;)V

    .line 481
    :cond_2
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/special/NetEasyHandle;->getInstance(Ljava/lang/String;)Lcom/kingsoft/special/NetEasyHandle;

    move-result-object v10

    .line 483
    .local v10, "handle":Lcom/kingsoft/special/NetEasyHandle;
    const/4 v1, 0x2

    invoke-virtual {v10}, Lcom/kingsoft/special/NetEasyHandle;->getTimes()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/special/NetEasyHandle;->fromNetEasy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    invoke-virtual {v10}, Lcom/kingsoft/special/NetEasyHandle;->setFirst()V

    goto :goto_0

    .line 486
    :cond_3
    invoke-static {}, Lcom/kingsoft/email/provider/Utilities;->isAppOnForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 487
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v1, v9, v0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->actionCPWA(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 488
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 489
    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 492
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/special/NetEasyHandle;->removeBean(Ljava/lang/String;)V

    .line 494
    iget-wide v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f100215

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v9, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f100216

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v1, v9, v0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->actionMailList(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {p1, p2}, Lcom/kingsoft/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public showPasswordExpiredNotification(J)V
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    .line 539
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 540
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v8, :cond_0

    .line 549
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 544
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1002bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "ticker":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "title":Ljava/lang/String;
    const/4 v7, 0x5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showPasswordExpiringNotification(J)V
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    const/4 v7, 0x0

    .line 519
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 520
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v8, :cond_0

    .line 530
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v7}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 524
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "ticker":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, "title":Ljava/lang/String;
    const/4 v7, 0x4

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showSecurityChangedNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 8
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v6, 0x0

    .line 578
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5, v6, v6}, Lcom/kingsoft/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 579
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "accountName":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f100366

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "ticker":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f100368

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "title":Ljava/lang/String;
    return-void
.end method

.method public showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v7, 0x1

    .line 564
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1, v2, v7}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v6

    .line 565
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f100367

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "ticker":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "title":Ljava/lang/String;
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/32 v7, 0x30000000

    iget-wide v9, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    add-long/2addr v7, v9

    long-to-int v7, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 571
    return-void
.end method

.method public showSecurityUnsupportedNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 11
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1, v2, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 593
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f10036b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "ticker":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f100369

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "title":Ljava/lang/String;
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/32 v7, 0x30000000

    iget-wide v9, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    add-long/2addr v7, v9

    long-to-int v7, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/email/NotificationController;->showNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 599
    return-void
.end method

.method public watchForMessages()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/kingsoft/email/NotificationController;->ensureHandlerExists()V

    .line 206
    sget-object v0, Lcom/kingsoft/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/email/NotificationController$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/NotificationController$1;-><init>(Lcom/kingsoft/email/NotificationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method
