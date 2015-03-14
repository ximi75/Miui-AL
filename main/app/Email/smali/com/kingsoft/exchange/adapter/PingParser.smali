.class public Lcom/kingsoft/exchange/adapter/PingParser;
.super Lcom/kingsoft/exchange/adapter/Parser;
.source "PingParser.java"


# static fields
.field public static final NO_VALUE:I = -0x1

.field public static final STATUS_CHANGES_FOUND:I = 0x2

.field public static final STATUS_EXPIRED:I = 0x1

.field public static final STATUS_FOLDER_REFRESH_NEEDED:I = 0x7

.field public static final STATUS_REQUEST_HEARTBEAT_OUT_OF_BOUNDS:I = 0x5

.field public static final STATUS_REQUEST_INCOMPLETE:I = 0x3

.field public static final STATUS_REQUEST_MALFORMED:I = 0x4

.field public static final STATUS_REQUEST_TOO_MANY_FOLDERS:I = 0x6

.field public static final STATUS_SERVER_ERROR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private mHeartbeatInterval:I

.field private mMaxFolders:I

.field private mPingStatus:I

.field private final mSyncList:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 58
    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mMaxFolders:I

    .line 61
    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mHeartbeatInterval:I

    .line 65
    return-void
.end method

.method private getValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "currentValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/exchange/adapter/PingParser;->getValue(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method private getValue(Ljava/lang/String;III)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "currentValue"    # I
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 163
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response has multiple values for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/PingParser;->getValueInt()I

    move-result v0

    .line 166
    .local v0, "value":I
    if-lt v0, p3, :cond_1

    if-lez p4, :cond_2

    if-le v0, p4, :cond_2

    .line 167
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_2
    return v0
.end method

.method private parsePingFolders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    const/16 v1, 0x349

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 139
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x34a

    if-ne v1, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/PingParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "serverId":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Changes found in: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 145
    .end local v0    # "serverId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method

.method public static shouldPingAgain(I)Z
    .locals 2
    .param p0, "pingStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 126
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeartbeatInterval()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 108
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mHeartbeatInterval:I

    goto :goto_0
.end method

.method public getMaxFolders()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 94
    const/4 v0, -0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mMaxFolders:I

    goto :goto_0
.end method

.method public getPingStatus()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    return v0
.end method

.method public getSyncList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public parse()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 191
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x345

    if-eq v1, v2, :cond_0

    .line 192
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Ping response does not include a Ping element"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 195
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x347

    if-ne v1, v2, :cond_1

    .line 196
    const-string/jumbo v1, "Status"

    iget v2, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    const/16 v3, 0xb1

    invoke-direct {p0, v1, v2, v6, v3}, Lcom/kingsoft/exchange/adapter/PingParser;->getValue(Ljava/lang/String;III)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    goto :goto_0

    .line 198
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x34d

    if-ne v1, v2, :cond_2

    .line 199
    const-string/jumbo v1, "MaxFolders"

    iget v2, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mMaxFolders:I

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/exchange/adapter/PingParser;->getValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mMaxFolders:I

    goto :goto_0

    .line 200
    :cond_2
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x349

    if-ne v1, v2, :cond_4

    .line 201
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Response has multiple values for Folders"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/PingParser;->parsePingFolders()V

    .line 205
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, "count":I
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Folders has %d elements"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Folders was empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v0    # "count":I
    :cond_4
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x348

    if-ne v1, v2, :cond_5

    .line 211
    const-string/jumbo v1, "HeartbeatInterval"

    iget v2, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mHeartbeatInterval:I

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/exchange/adapter/PingParser;->getValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mHeartbeatInterval:I

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 220
    :cond_6
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mPingStatus:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :cond_7
    :pswitch_0
    return v6

    .line 222
    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No status set in ping response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :pswitch_2
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mSyncList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 225
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No changes found in ping response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :pswitch_3
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mHeartbeatInterval:I

    if-ne v1, v7, :cond_7

    .line 230
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No value specified for heartbeat out of bounds"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :pswitch_4
    iget v1, p0, Lcom/kingsoft/exchange/adapter/PingParser;->mMaxFolders:I

    if-ne v1, v7, :cond_7

    .line 235
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No value specified for too many folders"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
