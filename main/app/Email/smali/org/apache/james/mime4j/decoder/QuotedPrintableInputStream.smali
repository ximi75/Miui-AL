.class public Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 42
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 46
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 47
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 215
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 216
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 220
    :goto_0
    return v0

    .line 217
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 218
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 219
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 220
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 226
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "msdChar":B
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_0

    .line 122
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 124
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 207
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 130
    .local v0, "b":B
    iget-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    .line 201
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 202
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 203
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 132
    :pswitch_0
    if-eq v0, v8, :cond_2

    .line 133
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 136
    :cond_2
    const/4 v4, 0x1

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 140
    :pswitch_1
    if-ne v0, v9, :cond_3

    .line 141
    const/4 v4, 0x2

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 143
    :cond_3
    if-lt v0, v10, :cond_4

    if-le v0, v11, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    .line 144
    :cond_6
    const/4 v4, 0x3

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 145
    move v3, v0

    .line 146
    goto :goto_0

    .line 147
    :cond_7
    if-ne v0, v8, :cond_9

    .line 152
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 153
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    const-string/jumbo v5, "Malformed MIME; got =="

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 155
    :cond_8
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 158
    :cond_9
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 159
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 162
    :cond_a
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 163
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 164
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 168
    :pswitch_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    .line 169
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 172
    :cond_b
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 173
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Malformed MIME; expected 10, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 176
    :cond_c
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 177
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 178
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v9}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 179
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    if-lt v0, v10, :cond_d

    if-le v0, v11, :cond_f

    :cond_d
    const/16 v4, 0x41

    if-lt v0, v4, :cond_e

    const/16 v4, 0x46

    if-le v0, v4, :cond_f

    :cond_e
    const/16 v4, 0x61

    if-lt v0, v4, :cond_10

    const/16 v4, 0x66

    if-gt v0, v4, :cond_10

    .line 184
    :cond_f
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 185
    .local v2, "msd":B
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 186
    .local v1, "low":B
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 187
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 190
    .end local v1    # "low":B
    .end local v2    # "msd":B
    :cond_10
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 191
    sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/james/mime4j/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 194
    :cond_11
    iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 195
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 196
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 197
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 97
    .local v0, "i":I
    :sswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 89
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 90
    .restart local v0    # "i":I
    sparse-switch v0, :sswitch_data_0

    .line 105
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 93
    :sswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_0

    .line 101
    :sswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    .line 102
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 57
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V

    .line 62
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const/4 v0, -0x1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 66
    .local v0, "val":B
    if-gez v0, :cond_0

    .line 69
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
