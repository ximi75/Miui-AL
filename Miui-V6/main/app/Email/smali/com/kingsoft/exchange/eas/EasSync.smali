.class public Lcom/kingsoft/exchange/eas/EasSync;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasSync.java"


# instance fields
.field private mInitialSync:Z

.field private mMailboxId:J

.field private mMailboxServerId:Ljava/lang/String;

.field private mMailboxSyncKey:Ljava/lang/String;

.field private mMessageUpdateStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasSync;->mInitialSync:Z

    .line 64
    return-void
.end method

.method private addOneCollectionToRequest(Lcom/kingsoft/exchange/adapter/Serializer;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "collectionType"    # I
    .param p3, "mailboxServerId"    # Ljava/lang/String;
    .param p4, "mailboxSyncKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/Serializer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    .local p5, "stateChanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    const/16 v9, 0xf

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 236
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasSync;->getProtocolVersion()D

    move-result-wide v9

    const-wide v11, 0x4028333333333333L

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 237
    const/16 v9, 0x10

    invoke-static {p2}, Lcom/kingsoft/exchange/Eas;->getFolderClass(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 239
    :cond_0
    const/16 v9, 0xb

    move-object/from16 v0, p4

    invoke-virtual {p1, v9, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 240
    const/16 v9, 0x12

    move-object/from16 v0, p3

    invoke-virtual {p1, v9, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 241
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasSync;->getProtocolVersion()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028000000000000L

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    .line 246
    const/16 v9, 0x13

    const-string/jumbo v10, "0"

    invoke-virtual {p1, v9, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 248
    :cond_1
    const/16 v9, 0x16

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 249
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 250
    .local v2, "change":Lcom/android/emailcommon/provider/MessageStateChange;
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 251
    const/16 v9, 0xd

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageStateChange;->getServerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 252
    const/16 v9, 0x1d

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 253
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageStateChange;->getNewFlagRead()I

    move-result v5

    .line 254
    .local v5, "newFlagRead":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 255
    const/16 v9, 0x95

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 257
    :cond_2
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageStateChange;->getNewFlagFavorite()I

    move-result v4

    .line 258
    .local v4, "newFlagFavorite":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    .line 265
    if-eqz v4, :cond_4

    .line 267
    const/16 v9, 0xba

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0xbb

    const-string/jumbo v11, "2"

    invoke-virtual {v9, v10, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 269
    const/16 v9, 0xbd

    const-string/jumbo v10, "FollowUp"

    invoke-virtual {p1, v9, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 271
    .local v6, "now":J
    const-string/jumbo v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 273
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 276
    invoke-static {v1}, Lcom/kingsoft/exchange/eas/EasSync;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "utc":Ljava/lang/String;
    const/16 v9, 0x25e

    invoke-virtual {p1, v9, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0x25f

    invoke-virtual {v9, v10, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 279
    const-wide/32 v9, 0x240c8400

    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    invoke-static {v1}, Lcom/kingsoft/exchange/eas/EasSync;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    .line 281
    const/16 v9, 0x24c

    invoke-virtual {p1, v9, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v10, 0x24d

    invoke-virtual {v9, v10, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 282
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 287
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v6    # "now":J
    .end local v8    # "utc":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 284
    :cond_4
    const/16 v9, 0xba

    invoke-virtual {p1, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_1

    .line 289
    .end local v2    # "change":Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v4    # "newFlagFavorite":I
    .end local v5    # "newFlagRead":I
    :cond_5
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 290
    return-void
.end method

.method private static formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d"

    new-array v3, v5, [Ljava/lang/Object;

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMessageId(Ljava/lang/String;)J
    .locals 4
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasSync;->mStateChanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 69
    .local v0, "change":Lcom/android/emailcommon/provider/MessageStateChange;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/MessageStateChange;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/MessageStateChange;->getMessageId()J

    move-result-wide v2

    .line 73
    .end local v0    # "change":Lcom/android/emailcommon/provider/MessageStateChange;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private handleMessageUpdateStatus(Ljava/util/Map;[[J[I)V
    .locals 9
    .param p2, "messageIds"    # [[J
    .param p3, "counts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[[J[I)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "messageStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "serverId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 82
    .local v6, "status":I
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->shouldRetry(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const/4 v2, 0x1

    .line 87
    .local v2, "index":I
    :goto_1
    invoke-direct {p0, v5}, Lcom/kingsoft/exchange/eas/EasSync;->getMessageId(Ljava/lang/String;)J

    move-result-wide v3

    .line 88
    .local v3, "messageId":J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    .line 89
    aget-object v7, p2, v2

    aget v8, p3, v2

    aput-wide v3, v7, v8

    .line 90
    aget v7, p3, v2

    add-int/lit8 v7, v7, 0x1

    aput v7, p3, v2

    goto :goto_0

    .line 85
    .end local v2    # "index":I
    .end local v3    # "messageId":J
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "index":I
    goto :goto_1

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "index":I
    .end local v5    # "serverId":Ljava/lang/String;
    .end local v6    # "status":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "Sync"

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
    .line 168
    new-instance v1, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 169
    .local v1, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 170
    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 171
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxServerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxSyncKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/exchange/eas/EasSync;->mStateChanges:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/eas/EasSync;->addOneCollectionToRequest(Lcom/kingsoft/exchange/adapter/Serializer;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 173
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 174
    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/eas/EasSync;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeout()J
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasSync;->mInitialSync:Z

    if-eqz v0, :cond_0

    .line 203
    const-wide/32 v0, 0x1d4c0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 8
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/16 v1, -0xa

    .line 180
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/kingsoft/exchange/eas/EasSync;->mAccountId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    .line 181
    .local v5, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 186
    .local v4, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_0

    .line 189
    new-instance v0, Lcom/kingsoft/exchange/adapter/EmailSyncParser;

    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 192
    .local v0, "parser":Lcom/kingsoft/exchange/adapter/EmailSyncParser;
    :try_start_0
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->parse()Z

    .line 193
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/EmailSyncParser;->getMessageStatuses()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/eas/EasSync;->mMessageUpdateStatus:Ljava/util/Map;
    :try_end_0
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final upsync(Landroid/content/SyncResult;)I
    .locals 19
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/kingsoft/exchange/eas/EasSync;->mAccountId:J

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/eas/EasSync;->getProtocolVersion()D

    move-result-wide v5

    const-wide/high16 v17, 0x4028000000000000L

    cmpg-double v1, v5, v17

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/android/emailcommon/provider/MessageStateChange;->getChanges(Landroid/content/Context;JZ)Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    if-nez v8, :cond_1

    .line 103
    const/4 v1, 0x0

    .line 158
    :goto_1
    return v1

    .line 100
    .end local v8    # "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    .restart local v8    # "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :cond_1
    invoke-static {v8}, Lcom/android/emailcommon/provider/MessageStateChange;->convertToChangesMap(Ljava/util/List;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v7

    .line 107
    .local v7, "allData":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;>;"
    if-nez v7, :cond_2

    .line 108
    const/4 v1, 0x0

    goto :goto_1

    .line 111
    :cond_2
    const/4 v1, 0x2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    .line 112
    .local v14, "messageIds":[[J
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 114
    .local v9, "counts":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 115
    invoke-virtual {v7, v11}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxId:J

    .line 116
    invoke-virtual {v7, v11}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mStateChanges:Ljava/util/List;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 120
    .local v13, "mailboxCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 122
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxServerId:Ljava/lang/String;

    .line 125
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxSyncKey:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxSyncKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxSyncKey:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    :cond_3
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Tried to sync mailbox %d with invalid mailbox sync key"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMailboxId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    const/16 v16, -0x1

    .line 139
    .local v16, "result":I
    :goto_3
    if-nez v16, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mMessageUpdateStatus:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v9}, Lcom/kingsoft/exchange/eas/EasSync;->handleMessageUpdateStatus(Ljava/util/Map;[[J[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v16    # "result":I
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 137
    :cond_6
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/exchange/eas/EasSync;->performOperation(Landroid/content/SyncResult;)I

    move-result v16

    .restart local v16    # "result":I
    goto :goto_3

    .line 142
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mStateChanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 143
    .local v15, "msc":Lcom/android/emailcommon/provider/MessageStateChange;
    const/4 v1, 0x1

    aget-object v1, v14, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-virtual {v15}, Lcom/android/emailcommon/provider/MessageStateChange;->getMessageId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 144
    const/4 v1, 0x1

    aget v2, v9, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v9, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 149
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "msc":Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v16    # "result":I
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 154
    .end local v13    # "mailboxCursor":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/eas/EasSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 155
    .local v10, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-static {v10, v1, v2}, Lcom/android/emailcommon/provider/MessageStateChange;->upsyncSuccessful(Landroid/content/ContentResolver;[JI)V

    .line 156
    const/4 v1, 0x1

    aget-object v1, v14, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    invoke-static {v10, v1, v2}, Lcom/android/emailcommon/provider/MessageStateChange;->upsyncRetry(Landroid/content/ContentResolver;[JI)V

    .line 158
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
