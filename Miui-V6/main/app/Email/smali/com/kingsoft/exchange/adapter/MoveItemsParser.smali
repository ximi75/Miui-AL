.class public Lcom/kingsoft/exchange/adapter/MoveItemsParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "MoveItemsParser.java"


# static fields
.field private static final STATUS_ALREADY_EXISTS:I = 0x6

.field public static final STATUS_CODE_NOT_EXISTED:I = 0x4

.field public static final STATUS_CODE_RETRY:I = 0x3

.field public static final STATUS_CODE_REVERT:I = 0x2

.field public static final STATUS_CODE_SUCCESS:I = 0x1

.field private static final STATUS_INTERNAL_ERROR:I = 0x5

.field private static final STATUS_LOCKED:I = 0x7

.field private static final STATUS_NO_DESTINATION_FOLDER:I = 0x2

.field private static final STATUS_NO_SOURCE_FOLDER:I = 0x1

.field private static final STATUS_SOURCE_DESTINATION_SAME:I = 0x4

.field private static final STATUS_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private mNewServerId:Ljava/lang/String;

.field private mSourceServerId:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 50
    return-void
.end method


# virtual methods
.method public getNewServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mSourceServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Trying to get status for MoveItems, but no status was set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    const/4 v0, 0x3

    .line 59
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_0
.end method

.method public parse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "res":Z
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x145

    if-eq v1, v2, :cond_0

    .line 118
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 121
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14a

    if-ne v1, v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->parseResponse()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 127
    :cond_2
    return v0
.end method

.method public parseResponse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 71
    :cond_0
    :goto_0
    const/16 v1, 0x14a

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->nextTag(I)I

    move-result v1

    if-eq v1, v7, :cond_4

    .line 72
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14b

    if-ne v1, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getValueInt()I

    move-result v0

    .line 75
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 95
    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    .line 98
    :goto_1
    if-eq v0, v7, :cond_0

    .line 100
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Error in MoveItems: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 81
    :pswitch_1
    iput v5, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 85
    :pswitch_2
    iput v7, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 88
    :pswitch_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mStatusCode:I

    goto :goto_1

    .line 102
    .end local v0    # "status":I
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Moved message id is now: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 105
    :cond_2
    iget v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->tag:I

    const/16 v2, 0x147

    if-ne v1, v2, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mSourceServerId:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Source message id is: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->mNewServerId:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->skipTag()V

    goto :goto_0

    .line 112
    :cond_4
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
