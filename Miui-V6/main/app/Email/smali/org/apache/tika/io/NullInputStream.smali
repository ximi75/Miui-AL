.class public Lorg/apache/tika/io/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/tika/io/NullInputStream;-><init>(JZZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .param p1, "size"    # J
    .param p3, "markSupported"    # Z
    .param p4, "throwEofException"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    .line 94
    iput-wide p1, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    .line 95
    iput-boolean p3, p0, Lorg/apache/tika/io/NullInputStream;->markSupported:Z

    .line 96
    iput-boolean p4, p0, Lorg/apache/tika/io/NullInputStream;->throwEofException:Z

    .line 97
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z

    .line 331
    iget-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 334
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    iget-wide v4, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    sub-long v0, v2, v4

    .line 125
    .local v0, "avail":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 130
    :goto_0
    return v2

    .line 127
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 128
    const v2, 0x7fffffff

    goto :goto_0

    .line 130
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    .line 145
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    .line 160
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 319
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lorg/apache/tika/io/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 192
    invoke-virtual {p0}, Lorg/apache/tika/io/NullInputStream;->processByte()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tika/io/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-boolean v1, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_0
    iget-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 230
    invoke-direct {p0}, Lorg/apache/tika/io/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 232
    :cond_1
    iget-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 233
    move v0, p3

    .line 234
    .local v0, "returnLength":I
    iget-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 235
    iget-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 236
    iget-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    iput-wide v1, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 238
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tika/io/NullInputStream;->processBytes([BII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 256
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    iget-wide v4, p0, Lorg/apache/tika/io/NullInputStream;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 259
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Marked position ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    iget-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "numberOfBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-boolean v2, p0, Lorg/apache/tika/io/NullInputStream;->eof:Z

    if-eqz v2, :cond_0

    .line 281
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_0
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 284
    invoke-direct {p0}, Lorg/apache/tika/io/NullInputStream;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 292
    :cond_1
    :goto_0
    return-wide v0

    .line 286
    :cond_2
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    .line 287
    move-wide v0, p1

    .line 288
    .local v0, "returnLength":J
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 289
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 290
    iget-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->size:J

    iput-wide v2, p0, Lorg/apache/tika/io/NullInputStream;->position:J

    goto :goto_0
.end method
