.class public Lcom/kingsoft/exchange/ExchangeService;
.super Lcom/kingsoft/emailsync/SyncManager;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_IN:Ljava/lang/String; = "accountKey in ("

.field private static final EAS_12_CAPABILITIES:I = 0x4461

.field private static final EAS_2_CAPABILITIES:I = 0x4401

.field public static final STATUS_CHANGE_COUNT_OFFSET:I = 0x5

.field public static final STATUS_EXIT_CHAR:I = 0x3

.field public static final STATUS_TYPE_CHAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final WHERE_CALENDAR_ID:Ljava/lang/String; = "calendar_id=?"

.field private static final WHERE_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey=?"

.field private static final WHERE_PUSH_OR_PING_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mEasAccountSelector:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/ExchangeService;->mIntent:Landroid/content/Intent;

    .line 112
    new-instance v0, Lcom/kingsoft/exchange/ExchangeService$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/ExchangeService$1;-><init>(Lcom/kingsoft/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 385
    return-void
.end method

.method static synthetic access$000()Lcom/kingsoft/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/kingsoft/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method static synthetic access$300()Lcom/kingsoft/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method static synthetic access$400()Lcom/kingsoft/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method static synthetic access$500()Lcom/kingsoft/emailsync/SyncManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/kingsoft/exchange/ExchangeService;->eventsAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 531
    const-string/jumbo v0, "Exchange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static checkExchangeServiceServiceRunning()V
    .locals 3

    .prologue
    .line 649
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 650
    .local v0, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    sget-object v1, Lcom/kingsoft/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 652
    const-string/jumbo v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 653
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/exchange/ExchangeService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailsync/SyncManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static eventsAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 366
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

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 545
    sget-object v1, Lcom/kingsoft/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 549
    :try_start_0
    invoke-static {p0}, Lcom/kingsoft/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received deviceId from Email app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    :goto_0
    sget-object v1, Lcom/kingsoft/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v0, "Exchange"

    invoke-static {v0, p0}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    return-void
.end method

.method public static onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
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

.method private static onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 361
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "force"    # Z

    .prologue
    .line 568
    sget-object v9, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 569
    .local v9, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v9, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x1

    const-wide/16 v16, 0x44

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 575
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 577
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 578
    sget-object v1, Lcom/kingsoft/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 579
    :try_start_1
    new-instance v12, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 580
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v12, v7}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 581
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 582
    .local v6, "acct":Lcom/android/emailcommon/provider/Account;
    if-nez v6, :cond_2

    .line 583
    invoke-static/range {p1 .. p2}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 584
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 586
    :cond_2
    :try_start_2
    iget-object v14, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 588
    .local v14, "syncKey":Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v14, :cond_3

    const-string/jumbo v0, "0"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 590
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 622
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 594
    :cond_4
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "syncInterval"

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    const-string/jumbo v0, "Set push/ping boxes to push/hold"

    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 601
    iget-wide v10, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 602
    .local v10, "id":J
    iget-object v0, v9, Lcom/kingsoft/emailsync/SyncManager;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 604
    .local v13, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v13, :cond_6

    .line 605
    invoke-virtual {v13}, Lcom/kingsoft/emailsync/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    :try_start_4
    invoke-virtual {v13}, Lcom/kingsoft/emailsync/AbstractSyncService;->stop()V

    .line 608
    iget-object v15, v13, Lcom/kingsoft/emailsync/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 609
    .local v15, "thread":Ljava/lang/Thread;
    if-eqz v15, :cond_5

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (Stopped)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 613
    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    :try_start_5
    invoke-virtual {v9, v10, v11}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    .line 617
    const-string/jumbo v0, "reload folder list"

    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 619
    .end local v15    # "thread":Ljava/lang/Thread;
    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 622
    .end local v6    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "id":J
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    .end local v14    # "syncKey":Ljava/lang/String;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 613
    .restart local v6    # "acct":Lcom/android/emailcommon/provider/Account;
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "id":J
    .restart local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v13    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    .restart local v14    # "syncKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 619
    .end local v6    # "acct":Lcom/android/emailcommon/provider/Account;
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "id":J
    .end local v12    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    .end local v14    # "syncKey":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 622
    :catchall_2
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static reloadFolderListFailed(J)V
    .locals 0
    .param p0, "accountId"    # J

    .prologue
    .line 565
    return-void
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .param p0, "acctId"    # J

    .prologue
    .line 636
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    .line 637
    .local v0, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-eqz v0, :cond_0

    .line 638
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 639
    const-string/jumbo v1, "reload folder list"

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 376
    sget-object v0, Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    check-cast v0, Lcom/kingsoft/exchange/ExchangeService;

    .line 377
    .local v0, "exchangeService":Lcom/kingsoft/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v3, v0, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 379
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v4, v0, Lcom/kingsoft/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;

    .line 380
    .local v2, "observer":Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 382
    .end local v2    # "observer":Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;
    :cond_1
    iget-object v4, v0, Lcom/kingsoft/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public collectAccounts(Landroid/content/Context;Lcom/kingsoft/emailsync/SyncManager$AccountList;)Lcom/kingsoft/emailsync/SyncManager$AccountList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accounts"    # Lcom/kingsoft/emailsync/SyncManager$AccountList;

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 323
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 325
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v8, "cv":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 328
    .local v10, "hostAuthId":J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_1

    .line 329
    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 330
    .local v9, "ha":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string/jumbo v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 332
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 334
    iput-object v9, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 335
    invoke-virtual {p2, v6}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 337
    iget-wide v1, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 339
    .local v12, "inbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_1

    iget v1, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 341
    const-string/jumbo v1, "flags"

    iget v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "ha":Lcom/android/emailcommon/provider/HostAuth;
    .end local v10    # "hostAuthId":J
    .end local v12    # "inbox":Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8    # "cv":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 353
    return-object p2
.end method

.method public getAccountManagerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    const-string/jumbo v0, "com.android.exchange"

    return-object v0
.end method

.method public getAccountObserver(Landroid/os/Handler;)Lcom/kingsoft/emailsync/SyncManager$AccountObserver;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 660
    new-instance v0, Lcom/kingsoft/exchange/ExchangeService$2;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/exchange/ExchangeService$2;-><init>(Lcom/kingsoft/exchange/ExchangeService;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getAccountsSelector()Ljava/lang/String;
    .locals 8

    .prologue
    .line 704
    iget-object v4, p0, Lcom/kingsoft/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 707
    .local v1, "first":Z
    iget-object v5, p0, Lcom/kingsoft/exchange/ExchangeService;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    monitor-enter v5

    .line 708
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/exchange/ExchangeService;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v4}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 709
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 710
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 716
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 712
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 716
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    .line 720
    .end local v1    # "first":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/exchange/ExchangeService;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getCallbackProxy()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/emailsync/AbstractSyncService;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "m"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 692
    iget v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 698
    new-instance v0, Lcom/kingsoft/exchange/EasSyncService;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    :goto_0
    return-object v0

    .line 694
    :sswitch_0
    new-instance v0, Lcom/kingsoft/exchange/EasAccountService;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/exchange/EasAccountService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 696
    :sswitch_1
    new-instance v0, Lcom/kingsoft/exchange/EasOutboxService;

    invoke-direct {v0, p1, p2}, Lcom/kingsoft/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 692
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/kingsoft/exchange/ExchangeService;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/kingsoft/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method

.method public onStartService(Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .param p1, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 746
    iget v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/16 v5, 0x44

    invoke-static {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 750
    .local v0, "accountMailboxId":J
    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->getRunningService(J)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v2

    .line 751
    .local v2, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    if-eqz v2, :cond_0

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stopping ping due to sync of mailbox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 754
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/kingsoft/exchange/ExchangeService$3;

    invoke-direct {v4, p0, v2}, Lcom/kingsoft/exchange/ExchangeService$3;-><init>(Lcom/kingsoft/exchange/ExchangeService;Lcom/kingsoft/emailsync/AbstractSyncService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onStartup()V
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/kingsoft/exchange/ExchangeService;->getAccountsSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public runAccountReconcilerSync(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 511
    const-string/jumbo v0, "Reconciling accounts..."

    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 512
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "eas"

    const-string/jumbo v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method
