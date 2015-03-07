.class public Lcom/kingsoft/ex/photo/util/InputStreamBuffer;
.super Ljava/lang/Object;
.source "InputStreamBuffer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_MAX_BUFFER_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "InputStreamBuffer"


# instance fields
.field private mAutoAdvance:Z

.field private mBuffer:[B

.field private mFilled:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v4, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 68
    iput v4, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 99
    iput-object p1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 100
    if-gtz p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size %d must be positive."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-static {p2}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result p2

    .line 105
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    .line 106
    iput-boolean p3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mAutoAdvance:Z

    .line 107
    return-void
.end method

.method private fill(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    const-string/jumbo v5, "fill"

    invoke-static {v5}, Lcom/kingsoft/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 261
    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    if-ge p1, v5, :cond_0

    .line 262
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 263
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Index %d is before buffer %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v4, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_0
    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v5

    .line 269
    .local v0, "i":I
    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 270
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 307
    :goto_0
    return v4

    .line 275
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 276
    .local v1, "length":I
    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v5, v5

    if-le v1, v5, :cond_2

    .line 277
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mAutoAdvance:Z

    if-eqz v5, :cond_3

    .line 278
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 279
    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v5

    .line 291
    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 293
    .local v2, "read":I
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    iget v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    iget-object v8, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v8, v8

    iget v9, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    :goto_2
    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 298
    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 304
    :goto_3
    const-string/jumbo v5, "InputStreamBuffer"

    const-string/jumbo v6, "fill %d      buffer: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 306
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 307
    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v0, v5, :cond_5

    :goto_4
    move v4, v3

    goto :goto_0

    .line 281
    .end local v2    # "read":I
    :cond_3
    invoke-static {v1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result v1

    .line 282
    const-string/jumbo v5, "InputStreamBuffer"

    const-string/jumbo v6, "Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called."

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    goto :goto_1

    .line 301
    .restart local v2    # "read":I
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    goto :goto_3

    :cond_5
    move v3, v4

    .line 307
    goto :goto_4

    .line 294
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static leastPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 363
    add-int/lit8 p0, p0, -0x1

    .line 364
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 365
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 366
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 367
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 368
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 369
    add-int/lit8 p0, p0, 0x1

    .line 370
    return p0
.end method

.method private shiftToBeginning(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 318
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "Index %d out of bounds. Length %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    add-int v1, v0, p1

    iget v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    iget-object v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    add-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method


# virtual methods
.method public advanceTo(I)V
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 188
    const-string/jumbo v7, "advance to"

    invoke-static {v7}, Lcom/kingsoft/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 189
    iget v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v5, p1, v7

    .line 190
    .local v5, "i":I
    if-gtz v5, :cond_0

    .line 192
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 237
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v5, v7, :cond_1

    .line 196
    invoke-direct {p0, v5}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->shiftToBeginning(I)V

    .line 197
    iput p1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 198
    iget v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    .line 235
    :goto_1
    const-string/jumbo v7, "InputStreamBuffer"

    const-string/jumbo v8, "advanceTo %d buffer: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_6

    .line 201
    iget v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    sub-int v0, v5, v7

    .line 202
    .local v0, "burn":I
    const/4 v3, 0x0

    .line 203
    .local v3, "empty":Z
    const/4 v4, 0x0

    .line 205
    .local v4, "fails":I
    :cond_2
    if-lez v0, :cond_3

    .line 206
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 207
    .local v1, "burned":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_5

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 213
    :goto_2
    const/4 v7, 0x5

    if-lt v4, v7, :cond_2

    .line 214
    const/4 v3, 0x1

    .line 222
    .end local v1    # "burned":J
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 224
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 227
    :cond_4
    sub-int v7, p1, v0

    iput v7, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 228
    iput v11, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    goto :goto_1

    .line 210
    .restart local v1    # "burned":J
    :cond_5
    int-to-long v7, v0

    sub-long/2addr v7, v1

    long-to-int v0, v7

    goto :goto_2

    .line 218
    .end local v1    # "burned":J
    :catch_0
    move-exception v6

    .line 219
    .local v6, "ignored":Ljava/io/IOException;
    const/4 v3, 0x1

    goto :goto_3

    .line 231
    .end local v0    # "burn":I
    .end local v3    # "empty":Z
    .end local v4    # "fails":I
    .end local v6    # "ignored":Ljava/io/IOException;
    :cond_6
    iput p1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    .line 232
    iput v11, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    goto :goto_1
.end method

.method public get(I)B
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v1, "get"

    invoke-static {v1}, Lcom/kingsoft/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget v1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v1

    .line 133
    .local v0, "i":I
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 134
    iget-object v1, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    aget-byte v1, v1, v0

    return v1

    .line 136
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 137
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "Index %d beyond length."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public has(I)Z
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 160
    const-string/jumbo v2, "has"

    invoke-static {v2}, Lcom/kingsoft/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 161
    iget v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    if-ge p1, v2, :cond_0

    .line 162
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 163
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Index %d is before buffer %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    iget v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v2

    .line 170
    .local v0, "i":I
    iget v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 171
    :cond_1
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 172
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->fill(I)Z

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 175
    :cond_2
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 335
    const-string/jumbo v2, "to debug string"

    invoke-static {v2}, Lcom/kingsoft/ex/photo/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/16 v2, 0x50

    if-ge v0, v2, :cond_2

    .line 341
    if-lez v0, :cond_0

    .line 342
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_0
    iget v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    if-ge v0, v2, :cond_1

    .line 345
    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    aget-byte v5, v5, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const-string/jumbo v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 351
    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_3
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {}, Lcom/kingsoft/ex/photo/util/Trace;->endSection()V

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    const-string/jumbo v0, "+%d+%d [%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mBuffer:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/kingsoft/ex/photo/util/InputStreamBuffer;->mFilled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
