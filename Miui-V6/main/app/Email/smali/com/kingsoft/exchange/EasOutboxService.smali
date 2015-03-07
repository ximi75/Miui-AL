.class public Lcom/kingsoft/exchange/EasOutboxService;
.super Lcom/kingsoft/exchange/EasSyncService;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;,
        Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;,
        Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;
    }
.end annotation


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SMART_FORWARD:I = 0x2

.field public static final MODE_SMART_REPLY:I = 0x1

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL_TIMEOUT:I = 0xdbba0

.field public static final WHERE_MESSAGE_KEY:Ljava/lang/String; = "messageKey=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/kingsoft/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 7
    .param p0, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .param p1, "atts"    # [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 301
    .local v4, "location":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v5

    .line 302
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 303
    .local v0, "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    const/4 v5, 0x1

    goto :goto_0

    .line 302
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getOriginalMessageInfo(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J

    .prologue
    .line 250
    const/4 v4, 0x0

    .line 251
    .local v4, "itemId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 254
    .local v2, "collectionId":Ljava/lang/String;
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/kingsoft/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "messageKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {p0, v7, v8, v9, v10}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "cols":[Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 258
    .local v5, "refId":J
    if-eqz v3, :cond_0

    .line 259
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 261
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncServerId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "mailboxKey"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "protocolSearchInfo"

    aput-object v10, v8, v9

    invoke-static {p0, v7, v5, v6, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 264
    if-eqz v3, :cond_0

    .line 265
    const/4 v7, 0x0

    aget-object v4, v3, v7

    .line 266
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 268
    .local v0, "boxId":J
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "serverId"

    aput-object v10, v8, v9

    invoke-static {p0, v7, v0, v1, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_0

    .line 271
    const/4 v7, 0x0

    aget-object v2, v3, v7

    .line 277
    .end local v0    # "boxId":J
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 278
    new-instance v7, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;

    invoke-direct {v7, v5, v6, v4, v2}, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private sendFailed(JI)V
    .locals 3
    .param p1, "msgId"    # J
    .param p3, "result"    # I

    .prologue
    .line 284
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncServerId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    iget-object v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 287
    return-void
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 553
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 554
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 555
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 556
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 557
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "reply"    # Z
    .param p2, "info"    # Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string/jumbo v1, "SmartReply"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p2, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p2, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    :cond_0
    const-string/jumbo v1, "SmartForward"

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasOutboxService;->setupService()Z

    .line 496
    iget-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 497
    iget-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 499
    .local v7, "cacheDir":Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mDeviceId:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 504
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 507
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 509
    .local v9, "msgId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/kingsoft/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0, v7, v9, v10}, Lcom/kingsoft/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 517
    .local v11, "result":I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_1

    .line 518
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 544
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "msgId":J
    .end local v11    # "result":I
    :goto_0
    return-void

    .line 520
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "msgId":J
    .restart local v11    # "result":I
    :cond_1
    const/16 v0, 0x17

    if-ne v11, v0, :cond_2

    .line 521
    const/4 v0, 0x4

    :try_start_3
    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto :goto_0

    .line 523
    :cond_2
    const/16 v0, 0x15

    if-ne v11, v0, :cond_0

    .line 524
    const/4 v0, 0x3

    :try_start_5
    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 530
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto :goto_0

    .line 530
    .end local v9    # "msgId":J
    .end local v11    # "result":I
    :cond_3
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 534
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 535
    .local v8, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_9
    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto/16 :goto_0

    .line 536
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 537
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 538
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v0, "Outbox exited with status "

    iget v1, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    goto/16 :goto_0

    .line 540
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ": sync finished"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 541
    const-string/jumbo v1, "Outbox exited with status "

    iget v2, p0, Lcom/kingsoft/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 542
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    throw v0
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 41
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 323
    const/16 v34, 0x0

    .line 325
    .local v34, "result":I
    const-string/jumbo v4, "eas_"

    const-string/jumbo v9, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v9, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v36

    .line 328
    .local v36, "tmpFile":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 329
    .local v5, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_1

    const/16 v4, 0x10

    .line 485
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 486
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    .line 489
    :cond_0
    :goto_0
    return v4

    .line 332
    :cond_1
    :try_start_1
    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v18, v0

    .line 333
    .local v18, "flags":I
    and-int/lit8 v4, v18, 0x1

    if-eqz v4, :cond_7

    const/16 v31, 0x1

    .line 334
    .local v31, "reply":Z
    :goto_1
    and-int/lit8 v4, v18, 0x2

    if-eqz v4, :cond_8

    const/16 v19, 0x1

    .line 335
    .local v19, "forward":Z
    :goto_2
    const/high16 v4, 0x20000

    and-int v4, v4, v18

    if-nez v4, :cond_9

    const/16 v21, 0x1

    .line 338
    .local v21, "includeQuotedText":Z
    :goto_3
    const/16 v30, 0x0

    .line 340
    .local v30, "referenceInfo":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v21, :cond_3

    if-nez v31, :cond_2

    if-eqz v19, :cond_3

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v30

    .line 344
    :cond_3
    if-eqz v30, :cond_a

    const/4 v7, 0x1

    .line 348
    .local v7, "smartSend":Z
    :goto_4
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v4, v4, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    .line 349
    const/4 v7, 0x0

    .line 352
    :cond_4
    const/16 v32, 0x0

    .line 353
    .local v32, "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-eqz v7, :cond_c

    if-eqz v19, :cond_c

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v37, v0

    move-wide/from16 v0, v37

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v26

    .line 357
    .local v26, "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;->mRefId:J

    move-wide/from16 v37, v0

    move-wide/from16 v0, v37

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v29

    .line 359
    .local v29, "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v15, v29

    .local v15, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v15

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v28, v15, v20

    .line 361
    .local v28, "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 362
    const/4 v7, 0x0

    .line 366
    .end local v28    # "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    if-eqz v7, :cond_c

    .line 367
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .restart local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    move-object/from16 v15, v26

    array-length v0, v15

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    aget-object v25, v15, v20

    .line 370
    .local v25, "outAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/EasOutboxService;->amongAttachments(Lcom/android/emailcommon/provider/EmailContent$Attachment;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 371
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 333
    .end local v7    # "smartSend":Z
    .end local v15    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19    # "forward":Z
    .end local v20    # "i$":I
    .end local v21    # "includeQuotedText":Z
    .end local v23    # "len$":I
    .end local v25    # "outAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v26    # "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v29    # "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v30    # "referenceInfo":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v31    # "reply":Z
    .end local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_7
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v31    # "reply":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 335
    .restart local v19    # "forward":Z
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 344
    .restart local v21    # "includeQuotedText":Z
    .restart local v30    # "referenceInfo":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 359
    .restart local v7    # "smartSend":Z
    .restart local v15    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v20    # "i$":I
    .restart local v23    # "len$":I
    .restart local v26    # "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v28    # "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v29    # "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 378
    .end local v15    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v26    # "outAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v28    # "refAtt":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v29    # "refAtts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_c
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v36

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 381
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    if-eqz v7, :cond_11

    move-object/from16 v9, v32

    :goto_7
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;Z)V

    .line 383
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v37

    const-wide/high16 v39, 0x402c000000000000L

    cmpl-double v4, v37, v39

    if-ltz v4, :cond_12

    const/16 v22, 0x1

    .line 391
    .local v22, "isEas14":Z
    :goto_8
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 392
    .local v10, "fileStream":Ljava/io/FileInputStream;
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 397
    .local v11, "fileLength":J
    const/4 v13, 0x0

    .line 398
    .local v13, "modeTag":I
    if-eqz v22, :cond_15

    .line 399
    if-nez v7, :cond_13

    const/16 v24, 0x0

    .line 401
    .local v24, "mode":I
    :goto_9
    # getter for: Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->MODE_TAGS:[I
    invoke-static {}, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;->access$100()[I

    move-result-object v4

    aget v13, v4, v24

    .line 402
    new-instance v8, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v14, v5

    invoke-direct/range {v8 .. v14}, Lcom/kingsoft/exchange/EasOutboxService$SendMailEntity;-><init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 408
    .end local v24    # "mode":I
    .local v8, "inputEntity":Lorg/apache/http/HttpEntity;
    :goto_a
    const-string/jumbo v16, "SendMail"

    .line 409
    .local v16, "cmd":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 411
    if-eqz v22, :cond_17

    .line 412
    if-eqz v31, :cond_16

    const-string/jumbo v16, "SmartReply"

    .line 419
    :cond_d
    :goto_b
    if-nez v22, :cond_e

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "&SaveInSent=T"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 422
    :cond_e
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Send cmd: "

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 425
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8, v4}, Lcom/kingsoft/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v33

    .line 427
    .local v33, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 428
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    .line 429
    .local v17, "code":I
    const/16 v4, 0xc8

    move/from16 v0, v17

    if-ne v0, v4, :cond_1c

    .line 432
    if-eqz v22, :cond_1a

    .line 435
    :try_start_3
    new-instance v27, Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;

    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v13}, Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 438
    .local v27, "p":Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;->parse()Z

    .line 440
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;->getStatus()I

    move-result v35

    .line 441
    .local v35, "status":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "SendMail error, status: "

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 442
    invoke-static/range {v35 .. v35}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 443
    const/16 v34, 0x17

    .line 451
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_3
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 486
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    :cond_10
    move/from16 v4, v34

    goto/16 :goto_0

    .line 381
    .end local v8    # "inputEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    .end local v11    # "fileLength":J
    .end local v13    # "modeTag":I
    .end local v16    # "cmd":Ljava/lang/String;
    .end local v17    # "code":I
    .end local v22    # "isEas14":Z
    .end local v27    # "p":Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;
    .end local v33    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v35    # "status":I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 386
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 399
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileLength":J
    .restart local v13    # "modeTag":I
    .restart local v22    # "isEas14":Z
    :cond_13
    if-eqz v31, :cond_14

    const/16 v24, 0x1

    goto/16 :goto_9

    :cond_14
    const/16 v24, 0x2

    goto/16 :goto_9

    .line 405
    :cond_15
    :try_start_5
    new-instance v8, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v8, v10, v11, v12}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v8    # "inputEntity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_a

    .line 412
    .restart local v16    # "cmd":Ljava/lang/String;
    :cond_16
    const-string/jumbo v16, "SmartForward"

    goto/16 :goto_b

    .line 414
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/EasOutboxService;->generateSmartSendCmd(ZLcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v16

    goto/16 :goto_b

    .line 444
    .restart local v17    # "code":I
    .restart local v27    # "p":Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;
    .restart local v33    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v35    # "status":I
    :cond_18
    const/16 v4, 0x96

    move/from16 v0, v35

    if-ne v0, v4, :cond_f

    if-eqz v7, :cond_f

    .line 447
    :try_start_6
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_6
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 448
    const/4 v7, 0x0

    .line 480
    :try_start_7
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_8

    .line 485
    .end local v5    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "smartSend":Z
    .end local v8    # "inputEntity":Lorg/apache/http/HttpEntity;
    .end local v10    # "fileStream":Ljava/io/FileInputStream;
    .end local v11    # "fileLength":J
    .end local v13    # "modeTag":I
    .end local v16    # "cmd":Ljava/lang/String;
    .end local v17    # "code":I
    .end local v18    # "flags":I
    .end local v19    # "forward":Z
    .end local v21    # "includeQuotedText":Z
    .end local v22    # "isEas14":Z
    .end local v27    # "p":Lcom/kingsoft/exchange/EasOutboxService$SendMailParser;
    .end local v30    # "referenceInfo":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v31    # "reply":Z
    .end local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v33    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v35    # "status":I
    :catchall_0
    move-exception v4

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 486
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    :cond_19
    throw v4

    .line 453
    .restart local v5    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "smartSend":Z
    .restart local v8    # "inputEntity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "fileLength":J
    .restart local v13    # "modeTag":I
    .restart local v16    # "cmd":Ljava/lang/String;
    .restart local v17    # "code":I
    .restart local v18    # "flags":I
    .restart local v19    # "forward":Z
    .restart local v21    # "includeQuotedText":Z
    .restart local v22    # "isEas14":Z
    .restart local v30    # "referenceInfo":Lcom/kingsoft/exchange/EasOutboxService$OriginalMessageInfo;
    .restart local v31    # "reply":Z
    .restart local v32    # "requiredAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .restart local v33    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_0
    move-exception v4

    .line 459
    :cond_1a
    const/4 v4, 0x1

    :try_start_8
    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v14, "Deleting message..."

    aput-object v14, v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v4, v9, v14, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 480
    :try_start_9
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 485
    :goto_c
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 486
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z

    :cond_1b
    move/from16 v4, v34

    .line 489
    goto/16 :goto_0

    .line 464
    :cond_1c
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    if-eqz v7, :cond_1d

    .line 467
    :try_start_a
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 468
    const/4 v7, 0x0

    .line 480
    :try_start_b
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_8

    .line 470
    :cond_1d
    const/4 v4, 0x1

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Message sending failed, code: "

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingsoft/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 472
    const/16 v34, 0x16

    .line 476
    :cond_1e
    :goto_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 480
    :try_start_d
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c

    .line 473
    :cond_1f
    :try_start_e
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v4

    if-eqz v4, :cond_1e

    .line 474
    const/16 v34, 0x17

    goto :goto_d

    .line 480
    .end local v17    # "code":I
    :catchall_1
    move-exception v4

    :try_start_f
    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method
