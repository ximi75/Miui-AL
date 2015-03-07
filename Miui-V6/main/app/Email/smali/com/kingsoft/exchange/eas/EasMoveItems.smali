.class public Lcom/kingsoft/exchange/eas/EasMoveItems;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasMoveItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;
    }
.end annotation


# static fields
.field public static final RESULT_EMPTY_RESPONSE:I = 0x2

.field public static final RESULT_NO_MESSAGES:I = 0x0

.field public static final RESULT_OK:I = 0x1


# instance fields
.field private mMove:Lcom/android/emailcommon/provider/MessageMove;

.field private mResponse:Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 46
    return-void
.end method

.method private processResponse(Lcom/android/emailcommon/provider/MessageMove;Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;)V
    .locals 10
    .param p1, "request"    # Lcom/android/emailcommon/provider/MessageMove;
    .param p2, "response"    # Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 130
    iget-object v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->sourceMessageId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 132
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "MoveItems response for message %d has no SrcMsgId, using request\'s server id"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "sourceMessageId":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 147
    .local v0, "cv":Landroid/content/ContentValues;
    iget v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 149
    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getSourceFolderKey()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getMessageId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    :cond_2
    return-void

    .line 137
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "sourceMessageId":Ljava/lang/String;
    :cond_3
    iget-object v1, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->sourceMessageId:Ljava/lang/String;

    .line 138
    .restart local v1    # "sourceMessageId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "MoveItems response for message %d has SrcMsgId != request\'s server id"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 150
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_4
    iget v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    if-ne v2, v7, :cond_5

    .line 151
    iget-object v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->newMessageId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->newMessageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    const-string/jumbo v2, "syncServerId"

    iget-object v3, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->newMessageId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_5
    iget v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 155
    iget-object v2, p2, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->sourceMessageId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/MessageMove;->getMessageId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "MoveItems"

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 99
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v1, 0x145

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 100
    const/16 v1, 0x146

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 101
    const/16 v1, 0x147

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageMove;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 102
    const/16 v1, 0x148

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageMove;->getSourceFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 103
    const/16 v1, 0x149

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/MessageMove;->getDestFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 104
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 105
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasMoveItems;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 5
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    new-instance v1, Lcom/kingsoft/exchange/adapter/MoveItemsParser;

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;)V

    .line 114
    .local v1, "parser":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->parse()Z

    .line 115
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getSourceServerId()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "sourceMessageId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "newMessageId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v3

    .line 118
    .local v3, "status":I
    new-instance v4, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;

    invoke-direct {v4, v2, v0, v3}, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mResponse:Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;

    .line 119
    const/4 v4, 0x1

    .line 121
    .end local v0    # "newMessageId":Ljava/lang/String;
    .end local v1    # "parser":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    .end local v2    # "sourceMessageId":Ljava/lang/String;
    .end local v3    # "status":I
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public upsyncMovedMessages(Landroid/content/SyncResult;)I
    .locals 14
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 50
    iget-object v9, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mAccountId:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/MessageMove;->getMoves(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v6

    .line 51
    .local v6, "moves":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageMove;>;"
    if-nez v6, :cond_0

    .line 52
    const/4 v9, 0x0

    .line 88
    :goto_0
    return v9

    .line 55
    :cond_0
    const/4 v9, 0x4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    .line 56
    .local v4, "messageIds":[[J
    const/4 v9, 0x4

    new-array v0, v9, [I

    .line 58
    .local v0, "counts":[I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/MessageMove;

    .line 59
    .local v5, "move":Lcom/android/emailcommon/provider/MessageMove;
    iput-object v5, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    .line 60
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasMoveItems;->performOperation(Landroid/content/SyncResult;)I

    move-result v7

    .line 62
    .local v7, "result":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    .line 63
    iget-object v9, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    iget-object v10, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mResponse:Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;

    invoke-direct {p0, v9, v10}, Lcom/kingsoft/exchange/eas/EasMoveItems;->processResponse(Lcom/android/emailcommon/provider/MessageMove;Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;)V

    .line 64
    iget-object v9, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mResponse:Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;

    iget v8, v9, Lcom/kingsoft/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    .line 73
    .local v8, "status":I
    :goto_2
    if-gtz v8, :cond_2

    .line 74
    const-string/jumbo v9, "Exchange"

    const-string/jumbo v10, "MoveItems gave us an invalid status %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    const/4 v3, 0x2

    .line 79
    .local v3, "index":I
    :goto_3
    aget-object v9, v4, v3

    aget v10, v0, v3

    iget-object v11, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mMove:Lcom/android/emailcommon/provider/MessageMove;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/MessageMove;->getMessageId()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 80
    aget v9, v0, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v0, v3

    goto :goto_1

    .line 70
    .end local v3    # "index":I
    .end local v8    # "status":I
    :cond_1
    const/4 v8, 0x3

    .restart local v8    # "status":I
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v3, v8, -0x1

    .restart local v3    # "index":I
    goto :goto_3

    .line 83
    .end local v3    # "index":I
    .end local v5    # "move":Lcom/android/emailcommon/provider/MessageMove;
    .end local v7    # "result":I
    .end local v8    # "status":I
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/exchange/eas/EasMoveItems;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 84
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-static {v1, v9, v10}, Lcom/android/emailcommon/provider/MessageMove;->upsyncSuccessful(Landroid/content/ContentResolver;[JI)V

    .line 85
    const/4 v9, 0x1

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-static {v1, v9, v10}, Lcom/android/emailcommon/provider/MessageMove;->upsyncFail(Landroid/content/ContentResolver;[JI)V

    .line 86
    const/4 v9, 0x2

    aget-object v9, v4, v9

    const/4 v10, 0x2

    aget v10, v0, v10

    invoke-static {v1, v9, v10}, Lcom/android/emailcommon/provider/MessageMove;->upsyncRetry(Landroid/content/ContentResolver;[JI)V

    .line 87
    const/4 v9, 0x3

    aget-object v9, v4, v9

    const/4 v10, 0x3

    aget v10, v0, v10

    invoke-static {v1, v9, v10}, Lcom/android/emailcommon/provider/MessageMove;->upsyncSuccessful(Landroid/content/ContentResolver;[JI)V

    .line 88
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
