.class public Lorg/apache/tika/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/tika/io/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/tika/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 86
    if-gez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Negative initial size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tika/io/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 91
    return-void
.end method

.method private needNewBuffer(I)V
    .locals 3
    .param p1, "newcount"    # I

    .prologue
    .line 100
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 102
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    .line 104
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    .line 105
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v1, :cond_1

    .line 110
    move v0, p1

    .line 111
    .local v0, "newBufferSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    .line 119
    :goto_1
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    .line 120
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    .line 121
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "newBufferSize":I
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    .line 115
    iget v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v2, p1, v2

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    .restart local v0    # "newBufferSize":I
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_1
.end method

.method private toBufferedInputStream()Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 291
    iget v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 292
    .local v3, "remaining":I
    if-nez v3, :cond_0

    .line 293
    new-instance v4, Lorg/apache/tika/io/ClosedInputStream;

    invoke-direct {v4}, Lorg/apache/tika/io/ClosedInputStream;-><init>()V

    .line 304
    :goto_0
    return-object v4

    .line 295
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/ByteArrayInputStream;>;"
    iget-object v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    :goto_1
    new-instance v4, Ljava/io/SequenceInputStream;

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 297
    .local v0, "buf":[B
    array-length v5, v0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 298
    .local v1, "c":I
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sub-int/2addr v3, v1

    .line 300
    if-nez v3, :cond_1

    goto :goto_1
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lorg/apache/tika/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;-><init>()V

    .line 276
    .local v0, "output":Lorg/apache/tika/io/ByteArrayOutputStream;
    invoke-virtual {v0, p0}, Lorg/apache/tika/io/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 277
    invoke-direct {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toBufferedInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    .line 230
    iget-object v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 316
    .local v4, "remaining":I
    if-nez v4, :cond_1

    .line 317
    sget-object v2, Lorg/apache/tika/io/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 319
    :cond_1
    :try_start_1
    new-array v2, v4, [B

    .line 320
    .local v2, "newbuf":[B
    const/4 v3, 0x0

    .line 321
    .local v3, "pos":I
    iget-object v5, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 322
    .local v0, "buf":[B
    array-length v6, v0

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 323
    .local v1, "c":I
    const/4 v6, 0x0

    invoke-static {v0, v6, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    add-int/2addr v3, v1

    .line 325
    sub-int/2addr v4, v1

    .line 326
    if-nez v4, :cond_2

    goto :goto_0

    .line 315
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    .end local v2    # "newbuf":[B
    .end local v3    # "pos":I
    .end local v4    # "remaining":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    const/4 v2, 0x0

    .line 187
    .local v2, "readCount":I
    :try_start_0
    iget v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    iget v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v3, v4

    .line 188
    .local v0, "inBufferPos":I
    iget-object v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 189
    .local v1, "n":I
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 199
    monitor-exit p0

    return v2

    .line 190
    :cond_0
    add-int/2addr v2, v1

    .line 191
    add-int/2addr v0, v1

    .line 192
    :try_start_1
    iget v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 193
    iget-object v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 194
    iget-object v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v3}, Lorg/apache/tika/io/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 195
    const/4 v0, 0x0

    .line 197
    :cond_1
    iget-object v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 186
    .end local v0    # "inBufferPos":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v1, v2

    .line 166
    .local v0, "inBufferPos":I
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 167
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/tika/io/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 171
    iget v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "inBufferPos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 133
    if-ltz p2, :cond_0

    .line 134
    array-length v4, p1

    if-gt p2, v4, :cond_0

    .line 135
    if-ltz p3, :cond_0

    .line 136
    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_0

    .line 137
    add-int v4, p2, p3

    if-gez v4, :cond_1

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 139
    :cond_1
    if-nez p3, :cond_2

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_2
    monitor-enter p0

    .line 143
    :try_start_0
    iget v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    add-int v1, v4, p3

    .line 144
    .local v1, "newcount":I
    move v3, p3

    .line 145
    .local v3, "remaining":I
    iget v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    iget v5, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v4, v5

    .line 146
    .local v0, "inBufferPos":I
    :cond_3
    :goto_1
    if-gtz v3, :cond_4

    .line 155
    iput v1, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 142
    monitor-exit p0

    goto :goto_0

    .end local v0    # "inBufferPos":I
    .end local v1    # "newcount":I
    .end local v3    # "remaining":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 147
    .restart local v0    # "inBufferPos":I
    .restart local v1    # "newcount":I
    .restart local v3    # "remaining":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 148
    .local v2, "part":I
    add-int v4, p2, p3

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    sub-int/2addr v3, v2

    .line 150
    if-lez v3, :cond_3

    .line 151
    invoke-direct {p0, v1}, Lorg/apache/tika/io/ByteArrayOutputStream;->needNewBuffer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->count:I

    .line 243
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/apache/tika/io/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 244
    .local v0, "buf":[B
    array-length v4, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 245
    .local v1, "c":I
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    sub-int/2addr v2, v1

    .line 247
    if-nez v2, :cond_0

    goto :goto_0

    .line 242
    .end local v0    # "buf":[B
    .end local v1    # "c":I
    .end local v2    # "remaining":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
