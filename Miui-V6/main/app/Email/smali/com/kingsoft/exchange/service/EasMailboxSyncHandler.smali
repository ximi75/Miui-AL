.class public Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;
.super Lcom/kingsoft/exchange/service/EasSyncHandler;
.source "EasMailboxSyncHandler.java"


# static fields
.field private static final EMAIL_WINDOW_SIZE:I = 0xa

.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final FETCH_REQUEST_SERVER_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EasMailboxSyncHandler"

.field private static final WHERE_BODY_SOURCE_MESSAGE_KEY:Ljava/lang/String; = "sourceMessageKey=?"


# instance fields
.field private final mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagesToFetch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "syncExtras"    # Landroid/os/Bundle;
    .param p6, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/kingsoft/exchange/service/EasSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private addFetchCommands(Lcom/kingsoft/exchange/adapter/Serializer;Z)Z
    .locals 4
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "first"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    if-eqz p2, :cond_0

    .line 206
    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 207
    const/4 p2, 0x0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "serverId":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 213
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 215
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return p2
.end method

.method private addToFetchRequestList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 91
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "flagLoaded=2 AND mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 97
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_1
    return-void
.end method

.method private buildMessageBodyRequest(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 433
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 434
    const/16 v1, 0x506

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 436
    const/16 v1, 0x507

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 437
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 439
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 440
    const/16 v1, 0x508

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 441
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->getProtocolVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028000000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 442
    const/16 v1, 0x445

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 444
    const/16 v1, 0x446

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 445
    const/16 v1, 0x447

    const-string/jumbo v2, "1000000"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 446
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 452
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 454
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 455
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 456
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 457
    return-object v0

    .line 448
    :cond_0
    const/16 v1, 0x22

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 449
    const/16 v1, 0x19

    const-string/jumbo v2, "7"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 68
    .local v0, "syncLookback":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 83
    const-string/jumbo v1, "3"

    :goto_1
    return-object v1

    .line 66
    .end local v0    # "syncLookback":I
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    goto :goto_0

    .line 70
    .restart local v0    # "syncLookback":I
    :pswitch_0
    const-string/jumbo v1, "1"

    goto :goto_1

    .line 72
    :pswitch_1
    const-string/jumbo v1, "2"

    goto :goto_1

    .line 74
    :pswitch_2
    const-string/jumbo v1, "3"

    goto :goto_1

    .line 76
    :pswitch_3
    const-string/jumbo v1, "4"

    goto :goto_1

    .line 78
    :pswitch_4
    const-string/jumbo v1, "5"

    goto :goto_1

    .line 80
    :pswitch_5
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 291
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sourceMessageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 295
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :goto_0
    return v0

    .line 297
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v7

    .line 300
    goto :goto_0
.end method


# virtual methods
.method protected addDeletedItems(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 10
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p3, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "deletedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 239
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 247
    if-eqz v6, :cond_3

    .line 249
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "serverId":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    if-eqz p3, :cond_1

    .line 259
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 260
    const/4 p3, 0x0

    .line 263
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 264
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    .end local v7    # "serverId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_3
    return p3
.end method

.method protected cleanup(I)V
    .locals 1
    .param p1, "syncResult"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    :cond_0
    if-ltz p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->cleanupDeleteItem()V

    .line 234
    :cond_1
    return-void
.end method

.method public cleanupDeleteItem()V
    .locals 8

    .prologue
    .line 276
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [J

    .line 279
    .local v4, "ids":[J
    const/4 v0, 0x0

    .line 280
    .local v0, "i":I
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 281
    .local v3, "id":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v0

    move v0, v1

    .line 282
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 283
    .end local v3    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v6, v4, v7}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->deleteRowsForMessageUpdate(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)V

    .line 286
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected getFolderClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "Email"

    return-object v0
.end method

.method protected getParser(Ljava/io/InputStream;)Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 120
    .local v0, "parse":Lcom/kingsoft/exchange/adapter/EmailSyncParser;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->setIsHeaderOnly(Z)V

    .line 121
    return-object v0
.end method

.method protected getTrafficFlag()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public performSyncMessageBody(Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)Z
    .locals 11
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 390
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->buildMessageBodyRequest(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v10

    .line 392
    .local v10, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 427
    .end local v10    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :goto_0
    return v2

    .line 395
    .restart local v10    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :cond_0
    const-string/jumbo v2, "ItemOperations"

    invoke-virtual {v10}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 403
    .local v8, "resp":Lcom/kingsoft/exchange/EasResponse;
    const/4 v9, -0x1

    .line 404
    .local v9, "responseResult":I
    :try_start_1
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v6

    .line 406
    .local v6, "code":I
    const/16 v2, 0xc8

    if-ne v6, v2, :cond_1

    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 410
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v0, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    .line 411
    .local v0, "p":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ItemOperationsParser;->parse()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    .end local v0    # "p":Lcom/kingsoft/exchange/adapter/ItemOperationsParser;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    :try_start_3
    const-string/jumbo v2, "EasMailboxSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sync result this time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 427
    const/4 v2, 0x1

    goto :goto_0

    .line 396
    .end local v6    # "code":I
    .end local v8    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v9    # "responseResult":I
    .end local v10    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catch_0
    move-exception v7

    .line 397
    .local v7, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0

    .line 398
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 399
    .local v7, "e":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    goto :goto_0

    .line 412
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v6    # "code":I
    .restart local v8    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v9    # "responseResult":I
    .restart local v10    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catch_2
    move-exception v7

    .line 413
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 424
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v6    # "code":I
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v2

    .line 414
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v6    # "code":I
    :catch_3
    move-exception v7

    .line 415
    .local v7, "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :try_start_5
    invoke-virtual {v7}, Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;->printStackTrace()V

    goto :goto_1

    .line 416
    .end local v7    # "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :catch_4
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method protected setInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 0
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;

    .prologue
    .line 127
    return-void
.end method

.method protected setNonInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;I)V
    .locals 9
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "numWindows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/16 v8, 0x22

    const/16 v7, 0x17

    const-wide/high16 v5, 0x4028000000000000L

    .line 140
    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMessagesToFetch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 144
    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 153
    .local v0, "isTrashMailbox":Z
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->getProtocolVersion()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 154
    const/16 v3, 0x1e

    const-string/jumbo v4, "0"

    invoke-virtual {p1, v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 157
    :cond_0
    const/16 v3, 0x13

    invoke-virtual {p1, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 159
    mul-int/lit8 v1, p2, 0xa

    .line 160
    .local v1, "windowSize":I
    const/16 v3, 0x20a

    if-le v1, v3, :cond_2

    .line 161
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Max window size reached and still no data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v0    # "isTrashMailbox":Z
    .end local v1    # "windowSize":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .restart local v0    # "isTrashMailbox":Z
    .restart local v1    # "windowSize":I
    :cond_2
    const/16 v3, 0x15

    if-ge v1, v2, :cond_4

    .end local v1    # "windowSize":I
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 165
    invoke-virtual {p1, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 167
    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->getEmailFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 169
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->getProtocolVersion()D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_5

    .line 172
    const/16 v2, 0x445

    invoke-virtual {p1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 174
    const/16 v2, 0x446

    const-string/jumbo v3, "2"

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 175
    const/16 v2, 0x447

    const-string/jumbo v3, "1000000"

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 176
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 184
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 194
    .end local v0    # "isTrashMailbox":Z
    :goto_3
    return-void

    .restart local v0    # "isTrashMailbox":Z
    .restart local v1    # "windowSize":I
    :cond_4
    move v1, v2

    .line 163
    goto :goto_1

    .line 179
    .end local v1    # "windowSize":I
    :cond_5
    const-string/jumbo v2, "2"

    invoke-virtual {p1, v8, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 180
    const/16 v2, 0x23

    const-string/jumbo v3, "7"

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_2

    .line 189
    .end local v0    # "isTrashMailbox":Z
    :cond_6
    invoke-virtual {p1, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 190
    const-string/jumbo v2, "0"

    invoke-virtual {p1, v8, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 191
    const/16 v2, 0x19

    const-string/jumbo v3, "7"

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 192
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_3
.end method

.method protected setUpsyncCommands(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 3
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->addDeletedItems(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v0

    .line 221
    .local v0, "isFirst":Z
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/exchange/service/EasMailboxSyncHandler;->addFetchCommands(Lcom/kingsoft/exchange/adapter/Serializer;Z)Z

    .line 222
    return-void
.end method
