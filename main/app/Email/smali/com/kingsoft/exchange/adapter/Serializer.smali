.class public Lcom/kingsoft/exchange/adapter/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final NOT_PENDING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private mDepth:I

.field private mLogging:Z

.field private mNameStack:[Ljava/lang/String;

.field private final mOutput:Ljava/io/OutputStream;

.field private mPendingTag:I

.field private mTagPage:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "startDocument"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mTagPage:I

    .line 46
    const-string/jumbo v0, "Exchange"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    .line 73
    iput-object p1, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Serializer;->startDocument()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "startDocument"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>(Ljava/io/OutputStream;Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public checkPendingTag(Z)V
    .locals 6
    .param p1, "degenerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 107
    iget v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    if-ne v3, v5, :cond_0

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    shr-int/lit8 v1, v3, 0x6

    .line 111
    .local v1, "page":I
    iget v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    and-int/lit8 v2, v3, 0x3f

    .line 112
    .local v2, "tag":I
    iget v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mTagPage:I

    if-eq v1, v3, :cond_1

    .line 113
    iput v1, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mTagPage:I

    .line 114
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 115
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    if-eqz p1, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 119
    iget-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v3, :cond_2

    .line 120
    sget-object v3, Lcom/kingsoft/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    aget-object v3, v3, v1

    add-int/lit8 v4, v2, -0x5

    aget-object v0, v3, v4

    .line 121
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    iget v4, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    aput-object v0, v3, v4

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 124
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    iput v5, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    goto :goto_0

    .line 118
    :cond_3
    or-int/lit8 v3, v2, 0x40

    goto :goto_1
.end method

.method public data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Writing null data for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 158
    invoke-virtual {p0, p2}, Lcom/kingsoft/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 159
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 160
    return-object p0
.end method

.method public done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Done received with unclosed tags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 97
    return-void
.end method

.method public end()Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 135
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    if-ltz v0, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 143
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    .line 144
    return-object p0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 139
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mNameStack:[Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 82
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 83
    .local v0, "cr":I
    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_0
    const-string/jumbo v1, "Exchange"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    sget-boolean v1, Lcom/kingsoft/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 88
    const-string/jumbo v1, "Exchange"

    invoke-static {v1, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method

.method public opaque(Ljava/io/InputStream;I)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 178
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/16 v3, 0xc3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0, v2, p2}, Lcom/kingsoft/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 180
    iget-boolean v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Opaque, length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 184
    :cond_0
    new-array v0, v5, [B

    .line 185
    .local v0, "buffer":[B
    :goto_0
    if-lez p2, :cond_1

    .line 186
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 187
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 193
    .end local v1    # "bytesRead":I
    :cond_1
    return-object p0

    .line 190
    .restart local v1    # "bytesRead":I
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    sub-int/2addr p2, v1

    .line 192
    goto :goto_0
.end method

.method public opaqueWithoutData(I)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 198
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->writeInteger(Ljava/io/OutputStream;I)V

    .line 200
    return-object p0
.end method

.method public start(I)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 1
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 129
    iput p1, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    .line 130
    iget v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mDepth:I

    .line 131
    return-object p0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 101
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 104
    return-void
.end method

.method public tag(I)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 0
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 149
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 150
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string/jumbo v0, "Exchange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Writing null text for pending tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mPendingTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    :cond_0
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->checkPendingTag(Z)V

    .line 168
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 169
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 173
    :cond_1
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mOutput:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method writeInteger(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 205
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 208
    .local v1, "idx":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 209
    shr-int/lit8 p2, p2, 0x7

    .line 210
    if-nez p2, :cond_2

    move v1, v2

    .line 212
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 213
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 215
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 216
    iget-boolean v3, p0, Lcom/kingsoft/exchange/adapter/Serializer;->mLogging:Z

    if-eqz v3, :cond_1

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->log(Ljava/lang/String;)V

    .line 219
    :cond_1
    return-void

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :cond_2
    move v1, v2

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    goto :goto_0
.end method

.method writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 223
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 225
    return-void
.end method

.method public writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 230
    invoke-virtual {p0, p3, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p3}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method
