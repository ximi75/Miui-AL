.class public abstract Lcom/kingsoft/exchange/service/EasSyncHandler;
.super Lcom/kingsoft/exchange/service/EasServerConnection;
.source "EasSyncHandler.java"


# static fields
.field private static final MAX_LOOPING_COUNT:I = 0xf

.field public static final MAX_WINDOW_SIZE:I = 0x200

.field public static final PIM_WINDOW_SIZE_CALENDAR:I = 0xa

.field public static final PIM_WINDOW_SIZE_CONTACTS:I = 0xa

.field protected static final SYNC_RESULT_DENIED:I = -0x3

.field protected static final SYNC_RESULT_DONE:I = 0x0

.field protected static final SYNC_RESULT_FAILED:I = -0x1

.field protected static final SYNC_RESULT_MORE_AVAILABLE:I = 0x1

.field protected static final SYNC_RESULT_PROVISIONING_ERROR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mLooping:Z

.field protected final mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected final mSyncExtras:Landroid/os/Bundle;

.field protected final mSyncResult:Landroid/content/SyncResult;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "syncExtras"    # Landroid/os/Bundle;
    .param p6, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 104
    invoke-direct {p0, p1, p3}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mLooping:Z

    .line 105
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    iput-object p4, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 107
    iput-object p5, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mSyncExtras:Landroid/os/Bundle;

    .line 108
    iput-object p6, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mSyncResult:Landroid/content/SyncResult;

    .line 109
    return-void
.end method

.method private buildEasRequest(Ljava/lang/String;ZI)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 10
    .param p1, "syncKey"    # Ljava/lang/String;
    .param p2, "initialSync"    # Z
    .param p3, "numWindows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getFolderClassName()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Syncing account %d mailbox %d (class %s) with syncKey %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    new-instance v3, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v3}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 275
    .local v3, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 276
    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 277
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 279
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getProtocolVersion()D

    move-result-wide v4

    const-wide v6, 0x4028333333333333L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 280
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 282
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v3, v4, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 283
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 284
    if-eqz p2, :cond_1

    .line 285
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/service/EasSyncHandler;->setInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 291
    :goto_0
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->getDepth()I

    move-result v1

    .line 292
    .local v1, "depth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 293
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "depth":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v3, p3}, Lcom/kingsoft/exchange/service/EasSyncHandler;->setNonInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;I)V

    .line 288
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/service/EasSyncHandler;->setUpsyncCommands(Lcom/kingsoft/exchange/adapter/Serializer;)V

    goto :goto_0

    .line 295
    .restart local v1    # "depth":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 297
    return-object v3
.end method

.method public static getEasSyncHandler(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)Lcom/kingsoft/exchange/service/EasSyncHandler;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "accountManagerAccount"    # Landroid/accounts/Account;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "syncExtras"    # Landroid/os/Bundle;
    .param p6, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 129
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 130
    iget v0, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 147
    :cond_0
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Invalid mailbox type %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 136
    :sswitch_0
    new-instance v0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 139
    :sswitch_1
    new-instance v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 142
    :sswitch_2
    new-instance v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private parse(Lcom/kingsoft/exchange/EasResponse;)I
    .locals 10
    .param p1, "resp"    # Lcom/kingsoft/exchange/EasResponse;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 308
    :try_start_0
    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getParser(Ljava/io/InputStream;)Lcom/kingsoft/exchange/adapter/AbstractSyncParser;

    move-result-object v2

    .line 309
    .local v2, "parser":Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->parse()Z

    move-result v1

    .line 310
    .local v1, "moreAvailable":Z
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;->isLooping()Z

    move-result v7

    iput-boolean v7, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mLooping:Z
    :try_end_0
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    if-eqz v1, :cond_2

    .line 330
    .end local v1    # "moreAvailable":Z
    .end local v2    # "parser":Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    :goto_0
    return v4

    .line 316
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v4, v6

    .line 317
    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Lcom/kingsoft/exchange/CommandStatusException;
    iget v3, v0, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    .line 321
    .local v3, "status":I
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "CommandStatusException: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v7, v8, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    invoke-static {v3}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    const/4 v4, -0x2

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {v3}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    const/4 v4, -0x3

    goto :goto_0

    :cond_1
    move v4, v6

    .line 328
    goto :goto_0

    .line 314
    .end local v0    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v3    # "status":I
    :catch_2
    move-exception v4

    :cond_2
    move v4, v5

    .line 330
    goto :goto_0
.end method

.method private performOneSync(Landroid/content/SyncResult;I)I
    .locals 20
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "numWindows"    # I

    .prologue
    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v12

    .line 342
    .local v12, "syncKey":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 343
    const/4 v10, -0x1

    .line 416
    :cond_0
    :goto_0
    return v10

    .line 345
    :cond_1
    const-string/jumbo v15, "0"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 349
    .local v5, "initialSync":Z
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v5, v1}, Lcom/kingsoft/exchange/service/EasSyncHandler;->buildEasRequest(Ljava/lang/String;ZI)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v11

    .line 350
    .local v11, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    if-eqz v5, :cond_4

    const-wide/32 v13, 0x1d4c0

    .line 351
    .local v13, "timeout":J
    :goto_1
    const-string/jumbo v15, "Sync"

    invoke-virtual {v11}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v13, v14}, Lcom/kingsoft/exchange/service/EasSyncHandler;->sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 365
    .local v8, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v3

    .line 366
    .local v3, "code":I
    const/16 v15, 0xc8

    if-ne v3, v15, :cond_6

    .line 370
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 371
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/exchange/service/EasSyncHandler;->parse(Lcom/kingsoft/exchange/EasResponse;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 380
    .local v9, "responseResult":I
    :goto_2
    if-eqz v9, :cond_2

    const/4 v15, 0x1

    if-ne v9, v15, :cond_7

    .line 382
    :cond_2
    move v10, v9

    .line 407
    .local v10, "result":I
    :cond_3
    :goto_3
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/kingsoft/exchange/service/EasSyncHandler;->cleanup(I)V

    .line 412
    if-eqz v5, :cond_0

    const/4 v15, -0x1

    if-eq v10, v15, :cond_0

    goto :goto_0

    .line 350
    .end local v3    # "code":I
    .end local v8    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v9    # "responseResult":I
    .end local v10    # "result":I
    .end local v13    # "timeout":J
    :cond_4
    const-wide/16 v13, 0x7530

    goto :goto_1

    .line 352
    .end local v11    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catch_0
    move-exception v4

    .line 353
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v15, "Exchange"

    const-string/jumbo v16, "Sync error:"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v4, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    .line 355
    const/4 v10, -0x1

    goto :goto_0

    .line 356
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 357
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v15, "Exchange"

    const-string/jumbo v16, "Certificate error:"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v4, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 359
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 373
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "code":I
    .restart local v8    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v11    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v13    # "timeout":J
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "responseResult":I
    goto :goto_2

    .line 376
    .end local v9    # "responseResult":I
    :cond_6
    :try_start_2
    const-string/jumbo v15, "Exchange"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Sync failed with Status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 377
    const/4 v9, -0x1

    .restart local v9    # "responseResult":I
    goto/16 :goto_2

    .line 383
    :cond_7
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, -0x2

    if-ne v9, v15, :cond_a

    .line 385
    :cond_8
    new-instance v7, Lcom/kingsoft/exchange/eas/EasProvision;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-direct {v7, v15, v0, v1, v2}, Lcom/kingsoft/exchange/eas/EasProvision;-><init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V

    .line 386
    .local v7, "provision":Lcom/kingsoft/exchange/eas/EasProvision;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v15, v15, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v7, v0, v1, v2}, Lcom/kingsoft/exchange/eas/EasProvision;->provision(Landroid/content/SyncResult;J)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 388
    const-string/jumbo v15, "Exchange"

    const-string/jumbo v16, "Provisioning error handled during sync, retrying"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    const/4 v10, 0x1

    .restart local v10    # "result":I
    goto/16 :goto_3

    .line 391
    .end local v10    # "result":I
    :cond_9
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 392
    const/4 v10, -0x1

    .restart local v10    # "result":I
    goto/16 :goto_3

    .line 394
    .end local v7    # "provision":Lcom/kingsoft/exchange/eas/EasProvision;
    .end local v10    # "result":I
    :cond_a
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, -0x3

    if-ne v9, v15, :cond_c

    .line 395
    :cond_b
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 396
    const/4 v10, -0x1

    .line 397
    .restart local v10    # "result":I
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v6

    .line 399
    .local v6, "nc":Lcom/kingsoft/email/NotificationController;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v15, v15, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 407
    .end local v3    # "code":I
    .end local v6    # "nc":Lcom/kingsoft/email/NotificationController;
    .end local v9    # "responseResult":I
    .end local v10    # "result":I
    :catchall_0
    move-exception v15

    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v15

    .line 402
    .restart local v3    # "code":I
    .restart local v9    # "responseResult":I
    :cond_c
    :try_start_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    const/4 v10, -0x1

    .restart local v10    # "result":I
    goto/16 :goto_3
.end method


# virtual methods
.method protected abstract cleanup(I)V
.end method

.method protected abstract getFolderClassName()Ljava/lang/String;
.end method

.method protected abstract getParser(Ljava/io/InputStream;)Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSyncKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract getTrafficFlag()I
.end method

.method public final performSync(Landroid/content/SyncResult;)Z
    .locals 12
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 431
    iget-object v8, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v8, v9}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v5

    .line 432
    .local v5, "trafficFlags":I
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getTrafficFlag()I

    move-result v8

    or-int/2addr v8, v5

    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 436
    const/4 v4, 0x1

    .line 437
    .local v4, "result":I
    const/4 v3, 0x1

    .line 438
    .local v3, "numWindows":I
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 440
    .local v1, "loopingCount":I
    :cond_0
    :goto_0
    if-ne v4, v6, :cond_1

    .line 441
    invoke-direct {p0, p1, v3}, Lcom/kingsoft/exchange/service/EasSyncHandler;->performOneSync(Landroid/content/SyncResult;I)I

    move-result v4

    .line 449
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "newKey":Ljava/lang/String;
    if-ne v4, v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 451
    const-string/jumbo v8, "Exchange"

    const-string/jumbo v9, "Server has more data but we have the same key: %s numWindows: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 454
    add-int/lit8 v3, v3, 0x1

    .line 458
    :goto_1
    move-object v0, v2

    .line 460
    iget-boolean v8, p0, Lcom/kingsoft/exchange/service/EasSyncHandler;->mLooping:Z

    if-eqz v8, :cond_3

    .line 461
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0xf

    if-le v1, v8, :cond_0

    .line 468
    .end local v2    # "newKey":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_4

    :goto_2
    return v6

    .line 456
    .restart local v2    # "newKey":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 465
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .end local v2    # "newKey":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 468
    goto :goto_2
.end method

.method protected abstract setInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setNonInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPimSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 238
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 239
    const/16 v0, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 240
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const/16 v0, 0x18

    invoke-virtual {p1, v0, p2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasSyncHandler;->getProtocolVersion()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 247
    const/16 v0, 0x445

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 249
    const/16 v0, 0x446

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 250
    const/16 v0, 0x447

    const-string/jumbo v1, "1000000"

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 251
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 255
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 256
    return-void

    .line 253
    :cond_1
    const/16 v0, 0x19

    const-string/jumbo v1, "7"

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method protected abstract setUpsyncCommands(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
