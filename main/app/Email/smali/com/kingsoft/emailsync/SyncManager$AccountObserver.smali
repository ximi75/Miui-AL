.class public abstract Lcom/kingsoft/emailsync/SyncManager$AccountObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/emailsync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AccountObserver"
.end annotation


# instance fields
.field mAccountSelector:Ljava/lang/String;

.field mSyncableMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V
    .locals 10
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 372
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    .line 373
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 367
    iput-object v5, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 368
    iput-object v5, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    .line 376
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 377
    .local v2, "context":Landroid/content/Context;
    iget-object v6, p1, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    monitor-enter v6

    .line 379
    :try_start_0
    iget-object v5, p1, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {p1, v2, v5}, Lcom/kingsoft/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/kingsoft/emailsync/SyncManager$AccountList;)Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :try_start_1
    iget-object v5, p1, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v5}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 386
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v5, v7, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, "cnt":I
    if-nez v1, :cond_0

    .line 390
    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0, v7, v8}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->newAccount(J)V

    goto :goto_0

    .line 393
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "cnt":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 380
    :catch_0
    move-exception v3

    .line 382
    .local v3, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_2
    monitor-exit v6

    .line 412
    .end local v3    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_1
    return-void

    .line 393
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    new-instance v5, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;

    invoke-direct {v5, p0, p1}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$1;-><init>(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;Lcom/kingsoft/emailsync/SyncManager;)V

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/emailsync/SyncManager$AccountObserver;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private onAccountChanged()V
    .locals 20

    .prologue
    .line 441
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v12}, Lcom/kingsoft/emailsync/SyncManager;->maybeStartSyncServiceManagerThread()V

    .line 442
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 446
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Lcom/kingsoft/emailsync/SyncManager$AccountList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v5, v12}, Lcom/kingsoft/emailsync/SyncManager$AccountList;-><init>(Lcom/kingsoft/emailsync/SyncManager;)V
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .local v5, "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v12, v4, v5}, Lcom/kingsoft/emailsync/SyncManager;->collectAccounts(Landroid/content/Context;Lcom/kingsoft/emailsync/SyncManager$AccountList;)Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :try_end_1
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v13, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    monitor-enter v13
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 454
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v12, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v12}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 455
    .local v2, "account":Lcom/android/emailcommon/provider/Account;
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_1

    const/4 v3, 0x1

    .line 459
    .local v3, "accountIncomplete":Z
    :goto_1
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v5, v14, v15}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->contains(J)Z

    move-result v12

    if-nez v12, :cond_3

    if-nez v3, :cond_3

    .line 461
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Observer found deleted account: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v12, v14}, Lcom/kingsoft/emailsync/SyncManager;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 465
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 467
    .local v7, "deletedAccount":Lcom/android/emailcommon/provider/Account;
    if-eqz v7, :cond_2

    .line 469
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Account still in provider: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v5, v2}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    goto :goto_0

    .line 529
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v3    # "accountIncomplete":Z
    .end local v7    # "deletedAccount":Lcom/android/emailcommon/provider/Account;
    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0

    .line 533
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :catch_0
    move-exception v8

    .line 534
    .local v8, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    const-string/jumbo v12, "Observer failed; provider unavailable"

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 536
    .end local v8    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_2
    return-void

    .line 449
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "currentAccounts":Lcom/kingsoft/emailsync/SyncManager$AccountList;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    goto :goto_2

    .line 455
    .end local v8    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 473
    .restart local v3    # "accountIncomplete":Z
    .restart local v7    # "deletedAccount":Lcom/android/emailcommon/provider/Account;
    :cond_2
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Account deletion confirmed: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 475
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 476
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    goto/16 :goto_0

    .line 480
    .end local v7    # "deletedAccount":Lcom/android/emailcommon/provider/Account;
    :cond_3
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 482
    .local v11, "updatedAccount":Lcom/android/emailcommon/provider/Account;
    if-eqz v11, :cond_0

    .line 483
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v12, v14, :cond_4

    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    if-eq v12, v14, :cond_5

    .line 487
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "syncInterval"

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    invoke-virtual {v12}, Lcom/kingsoft/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v14, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v15, "accountKey=? and type = 0"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v6, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Account "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " changed; stop syncs"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 499
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_5
    # invokes: Lcom/kingsoft/emailsync/SyncManager;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v2}, Lcom/kingsoft/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    if-eqz v12, :cond_6

    # invokes: Lcom/kingsoft/emailsync/SyncManager;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v11}, Lcom/kingsoft/emailsync/SyncManager;->access$000(Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    const/4 v15, 0x4

    invoke-virtual {v12, v14, v15, v2}, Lcom/kingsoft/emailsync/SyncManager;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 505
    :cond_6
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 506
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 507
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mFlags:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto/16 :goto_0

    .line 511
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v3    # "accountIncomplete":Z
    .end local v11    # "updatedAccount":Lcom/android/emailcommon/provider/Account;
    :cond_7
    invoke-virtual {v5}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 512
    .restart local v2    # "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v12, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v12, v14, v15}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->contains(J)Z

    move-result v12

    if-nez v12, :cond_8

    .line 514
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v12, v14, v15}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 516
    .local v9, "ha":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_8

    .line 517
    iput-object v9, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 519
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Account observer found new account: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 520
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->newAccount(J)V

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v12, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v12, v2}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 522
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 523
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mAccountSelector:Ljava/lang/String;

    goto :goto_3

    .line 527
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "ha":Lcom/android/emailcommon/provider/HostAuth;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v12, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v12}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->clear()V

    .line 528
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v12, v12, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    invoke-virtual {v12, v5}, Lcom/kingsoft/emailsync/SyncManager$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 529
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    :try_start_6
    const-string/jumbo v12, "account changed"

    invoke-static {v12}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public getSyncableMailboxWhere()Ljava/lang/String;
    .locals 8

    .prologue
    .line 420
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "(type=4 or syncInterval<-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 423
    .local v1, "first":Z
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v5, v4, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

    monitor-enter v5

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->this$0:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v4, v4, Lcom/kingsoft/emailsync/SyncManager;->mAccountList:Lcom/kingsoft/emailsync/SyncManager$AccountList;

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

    .line 425
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 426
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    :goto_1
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 432
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 428
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 432
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    .line 436
    .end local v1    # "first":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;->mSyncableMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public abstract newAccount(J)V
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 540
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver$2;-><init>(Lcom/kingsoft/emailsync/SyncManager$AccountObserver;)V

    const-string/jumbo v2, "Account Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 545
    return-void
.end method
