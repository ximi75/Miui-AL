.class public Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;
.super Ljava/lang/Object;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncHandlerSynchronizer"
.end annotation


# instance fields
.field private final mPingHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/exchange/service/PingTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method private declared-synchronized isRunningSync(J)Z
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

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

.method private stopServiceIfNoPings()V
    .locals 6

    .prologue
    .line 193
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {v4}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v3

    .line 194
    .local v3, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {v4}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    sget-object v4, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "from EmailSyncAdapterService stopServiceIfNoPings"

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {v3}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInSilenceMode()Z

    move-result v2

    .line 198
    .local v2, "silence":Z
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/exchange/service/PingTask;

    .line 199
    .local v1, "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    if-eqz v1, :cond_1

    .line 200
    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v1}, Lcom/kingsoft/exchange/service/PingTask;->stop()V

    goto :goto_0

    .line 208
    .end local v1    # "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    const/4 v5, 0x0

    # setter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->mHasStartPingTask:Z
    invoke-static {v4, v5}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$002(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;Z)Z

    .line 209
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-virtual {v4}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->stopSelf()V

    .line 210
    :cond_3
    return-void
.end method

.method private declared-synchronized waitUntilNoActivity(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 167
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/exchange/service/PingTask;

    .line 169
    .local v0, "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/PingTask;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0

    .line 178
    .end local v0    # "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized modifyPing(ZLcom/android/emailcommon/provider/Account;)V
    .locals 22
    .param p1, "lastSyncHadError"    # Z
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->isRunningSync(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_1

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x20

    if-nez v18, :cond_0

    .line 241
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/provider/EmailContent;->isInitialSyncKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v16, v0

    .line 250
    .local v16, "service":Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.android.exchange"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v4, "amAccount":Landroid/accounts/Account;
    const/4 v15, 0x0

    .line 253
    .local v15, "pushNeeded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v17

    .line 254
    .local v17, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 255
    sget-object v18, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v19, "from EmailSyncAdapterService modifyPing"

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInNormalMode()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 259
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 260
    # invokes: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getAuthsToSync(Landroid/accounts/Account;)Ljava/util/HashSet;
    invoke-static {v4}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$100(Landroid/accounts/Account;)Ljava/util/HashSet;

    move-result-object v7

    .line 262
    .local v7, "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 263
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 265
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 267
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 268
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 269
    .local v11, "mailboxType":I
    invoke-static {v11}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v18

    if-eqz v18, :cond_3

    .line 270
    const/4 v15, 0x1

    .line 275
    .end local v11    # "mailboxType":I
    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v7    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kingsoft/exchange/service/PingTask;

    .line 284
    .local v14, "pingSyncHandler":Lcom/kingsoft/exchange/service/PingTask;
    new-instance v9, Landroid/os/Bundle;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 285
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v18, "__push_only__"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    if-eqz v15, :cond_8

    .line 289
    if-eqz v14, :cond_6

    .line 290
    invoke-virtual {v14}, Lcom/kingsoft/exchange/service/PingTask;->restart()V

    .line 322
    :goto_1
    sget-object v18, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-wide/16 v19, 0xe10

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v4, v0, v9, v1, v2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 231
    .end local v4    # "amAccount":Landroid/accounts/Account;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v14    # "pingSyncHandler":Lcom/kingsoft/exchange/service/PingTask;
    .end local v15    # "pushNeeded":Z
    .end local v16    # "service":Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
    .end local v17    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 275
    .restart local v4    # "amAccount":Landroid/accounts/Account;
    .restart local v7    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v15    # "pushNeeded":Z
    .restart local v16    # "service":Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
    .restart local v17    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :catchall_1
    move-exception v18

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v18

    .line 298
    .end local v7    # "authsToSync":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v14    # "pingSyncHandler":Lcom/kingsoft/exchange/service/PingTask;
    :cond_6
    if-eqz p1, :cond_7

    .line 300
    new-instance v10, Landroid/content/Intent;

    const-class v18, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "com.android.email.EXCHANGE_INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v18, "START_PING"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string/jumbo v18, "PING_ACCOUNT"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x40000000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 307
    .local v12, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 309
    .local v3, "am":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/32 v20, 0x493e0

    add-long v5, v18, v20

    .line 311
    .local v5, "atTime":J
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0, v5, v6, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 313
    .end local v3    # "am":Landroid/app/AlarmManager;
    .end local v5    # "atTime":J
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "pi":Landroid/app/PendingIntent;
    :cond_7
    new-instance v13, Lcom/kingsoft/exchange/service/PingTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v13, v0, v1, v4, v2}, Lcom/kingsoft/exchange/service/PingTask;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;)V

    .line 315
    .local v13, "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v13}, Lcom/kingsoft/exchange/service/PingTask;->start()V

    .line 318
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 326
    .end local v13    # "pingHandler":Lcom/kingsoft/exchange/service/PingTask;
    :cond_8
    if-eqz v14, :cond_9

    .line 327
    invoke-virtual {v14}, Lcom/kingsoft/exchange/service/PingTask;->stop()V

    .line 330
    :cond_9
    sget-object v18, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v4, v0, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized pingComplete(Landroid/accounts/Account;JI)V
    .locals 4
    .param p1, "amAccount"    # Landroid/accounts/Account;
    .param p2, "accountId"    # J
    .param p4, "pingStatus"    # I

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v1, -0x4

    if-eq p4, v1, :cond_0

    const/16 v1, -0xa

    if-ne p4, v1, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    const-wide/32 v1, 0xea60

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :goto_0
    :try_start_2
    const-string/jumbo v1, "EmailSync"

    const-string/jumbo v2, "Connect Server failed!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    invoke-static {p1}, Lcom/kingsoft/exchange/eas/EasPing;->requestPing(Landroid/accounts/Account;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    :goto_1
    monitor-exit p0

    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 391
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->stopServiceIfNoPings()V

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startSync(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->waitUntilNoActivity(J)V

    .line 219
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncComplete(ZLcom/android/emailcommon/provider/Account;)V
    .locals 3
    .param p1, "lastSyncHadError"    # Z
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncComplete, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->mPingHandlers:Ljava/util/HashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->modifyPing(ZLcom/android/emailcommon/provider/Account;)V

    .line 350
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$SyncHandlerSynchronizer;->stopServiceIfNoPings()V

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
