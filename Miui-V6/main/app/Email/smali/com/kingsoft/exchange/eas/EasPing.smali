.class public Lcom/kingsoft/exchange/eas/EasPing;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasPing.java"


# static fields
.field private static final DEFAULT_PING_HEARTBEAT:J = 0x1e0L

.field private static final EXTRA_POST_TIMEOUT_MILLIS:J = 0x1388L

.field private static final MAXIMUM_HEARTBEAT_INCREMENT:J = 0x12cL

.field private static final MAXIMUM_PING_HEARTBEAT:J = 0x690L

.field private static final MINIMUM_PING_HEARTBEAT:J = 0x1e0L

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final WHERE_ACCOUNT_KEY_AND_SERVER_ID:Ljava/lang/String; = "accountKey=? and serverId=?"


# instance fields
.field private final mAccountId:J

.field private final mAmAccount:Landroid/accounts/Account;

.field private mPingDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "amAccount"    # Landroid/accounts/Account;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 94
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    .line 95
    iput-object p3, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    .line 96
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    .line 97
    iget-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    const-wide/16 v0, 0x1e0

    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    .line 100
    :cond_0
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initial ping duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    return-void
.end method

.method private decreasePingDuration()V
    .locals 6

    .prologue
    .line 117
    const-wide/16 v0, 0x1e0

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    const-wide/16 v4, 0x12c

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    .line 119
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decreasePingDuration adjusting by 300 new duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->storePingDuration()V

    .line 122
    return-void
.end method

.method private handleOneMailbox(Lcom/kingsoft/exchange/adapter/Serializer;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 3
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    iget v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    if-nez p1, :cond_0

    .line 304
    new-instance p1, Lcom/kingsoft/exchange/adapter/Serializer;

    .end local p1    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    invoke-direct {p1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 305
    .restart local p1    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v0, 0x345

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 306
    const/16 v0, 0x348

    iget-wide v1, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 307
    const/16 v0, 0x349

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 309
    :cond_0
    const/16 v0, 0x34a

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 310
    const/16 v0, 0x34b

    iget-object v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 311
    const/16 v0, 0x34c

    iget v1, p2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v1}, Lcom/kingsoft/exchange/Eas;->getFolderClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 312
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 315
    :cond_1
    return-object p1
.end method

.method private increasePingDuration()V
    .locals 6

    .prologue
    .line 125
    const-wide/16 v0, 0x690

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    .line 127
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increasePingDuration adjusting by 300 new duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->storePingDuration()V

    .line 130
    return-void
.end method

.method private requestFolderSync()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 414
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "__account_only__"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 416
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "requestFolderSync EasOperation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    return-void
.end method

.method public static requestPing(Landroid/accounts/Account;)V
    .locals 4
    .param p0, "amAccount"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x1

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 421
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "__push_only__"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 423
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "requestPing EasOperation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    return-void
.end method

.method private requestSyncForSyncList(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "syncList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 325
    .local v4, "bindArguments":[Ljava/lang/String;
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 327
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v12, "mailboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v8, "contentTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 331
    .local v13, "serverId":Ljava/lang/String;
    const/4 v0, 0x1

    aput-object v13, v4, v0

    .line 333
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "accountKey=? and serverId=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 393
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v13    # "serverId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 394
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v14}, Lcom/android/emailcommon/provider/Mailbox;->getAuthority(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/eas/EasPing;->requestNoOpSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v14    # "type":I
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v13    # "serverId":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 384
    .local v10, "mailboxId":J
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 385
    .local v7, "contentType":I
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v7    # "contentType":I
    .end local v10    # "mailboxId":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 406
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v13    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v0, v12}, Lcom/kingsoft/exchange/eas/EasPing;->requestSyncForMailboxes(Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 407
    return-void

    .line 394
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private storePingDuration()V
    .locals 5

    .prologue
    .line 133
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "pingDuration"

    iget-wide v2, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasPing;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 136
    return-void
.end method


# virtual methods
.method protected addPolicyKeyHeaderToRequest()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public final doPing()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 105
    .local v1, "startTime":J
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/eas/EasPing;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    .line 106
    .local v0, "result":I
    const/4 v6, -0x2

    if-ne v0, v6, :cond_1

    move v0, v5

    .line 113
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return v0

    .line 108
    .restart local v0    # "result":I
    :cond_1
    const/4 v6, -0x4

    if-ne v0, v6, :cond_0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v3, v6, v1

    .line 110
    .local v3, "timeoutDuration":J
    const-string/jumbo v6, "Exchange"

    const-string/jumbo v7, "doPing request failure, timed out after %d millis"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v6, v7, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->decreasePingDuration()V

    goto :goto_0
.end method

.method public final getAccountId()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    return-wide v0
.end method

.method public final getAmAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAmAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "Ping"

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasPing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 157
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Could not read mailboxes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_0
    const/4 v2, 0x0

    .line 163
    .local v2, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 165
    .local v1, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 166
    invoke-direct {p0, v2, v1}, Lcom/kingsoft/exchange/eas/EasPing;->handleOneMailbox(Lcom/kingsoft/exchange/adapter/Serializer;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 167
    goto :goto_0

    .line 169
    .end local v1    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 172
    if-nez v2, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasPing;->abort()V

    .line 174
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "No mailboxes want push"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 178
    :cond_2
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 179
    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/eas/EasPing;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    return-object v3
.end method

.method protected getTimeout()J
    .locals 4

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 11
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Empty ping response"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_0
    new-instance v3, Lcom/kingsoft/exchange/adapter/PingParser;

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingsoft/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v3, "pp":Lcom/kingsoft/exchange/adapter/PingParser;
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/PingParser;->parse()Z

    .line 193
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/PingParser;->getPingStatus()I

    move-result v2

    .line 198
    .local v2, "pingStatus":I
    sparse-switch v2, :sswitch_data_0

    .line 273
    .end local v2    # "pingStatus":I
    :goto_0
    return v2

    .line 200
    .restart local v2    # "pingStatus":I
    :sswitch_0
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Ping expired for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->increasePingDuration()V

    goto :goto_0

    .line 205
    :sswitch_1
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Ping found changed folders for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingsoft/exchange/eas/EasPing;->requestSyncForSyncList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 213
    :sswitch_2
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Bad ping request for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 216
    :sswitch_3
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/PingParser;->getHeartbeatInterval()I

    move-result v4

    int-to-long v0, v4

    .line 217
    .local v0, "newDuration":J
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Heartbeat out of bounds for account %d, old duration %d new duration %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    iput-wide v0, p0, Lcom/kingsoft/exchange/eas/EasPing;->mPingDuration:J

    .line 220
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->storePingDuration()V

    goto :goto_0

    .line 223
    .end local v0    # "newDuration":J
    :sswitch_4
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Too many folders for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 226
    :sswitch_5
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "FolderSync needed for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasPing;->requestFolderSync()V

    goto/16 :goto_0

    .line 230
    :sswitch_6
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Server error for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 234
    :sswitch_7
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Retryable server error for account %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasPing;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 247
    :sswitch_8
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Unexpected error %d on ping"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    const/4 v2, -0x7

    goto/16 :goto_0

    .line 266
    :sswitch_9
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Unexpected error %d on ping"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 267
    const/16 v2, -0xa

    goto/16 :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x6f -> :sswitch_7
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x80 -> :sswitch_8
        0x81 -> :sswitch_8
        0x82 -> :sswitch_8
        0x83 -> :sswitch_8
        0x84 -> :sswitch_9
        0x85 -> :sswitch_9
        0x86 -> :sswitch_9
        0x87 -> :sswitch_9
        0x88 -> :sswitch_9
        0x89 -> :sswitch_9
        0x8a -> :sswitch_9
        0x8b -> :sswitch_8
        0x8c -> :sswitch_9
        0x8d -> :sswitch_8
        0x8e -> :sswitch_9
        0x8f -> :sswitch_9
        0x90 -> :sswitch_9
        0x91 -> :sswitch_9
        0x93 -> :sswitch_9
        0x94 -> :sswitch_9
        0x96 -> :sswitch_9
        0xb1 -> :sswitch_8
    .end sparse-switch
.end method
