.class public Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;
.super Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ACCOUNT_AND_TYPE_CALENDAR:Ljava/lang/String; = "accountKey=? AND type=65"

.field private static final DIRTY_IN_ACCOUNT:Ljava/lang/String; = "dirty=1 AND account_name=?"

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/AbstractSyncAdapterService;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 81
    const-string/jumbo v1, "__noop__"

    invoke-virtual {p2, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "No-op sync requested, done"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-boolean v7, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    .line 88
    .local v7, "logging":Z
    const-string/jumbo v1, "upload"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    const-string/jumbo v3, "dirty=1 AND account_name=?"

    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 92
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Null changes cursor in CalendarSyncAdapterService"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 96
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-static {p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxIdsFromBundle(Landroid/os/Bundle;)[J

    move-result-object v9

    .line 110
    .local v9, "mailboxIds":[J
    if-nez v9, :cond_5

    .line 112
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v8, "mailExtras":Landroid/os/Bundle;
    const-string/jumbo v1, "__mailboxType__"

    const/16 v2, 0x41

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    :goto_1
    const-string/jumbo v1, "force"

    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string/jumbo v1, "do_not_retry"

    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo v1, "expedited"

    invoke-virtual {p2, v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string/jumbo v1, "expedited"

    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    :cond_4
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p1, v1, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    .end local v8    # "mailExtras":Landroid/os/Bundle;
    .end local v9    # "mailboxIds":[J
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 116
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "mailboxIds":[J
    :cond_5
    invoke-static {v9}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle([J)Landroid/os/Bundle;

    move-result-object v8

    .restart local v8    # "mailExtras":Landroid/os/Bundle;
    goto :goto_1
.end method


# virtual methods
.method protected getSyncAdapter()Landroid/content/AbstractThreadedSyncAdapter;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    .line 51
    :cond_0
    sget-object v0, Lcom/kingsoft/exchange/service/CalendarSyncAdapterService;->sSyncAdapter:Landroid/content/AbstractThreadedSyncAdapter;

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
