.class Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

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

    iget-object v15, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-wide v15, v15, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 643
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 704
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 646
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 648
    .local v12, "newSyncEvents":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-wide v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J

    cmp-long v1, v12, v1

    if-eqz v1, :cond_2

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_sync_events changed for calendar in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 650
    sget-object v1, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-wide v2, v2, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountId:J

    const/16 v4, 0x41

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 653
    .local v11, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_1

    .line 699
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 701
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v12    # "newSyncEvents":J
    :catch_0
    move-exception v9

    .line 702
    .local v9, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Observer failed; provider unavailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 654
    .end local v9    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v12    # "newSyncEvents":J
    :cond_1
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v8, "cv":Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-nez v1, :cond_3

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deleting events and setting syncKey to 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 661
    iget-wide v1, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v1, v2}, Lcom/kingsoft/emailsync/SyncManager;->stopManualSync(J)V

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    sget-object v2, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v1, v2, v11}, Lcom/kingsoft/emailsync/SyncManager;->getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/emailsync/AbstractSyncService;

    move-result-object v14

    .line 665
    .local v14, "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    invoke-virtual {v14}, Lcom/kingsoft/emailsync/AbstractSyncService;->resetCalendarSyncKey()V

    .line 667
    const-string/jumbo v1, "syncKey"

    const-string/jumbo v2, "0"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v1, "syncInterval"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 675
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v2, v2, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v3, v3, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v3}, Lcom/kingsoft/emailsync/SyncManager;->getAccountManagerType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/kingsoft/emailsync/SyncManager;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 680
    .local v10, "eventsAsSyncAdapter":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "calendar_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-wide v5, v5, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mCalendarId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    .end local v10    # "eventsAsSyncAdapter":Landroid/net/Uri;
    .end local v14    # "service":Lcom/kingsoft/emailsync/AbstractSyncService;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iput-wide v12, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->mSyncEvents:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 699
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v11    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v12    # "newSyncEvents":J
    :cond_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 686
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

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver$1;->this$1:Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager$CalendarObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v1, v1, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 691
    const-string/jumbo v1, "calendar sync changed"

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 699
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
