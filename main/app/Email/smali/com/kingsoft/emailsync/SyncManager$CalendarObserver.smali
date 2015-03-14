.class Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field final mAccountId:J

.field final mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 609
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    .line 610
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 611
    iget-wide v0, p3, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountId:J

    .line 612
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    .line 614
    iget-object v0, p1, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v7

    const-string/jumbo v3, "sync_events"

    aput-object v3, v2, v8

    const-string/jumbo v3, "account_name=? AND account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/kingsoft/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 619
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    .line 624
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    return-void

    .line 627
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 635
    monitor-enter p0

    if-nez p1, :cond_0

    .line 636
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;-><init>(Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;)V

    const-string/jumbo v2, "Calendar Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :cond_0
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
