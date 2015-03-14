.class Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field mAccountId:J

.field mAccountName:Ljava/lang/String;

.field mCalendarId:J

.field mSyncEvents:J

.field final synthetic this$0:Lcom/kingsoft/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 391
    iput-object p1, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    .line 392
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 393
    iget-wide v0, p3, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    .line 394
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

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

    const-string/jumbo v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 402
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 405
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    .line 407
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_1
    return-void

    .line 410
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$700(Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->onChangeInBackground()V

    return-void
.end method

.method private onChangeInBackground()V
    .locals 17

    .prologue
    .line 417
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    iget-object v1, v1, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sync_events"

    aput-object v5, v3, v4

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 420
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 489
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 423
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 425
    .local v12, "newSyncEvents":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    cmp-long v1, v12, v1

    if-eqz v1, :cond_2

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_sync_events changed for calendar in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 427
    # getter for: Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->access$400()Lcom/kingsoft/emailsync/SyncManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountId:J

    const/16 v4, 0x41

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 430
    .local v11, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_1

    .line 484
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 486
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v12    # "newSyncEvents":J
    :catch_0
    move-exception v9

    .line 487
    .local v9, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Observer failed; provider unavailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 431
    .end local v9    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12    # "newSyncEvents":J
    :cond_1
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .local v8, "cv":Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_3

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deleting events and setting syncKey to 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 438
    iget-wide v1, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v1, v2}, Lcom/kingsoft/emailsync/SyncManager;->stopManualSync(J)V

    .line 440
    # getter for: Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->access$500()Lcom/kingsoft/emailsync/SyncManager;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/kingsoft/exchange/EasSyncService;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/exchange/EasSyncService;

    move-result-object v14

    .line 455
    .local v14, "service":Lcom/kingsoft/exchange/EasSyncService;
    const-string/jumbo v1, "syncKey"

    const-string/jumbo v2, "0"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v1, "syncInterval"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    iget-object v1, v1, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mAccountName:Ljava/lang/String;

    const-string/jumbo v3, "com.android.exchange"

    # invokes: Lcom/kingsoft/exchange/ExchangeService;->eventsAsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/ExchangeService;->access$600(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 465
    .local v10, "eventsAsSyncAdapter":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    iget-object v1, v1, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "calendar_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    .end local v10    # "eventsAsSyncAdapter":Landroid/net/Uri;
    .end local v14    # "service":Lcom/kingsoft/exchange/EasSyncService;
    :goto_1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v12    # "newSyncEvents":J
    :cond_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 471
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12    # "newSyncEvents":J
    :cond_3
    :try_start_5
    const-string/jumbo v1, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    iget-object v1, v1, Lcom/kingsoft/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    const-string/jumbo v1, "calendar sync changed"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 484
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v12    # "newSyncEvents":J
    :catchall_0
    move-exception v1

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 495
    monitor-enter p0

    if-nez p1, :cond_0

    .line 496
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/exchange/ExchangeService$CalendarObserver$1;-><init>(Lcom/kingsoft/exchange/ExchangeService$CalendarObserver;)V

    const-string/jumbo v2, "Calendar Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
