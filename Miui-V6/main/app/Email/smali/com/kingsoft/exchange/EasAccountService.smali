.class public Lcom/kingsoft/exchange/EasAccountService;
.super Lcom/kingsoft/exchange/EasSyncService;
.source "EasAccountService.java"


# static fields
.field private static final ACCOUNT_MAILBOX_SLEEP_TEXT:Ljava/lang/String; = "Account mailbox sleeping for 20m"

.field private static final ACCOUNT_MAILBOX_SLEEP_TIME:I = 0x124f80

.field private static final AND_FREQUENCY_PING_PUSH_AND_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = " AND syncInterval IN (-3,-2) AND type!=\"68\""

.field private static final MAX_PING_FAILURES:I = 0x1

.field private static final PING_FALLBACK_INBOX:I = 0x5

.field private static final PING_FALLBACK_PIM:I = 0x19

.field private static final PING_FUDGE_LOW:I = 0xa

.field private static final PING_HEARTBEAT_INCREMENT:I = 0xb4

.field private static final PING_MINUTES:I = 0x3c

.field private static final PING_STARTING_HEARTBEAT:I = 0x1d6

.field private static final PROTOCOL_PING_STATUS_BAD_PARAMETERS:I = 0x3

.field private static final PROTOCOL_PING_STATUS_COMPLETED:I = 0x1

.field private static final PROTOCOL_PING_STATUS_RETRY:I = 0x8

.field private static final WHERE_ACCOUNT_AND_SYNC_INTERVAL_PING:Ljava/lang/String; = "accountKey=? and syncInterval=-3"

.field private static final WHERE_ACCOUNT_KEY_AND_SERVER_ID:Ljava/lang/String; = "accountKey=? and serverId=?"

.field protected static final WHERE_IN_ACCOUNT_AND_PUSHABLE:Ljava/lang/String; = "accountKey=? and type in (0,68,66,65)"

.field private static final WHERE_PUSH_HOLD_NOT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and syncInterval=-4"


# instance fields
.field private final mBindArguments:[Ljava/lang/String;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;-><init>()V

    .line 107
    const/16 v0, 0x78

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 109
    const/16 v0, 0x122

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 111
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 113
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    .line 115
    iput v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 117
    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 107
    const/16 v0, 0x78

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 109
    const/16 v0, 0x122

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 111
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 113
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    .line 115
    iput v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 117
    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method private canHandleAccountMailboxRedirect(Lcom/kingsoft/exchange/EasResponse;)Z
    .locals 7
    .param p1, "resp"    # Lcom/kingsoft/exchange/EasResponse;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "AccountMailbox redirect error"

    aput-object v5, v4, v3

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 192
    .local v0, "ha":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/exchange/EasAccountService;->getValidateRedirect(Lcom/kingsoft/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v1, "haValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "address"

    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 199
    .end local v1    # "haValues":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static isLikelyNatFailure(Ljava/lang/String;)Z
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 465
    if-nez p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    const-string/jumbo v1, "reset by peer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .locals 16
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/StaleFolderListException;,
            Lcom/kingsoft/exchange/IllegalHeartbeatException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 767
    .local p3, "errorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v12, Lcom/kingsoft/exchange/adapter/PingParser;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/kingsoft/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;)V

    .line 768
    .local v12, "pp":Lcom/kingsoft/exchange/adapter/PingParser;
    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/PingParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 772
    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 774
    .local v13, "serverId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v13, v1, v2

    .line 775
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "accountKey=? and serverId=?"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/EasAccountService;->mBindArguments:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 777
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 779
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    const/16 v1, 0xd

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 797
    .local v14, "status":Ljava/lang/String;
    invoke-static {v14}, Lcom/kingsoft/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v15

    .line 799
    .local v15, "type":I
    const/4 v1, 0x3

    if-ne v15, v1, :cond_1

    .line 800
    invoke-static {v14}, Lcom/kingsoft/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v8

    .line 801
    .local v8, "changeCount":I
    if-lez v8, :cond_3

    .line 802
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .end local v8    # "changeCount":I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/exchange/ExchangeService;->startManualSync(JILcom/kingsoft/emailsync/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    .end local v14    # "status":Ljava/lang/String;
    .end local v15    # "type":I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 803
    .restart local v8    # "changeCount":I
    .restart local v14    # "status":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_3
    if-nez v8, :cond_1

    .line 806
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 807
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 808
    .local v9, "failures":Ljava/lang/Integer;
    if-nez v9, :cond_4

    .line 809
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Last ping reported changes in error for: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 827
    .end local v8    # "changeCount":I
    .end local v9    # "failures":Ljava/lang/Integer;
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "status":Ljava/lang/String;
    .end local v15    # "type":I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 811
    .restart local v8    # "changeCount":I
    .restart local v9    # "failures":Ljava/lang/Integer;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "status":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 813
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/EasAccountService;->pushFallback(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 827
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 816
    :cond_5
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Last ping reported changes in error for: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 817
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 831
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "changeCount":I
    .end local v9    # "failures":Ljava/lang/Integer;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "serverId":Ljava/lang/String;
    .end local v14    # "status":Ljava/lang/String;
    .end local v15    # "type":I
    :cond_6
    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/PingParser;->getPingStatus()I

    move-result v1

    return v1
.end method

.method private pushFallback(J)V
    .locals 6
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 441
    .local v1, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v0, "cv":Landroid/content/ContentValues;
    const/16 v2, 0x19

    .line 446
    .local v2, "mins":I
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v3, :cond_1

    .line 447
    const/4 v2, 0x5

    .line 449
    :cond_1
    const-string/jumbo v3, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*** PING ERROR LOOP: Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " min sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v3, "push fallback"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runPingLoop()V
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/StaleFolderListException;,
            Lcom/kingsoft/exchange/IllegalHeartbeatException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    move/from16 v31, v0

    .line 499
    .local v31, "pingHeartbeat":I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "runPingLoop"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long v16, v3, v5

    .line 502
    .local v16, "endTime":J
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 503
    .local v30, "pingErrorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v40, "readyMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v29, "notReadyMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v38, 0x0

    .line 506
    .local v38, "pingWaitCount":I
    const-wide/16 v21, -0x1

    .line 507
    .local v21, "inboxId":J
    new-instance v9, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v4, "com.android.exchange"

    invoke-direct {v9, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v9, "amAccount":Landroid/accounts/Account;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v16

    if-gez v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->isStopped()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 511
    const/16 v39, 0x0

    .line 513
    .local v39, "pushCount":I
    const/4 v12, 0x0

    .line 515
    .local v12, "canPushCount":I
    const/16 v44, 0x0

    .line 517
    .local v44, "uninitCount":I
    new-instance v42, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct/range {v42 .. v42}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 518
    .local v42, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 521
    .local v11, "c":Landroid/database/Cursor;
    if-nez v11, :cond_1

    new-instance v3, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v3

    .line 522
    :cond_1
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 523
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 525
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_2c

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v21

    move v13, v12

    .line 530
    .end local v12    # "canPushCount":I
    .local v13, "canPushCount":I
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 531
    add-int/lit8 v39, v39, 0x1

    .line 535
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 536
    .local v24, "mailboxId":J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 539
    .local v26, "mailboxName":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 540
    .local v27, "mailboxType":I
    sget-object v10, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 541
    .local v10, "authority":Ljava/lang/String;
    packed-switch v27, :pswitch_data_0

    .line 552
    :goto_2
    invoke-static {v9, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 553
    const/16 v35, 0x4

    .line 559
    .local v35, "pingStatus":I
    :goto_3
    if-nez v35, :cond_6

    .line 560
    const/4 v3, 0x7

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 561
    .local v43, "syncKey":Ljava/lang/String;
    if-eqz v43, :cond_2

    const-string/jumbo v3, "0"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 563
    :cond_2
    add-int/lit8 v39, v39, -0x1

    .line 564
    add-int/lit8 v44, v44, 0x1

    .line 565
    goto :goto_1

    .line 543
    .end local v35    # "pingStatus":I
    .end local v43    # "syncKey":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v10, "com.android.calendar"

    .line 544
    goto :goto_2

    .line 546
    :pswitch_1
    const-string/jumbo v10, "com.android.contacts"

    goto :goto_2

    .line 555
    :cond_3
    invoke-static/range {v24 .. v25}, Lcom/kingsoft/exchange/ExchangeService;->pingStatus(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v35

    .restart local v35    # "pingStatus":I
    goto :goto_3

    .line 568
    .restart local v43    # "syncKey":Ljava/lang/String;
    :cond_4
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "canPushCount":I
    .restart local v12    # "canPushCount":I
    if-nez v13, :cond_5

    .line 570
    const/16 v3, 0x345

    :try_start_1
    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x348

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x349

    invoke-virtual {v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 576
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/kingsoft/exchange/EasAccountService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 577
    .local v18, "folderClass":Ljava/lang/String;
    const/16 v3, 0x34a

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x34b

    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x34c

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 581
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v18    # "folderClass":Ljava/lang/String;
    .end local v43    # "syncKey":Ljava/lang/String;
    :goto_4
    move v13, v12

    .line 594
    .end local v12    # "canPushCount":I
    .restart local v13    # "canPushCount":I
    goto/16 :goto_1

    .line 582
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_8

    .line 584
    :cond_7
    :try_start_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v13

    .end local v13    # "canPushCount":I
    .restart local v12    # "canPushCount":I
    goto :goto_4

    .line 585
    .end local v12    # "canPushCount":I
    .restart local v13    # "canPushCount":I
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v35

    if-ne v0, v3, :cond_9

    .line 586
    add-int/lit8 v39, v39, -0x1

    .line 587
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v26, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " in error state; ignore"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 596
    .end local v10    # "authority":Ljava/lang/String;
    .end local v24    # "mailboxId":J
    .end local v26    # "mailboxName":Ljava/lang/String;
    .end local v27    # "mailboxType":I
    .end local v35    # "pingStatus":I
    :catchall_0
    move-exception v3

    move v12, v13

    .end local v13    # "canPushCount":I
    .restart local v12    # "canPushCount":I
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 589
    .end local v12    # "canPushCount":I
    .restart local v10    # "authority":Ljava/lang/String;
    .restart local v13    # "canPushCount":I
    .restart local v24    # "mailboxId":J
    .restart local v26    # "mailboxName":Ljava/lang/String;
    .restart local v27    # "mailboxType":I
    .restart local v35    # "pingStatus":I
    :cond_9
    const/4 v3, 0x4

    move/from16 v0, v35

    if-ne v0, v3, :cond_2b

    .line 590
    add-int/lit8 v39, v39, -0x1

    .line 591
    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v26, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " disabled by user; ignore"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 596
    .end local v10    # "authority":Ljava/lang/String;
    .end local v24    # "mailboxId":J
    .end local v26    # "mailboxName":Ljava/lang/String;
    .end local v27    # "mailboxType":I
    .end local v35    # "pingStatus":I
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 599
    sget-boolean v3, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_c

    .line 600
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 601
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ping not ready for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 603
    :cond_b
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 604
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ping ready for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 610
    :cond_c
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x5

    move/from16 v0, v38

    if-le v0, v3, :cond_e

    const/16 v19, 0x1

    .line 612
    .local v19, "forcePing":Z
    :goto_6
    if-lez v13, :cond_25

    move/from16 v0, v39

    if-eq v13, v0, :cond_d

    if-eqz v19, :cond_25

    .line 614
    :cond_d
    invoke-virtual/range {v42 .. v42}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 615
    const/16 v38, 0x0

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPostAborted:Z

    .line 617
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPostReset:Z

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 761
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "canPushCount":I
    .end local v19    # "forcePing":Z
    .end local v39    # "pushCount":I
    .end local v42    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v44    # "uninitCount":I
    :goto_7
    return-void

    .line 610
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "canPushCount":I
    .restart local v39    # "pushCount":I
    .restart local v42    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v44    # "uninitCount":I
    :cond_e
    const/16 v19, 0x0

    goto :goto_6

    .line 622
    .restart local v19    # "forcePing":Z
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 625
    .local v36, "pingTime":J
    if-eqz v19, :cond_10

    .line 626
    const/4 v3, 0x1

    :try_start_4
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Forcing ping after waiting for all boxes to be ready"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 628
    :cond_10
    invoke-virtual/range {v42 .. v42}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingForceHeartbeat:I

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/kingsoft/exchange/EasAccountService;->sendPing([BI)Lcom/kingsoft/exchange/EasResponse;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v41

    .line 632
    .local v41, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_5
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v14

    .line 633
    .local v14, "code":I
    const-string/jumbo v3, "Ping response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->stop()V

    .line 642
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 643
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopping pingLoop"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 688
    :try_start_6
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    .line 690
    .end local v14    # "code":I
    .end local v41    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_0
    move-exception v15

    .line 691
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v28

    .line 694
    .local v28, "message":Ljava/lang/String;
    if-eqz v28, :cond_1e

    const/16 v20, 0x1

    .line 695
    .local v20, "hasMessage":Z
    :goto_9
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException runPingLoop: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v20, :cond_1f

    move-object/from16 v3, v28

    :goto_a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPostReset:Z

    if-nez v3, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPostAborted:Z

    if-nez v3, :cond_12

    invoke-static/range {v28 .. v28}, Lcom/kingsoft/exchange/EasAccountService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 700
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v32, v3, v36

    .line 701
    .local v32, "pingLength":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v0, v31

    if-le v0, v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    move/from16 v0, v31

    if-le v0, v3, :cond_20

    .line 703
    move/from16 v0, v31

    add-int/lit16 v0, v0, -0xb4

    move/from16 v31, v0

    .line 704
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 705
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_13

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    move/from16 v31, v0

    .line 708
    :cond_13
    const-string/jumbo v3, "Decreased ping heartbeat to "

    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "hasMessage":Z
    .end local v28    # "message":Ljava/lang/String;
    .end local v32    # "pingLength":J
    :cond_14
    move/from16 v3, v31

    .line 628
    goto/16 :goto_8

    .line 647
    .restart local v14    # "code":I
    .restart local v41    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_15
    const/16 v3, 0xc8

    if-ne v14, v3, :cond_1d

    .line 648
    :try_start_7
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 649
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    .line 650
    .local v23, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v3, v2}, Lcom/kingsoft/exchange/EasAccountService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v34

    .line 654
    .local v34, "pingResult":I
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_1a

    if-nez v19, :cond_1a

    .line 655
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    move/from16 v0, v31

    if-le v0, v3, :cond_16

    .line 656
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    .line 657
    const-string/jumbo v3, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 659
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    if-nez v3, :cond_18

    .line 661
    move/from16 v0, v31

    add-int/lit16 v0, v0, 0xb4

    move/from16 v31, v0

    .line 662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v0, v31

    if-le v0, v3, :cond_17

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    move/from16 v31, v0

    .line 665
    :cond_17
    const-string/jumbo v3, "Increase ping heartbeat to "

    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    :cond_18
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mMailboxId:J

    invoke-static {v3, v4}, Lcom/kingsoft/exchange/ExchangeService;->removeFromSyncErrorMap(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 688
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v34    # "pingResult":I
    :cond_19
    :try_start_8
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 667
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v34    # "pingResult":I
    :cond_1a
    const/4 v3, 0x3

    move/from16 v0, v34

    if-eq v0, v3, :cond_1b

    const/16 v3, 0x8

    move/from16 v0, v34

    if-ne v0, v3, :cond_18

    .line 671
    :cond_1b
    const/4 v3, 0x1

    :try_start_9
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Server error during Ping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 673
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 688
    .end local v14    # "code":I
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v34    # "pingResult":I
    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 678
    .restart local v14    # "code":I
    :cond_1c
    const/4 v3, 0x1

    :try_start_b
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Ping returned empty result; throwing IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 680
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 682
    :cond_1d
    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 683
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    .line 684
    const-string/jumbo v3, "Authorization error during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 685
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 694
    .end local v14    # "code":I
    .end local v41    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v15    # "e":Ljava/io/IOException;
    .restart local v28    # "message":Ljava/lang/String;
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 695
    .restart local v20    # "hasMessage":Z
    :cond_1f
    const-string/jumbo v3, "[no message]"

    goto/16 :goto_a

    .line 709
    .restart local v32    # "pingLength":J
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingsoft/exchange/EasAccountService;->mPostAborted:Z

    if-eqz v3, :cond_21

    .line 715
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Ping aborted; retry"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_21
    const-wide/16 v3, 0x7d0

    cmp-long v3, v32, v3

    if-gez v3, :cond_22

    .line 717
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 718
    throw v15

    .line 720
    :cond_22
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "NAT type IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 722
    .end local v32    # "pingLength":J
    :cond_23
    if-eqz v20, :cond_24

    const-string/jumbo v3, "roken pipe"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 727
    :cond_24
    throw v15

    .line 730
    .end local v15    # "e":Ljava/io/IOException;
    .end local v20    # "hasMessage":Z
    .end local v28    # "message":Ljava/lang/String;
    .end local v36    # "pingTime":J
    :cond_25
    if-eqz v19, :cond_26

    .line 733
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pingLoop waiting 60s for any pingable boxes"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 734
    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/kingsoft/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 735
    :cond_26
    if-lez v39, :cond_27

    .line 738
    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/kingsoft/exchange/EasAccountService;->sleep(JZ)V

    .line 739
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 741
    :cond_27
    if-lez v44, :cond_28

    .line 745
    const-string/jumbo v3, "pingLoop waiting for initial sync of "

    const-string/jumbo v4, " box(es)"

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v3, v1, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/kingsoft/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 747
    :cond_28
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_29

    .line 749
    const-wide/32 v3, 0xafc8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/kingsoft/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 754
    :cond_29
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Account mailbox sleeping for 20m"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 755
    const-wide/32 v3, 0x124f80

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/kingsoft/exchange/EasAccountService;->sleep(JZ)V

    goto/16 :goto_0

    .line 760
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "canPushCount":I
    .end local v19    # "forcePing":Z
    .end local v39    # "pushCount":I
    .end local v42    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v44    # "uninitCount":I
    :cond_2a
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    goto/16 :goto_7

    .line 596
    .restart local v10    # "authority":Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "canPushCount":I
    .restart local v24    # "mailboxId":J
    .restart local v26    # "mailboxName":Ljava/lang/String;
    .restart local v27    # "mailboxType":I
    .restart local v35    # "pingStatus":I
    .restart local v39    # "pushCount":I
    .restart local v42    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v43    # "syncKey":Ljava/lang/String;
    .restart local v44    # "uninitCount":I
    :catchall_2
    move-exception v3

    goto/16 :goto_5

    .end local v12    # "canPushCount":I
    .end local v43    # "syncKey":Ljava/lang/String;
    .restart local v13    # "canPushCount":I
    :cond_2b
    move v12, v13

    .end local v13    # "canPushCount":I
    .restart local v12    # "canPushCount":I
    goto/16 :goto_4

    .end local v10    # "authority":Ljava/lang/String;
    .end local v24    # "mailboxId":J
    .end local v26    # "mailboxName":Ljava/lang/String;
    .end local v27    # "mailboxType":I
    .end local v35    # "pingStatus":I
    :cond_2c
    move v13, v12

    .end local v12    # "canPushCount":I
    .restart local v13    # "canPushCount":I
    goto/16 :goto_1

    .line 541
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sleep(JZ)V
    .locals 4
    .param p1, "ms"    # J
    .param p3, "runAsleep"    # Z

    .prologue
    .line 473
    if-eqz p3, :cond_0

    .line 474
    iget-wide v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/exchange/ExchangeService;->runAsleep(JJ)V

    .line 477
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    if-eqz p3, :cond_1

    .line 482
    iget-wide v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->runAwake(J)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 481
    if-eqz p3, :cond_1

    .line 482
    iget-wide v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->runAwake(J)V

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 482
    iget-wide v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/ExchangeService;->runAwake(J)V

    :cond_2
    throw v0
.end method


# virtual methods
.method resetHeartbeats(I)V
    .locals 4
    .param p1, "legalHeartbeat"    # I

    .prologue
    const/4 v3, 0x0

    .line 406
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    if-le p1, v0, :cond_3

    .line 414
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_0

    .line 415
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    .line 417
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_1

    .line 418
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingForceHeartbeat:I

    .line 421
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_2

    .line 422
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 434
    :cond_2
    :goto_0
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    .line 436
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeatDropped:Z

    .line 437
    return-void

    .line 424
    :cond_3
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_2

    .line 427
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    .line 429
    iget v0, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_2

    .line 430
    iput p1, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingMinHeartbeat:I

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 132
    iput v8, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasAccountService;->setupService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 140
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mDeviceId:Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v3, v4}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    .line 142
    .local v2, "trafficFlags":I
    or-int/lit8 v3, v2, 0x0

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 143
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catch Lcom/kingsoft/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .line 158
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_3

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v3, :pswitch_data_0

    .line 176
    :goto_1
    const-string/jumbo v3, "sync finished"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 178
    .end local v2    # "trafficFlags":I
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "EmailProvider unavailable; sync ended prematurely"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 165
    .end local v0    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2    # "trafficFlags":I
    :pswitch_0
    :try_start_3
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_1

    .line 168
    :pswitch_1
    const-string/jumbo v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 146
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasAccountService;->sync()V
    :try_end_4
    .catch Lcom/kingsoft/exchange/EasAuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    :try_start_5
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_5

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1

    .line 176
    :goto_2
    const-string/jumbo v3, "sync finished"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_2
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_2

    .line 168
    :pswitch_3
    const-string/jumbo v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    :cond_5
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 148
    .end local v2    # "trafficFlags":I
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Lcom/kingsoft/exchange/EasAuthenticationException;
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Caught authentication error"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 150
    const/4 v3, 0x2

    iput v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    :try_start_7
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_6

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v3, :pswitch_data_2

    .line 176
    :goto_3
    const-string/jumbo v3, "sync finished"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_4
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_3

    .line 168
    :pswitch_5
    const-string/jumbo v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_3

    .line 172
    :cond_6
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 151
    .end local v0    # "e":Lcom/kingsoft/exchange/EasAuthenticationException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Caught IOException: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-nez v1, :cond_7

    const-string/jumbo v1, "No message"

    .end local v1    # "message":Ljava/lang/String;
    :cond_7
    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x1

    iput v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    :try_start_9
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_8

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v3, :pswitch_data_3

    .line 176
    :goto_4
    const-string/jumbo v3, "sync finished"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_6
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_4

    .line 168
    :pswitch_7
    const-string/jumbo v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_4

    .line 172
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v3, "Uncaught exception in AccountMailboxService"

    invoke-virtual {p0, v3, v0}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 158
    :try_start_b
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v3, :cond_9

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Sync finished"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v3, :pswitch_data_4

    .line 176
    :goto_5
    const-string/jumbo v3, "sync finished"

    invoke-static {v3}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_8
    iget-object v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_5

    .line 168
    :pswitch_9
    const-string/jumbo v3, "Sync ended due to an exception."

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_5

    .line 172
    :cond_9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Stopped sync finished."

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    goto :goto_5

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 159
    iget-boolean v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mStop:Z

    if-nez v4, :cond_a

    .line 160
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Sync finished"

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 161
    iget v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    packed-switch v4, :pswitch_data_5

    .line 176
    :goto_6
    const-string/jumbo v4, "sync finished"

    invoke-static {v4}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    throw v3

    .line 165
    :pswitch_a
    iget-object v4, p0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 168
    :pswitch_b
    const-string/jumbo v4, "Sync ended due to an exception."

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    goto :goto_6

    .line 172
    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Stopped sync finished."

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    .line 161
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected sendPing([BI)Lcom/kingsoft/exchange/EasResponse;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "heartbeat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 489
    sget-boolean v0, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send ping, timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kingsoft/exchange/EasAccountService;->mPingHighWaterMark:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 492
    :cond_0
    const-string/jumbo v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/kingsoft/exchange/EasAccountService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sync()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v15, v15, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string/jumbo v15, "0"

    iput-object v15, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 215
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Account syncKey INIT to 0"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 216
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "syncKey"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 221
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    const-string/jumbo v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 222
    .local v5, "firstSync":Z
    if-eqz v5, :cond_1

    .line 223
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Initial FolderSync"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 227
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v14, "syncInterval"

    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v16, "accountKey=? and syncInterval=-3"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_2

    .line 232
    const-string/jumbo v14, "change ping boxes to push"

    invoke-static {v14}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v14, :cond_3

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    if-lez v14, :cond_5

    .line 239
    :cond_3
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Determine EAS protocol version"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->sendHttpClientOptions()Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 242
    .local v10, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 243
    .local v2, "code":I
    const-string/jumbo v14, "OPTIONS response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V

    .line 244
    const/16 v14, 0xc8

    if-ne v2, v14, :cond_8

    .line 245
    const-string/jumbo v14, "MS-ASProtocolCommands"

    invoke-virtual {v10, v14}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 246
    .local v6, "header":Lorg/apache/http/Header;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 247
    const-string/jumbo v14, "ms-asprotocolversions"

    invoke-virtual {v10, v14}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 249
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/kingsoft/exchange/EasAccountService;->setupProtocolVersion(Lcom/kingsoft/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :try_start_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 259
    const-string/jumbo v14, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4028000000000000L

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_4

    .line 261
    const-string/jumbo v14, "flags"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v15, v15, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v15, v15, 0x80

    or-int/lit16 v15, v15, 0x800

    or-int/lit16 v15, v15, 0x1000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 268
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 270
    const-string/jumbo v14, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v3}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    :try_start_4
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 290
    .end local v2    # "code":I
    .end local v6    # "header":Lorg/apache/http/Header;
    .end local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v14, v14, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v15, -0x2

    if-ne v14, v15, :cond_6

    .line 291
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string/jumbo v14, "syncInterval"

    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v16, "accountKey=? and type in (0,68,66,65)"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_6

    .line 296
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Push account; set pushable boxes to push..."

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 300
    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->isStopped()Z

    move-result v14

    if-nez v14, :cond_7

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v14}, Lcom/kingsoft/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v14}, Lcom/kingsoft/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 304
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I
    :try_end_4
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_4 .. :try_end_4} :catch_1

    .line 399
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "firstSync":Z
    :cond_7
    :goto_1
    return-void

    .line 250
    .restart local v2    # "code":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "firstSync":Z
    .restart local v6    # "header":Lorg/apache/http/Header;
    .restart local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_5
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    .end local v2    # "code":I
    .end local v4    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v6    # "header":Lorg/apache/http/Header;
    :catchall_0
    move-exception v14

    :try_start_6
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v14
    :try_end_6
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_1

    .line 378
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "firstSync":Z
    .end local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_1
    move-exception v4

    .line 384
    .local v4, "e":Lcom/kingsoft/exchange/CommandStatusException;
    iget v12, v4, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    .line 385
    .local v12, "status":I
    invoke-static {v12}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 386
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->tryProvision(Lcom/kingsoft/exchange/EasSyncService;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 388
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    goto :goto_1

    .line 272
    .end local v4    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v12    # "status":I
    .restart local v2    # "code":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "firstSync":Z
    .restart local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_8
    const/16 v14, 0x1c3

    if-ne v2, v14, :cond_9

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/kingsoft/exchange/EasAccountService;->canHandleAccountMailboxRedirect(Lcom/kingsoft/exchange/EasResponse;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 274
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Will retry after a brief hold..."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 275
    :cond_9
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 276
    new-instance v14, Lcom/kingsoft/exchange/CommandStatusException;

    const/16 v15, 0x8e

    invoke-direct {v14, v15}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(I)V

    throw v14

    .line 277
    :cond_a
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 278
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    :try_start_8
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_8
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 281
    :cond_b
    :try_start_9
    const-string/jumbo v14, "OPTIONS command failed; throwing IOException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->errorLog(Ljava/lang/String;)V

    .line 282
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14}, Ljava/io/IOException;-><init>()V

    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 307
    .end local v2    # "code":I
    .end local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_c
    const/4 v14, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    goto :goto_1

    .line 311
    :cond_d
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Sending Account syncKey: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 312
    new-instance v11, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v11}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 313
    .local v11, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v14, 0x1d6

    invoke-virtual {v11, v14}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v14

    const/16 v15, 0x1d2

    invoke-virtual {v14, v15}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v15, v15, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/kingsoft/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 315
    const-string/jumbo v14, "FolderSync"

    invoke-virtual {v11}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/kingsoft/exchange/EasAccountService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    :try_end_a
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v10

    .line 317
    .restart local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->isStopped()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v14

    if-eqz v14, :cond_e

    .line 340
    :try_start_c
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_c
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    .line 318
    :cond_e
    :try_start_d
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 319
    .restart local v2    # "code":I
    const/16 v14, 0xc8

    if-ne v2, v14, :cond_f

    .line 320
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13

    .line 321
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 323
    .local v7, "is":Ljava/io/InputStream;
    new-instance v14, Lcom/kingsoft/exchange/adapter/FolderSyncParser;

    new-instance v15, Lcom/kingsoft/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/kingsoft/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V

    invoke-direct {v14, v7, v15}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v14

    if-eqz v14, :cond_13

    .line 340
    :try_start_e
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_e
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 328
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_f
    :try_start_f
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 329
    new-instance v14, Lcom/kingsoft/exchange/CommandStatusException;

    const/16 v15, 0x8e

    invoke-direct {v14, v15}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(I)V

    throw v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 340
    .end local v2    # "code":I
    :catchall_1
    move-exception v14

    :try_start_10
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v14
    :try_end_10
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_10 .. :try_end_10} :catch_1

    .line 330
    .restart local v2    # "code":I
    :cond_10
    :try_start_11
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 331
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 340
    :try_start_12
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_12
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_1

    .line 333
    :cond_11
    const/16 v14, 0x1c3

    if-ne v2, v14, :cond_12

    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/kingsoft/exchange/EasAccountService;->canHandleAccountMailboxRedirect(Lcom/kingsoft/exchange/EasResponse;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v14

    if-eqz v14, :cond_12

    .line 340
    :try_start_14
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_14
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_0

    .line 337
    :cond_12
    :try_start_15
    const-string/jumbo v14, "FolderSync response error: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/kingsoft/exchange/EasAccountService;->userLog(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 340
    :cond_13
    :try_start_16
    invoke-virtual {v10}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 344
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 345
    const-string/jumbo v14, "syncInterval"

    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v16, "accountKey=? and syncInterval=-4"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_14

    .line 349
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Set push/hold boxes to push..."

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 355
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v14, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 356
    .local v8, "key":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasAccountService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v15, v15, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static/range {v14 .. v16}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v9

    .line 358
    .local v9, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mContext:Landroid/content/Context;

    invoke-static {v14, v9}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->resetSecurityPolicies()V

    .line 364
    .end local v9    # "policy":Lcom/android/emailcommon/provider/Policy;
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_16
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_16 .. :try_end_16} :catch_1

    move-result-object v13

    .line 366
    .local v13, "threadName":Ljava/lang/String;
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/EasAccountService;->runPingLoop()V
    :try_end_17
    .catch Lcom/kingsoft/exchange/StaleFolderListException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/kingsoft/exchange/IllegalHeartbeatException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 375
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_0

    .line 367
    :catch_2
    move-exception v4

    .line 369
    .local v4, "e":Lcom/kingsoft/exchange/StaleFolderListException;
    const/4 v14, 0x1

    :try_start_19
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "Ping interrupted; folder list requires sync..."

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 375
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_1a .. :try_end_1a} :catch_1

    goto/16 :goto_0

    .line 370
    .end local v4    # "e":Lcom/kingsoft/exchange/StaleFolderListException;
    :catch_3
    move-exception v4

    .line 373
    .local v4, "e":Lcom/kingsoft/exchange/IllegalHeartbeatException;
    :try_start_1b
    iget v14, v4, Lcom/kingsoft/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->resetHeartbeats(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 375
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "e":Lcom/kingsoft/exchange/IllegalHeartbeatException;
    :catchall_2
    move-exception v14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v14
    :try_end_1c
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_1c .. :try_end_1c} :catch_1

    .line 391
    .end local v2    # "code":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "firstSync":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v11    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v13    # "threadName":Ljava/lang/String;
    .local v4, "e":Lcom/kingsoft/exchange/CommandStatusException;
    .restart local v12    # "status":I
    :cond_16
    invoke-static {v12}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 392
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    goto/16 :goto_1

    .line 395
    :cond_17
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unexpected status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasAccountService;->userLog([Ljava/lang/String;)V

    .line 396
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/kingsoft/exchange/EasAccountService;->mExitStatus:I

    goto/16 :goto_1
.end method
