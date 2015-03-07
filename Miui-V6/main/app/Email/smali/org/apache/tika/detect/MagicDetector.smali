.class public Lorg/apache/tika/detect/MagicDetector;
.super Ljava/lang/Object;
.source "MagicDetector.java"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# instance fields
.field private final asString:Ljava/lang/String;

.field private final length:I

.field private final mask:[B

.field private final offsetRangeBegin:I

.field private final offsetRangeEnd:I

.field private final pattern:[B

.field private final type:Lorg/apache/tika/mime/MediaType;


# direct methods
.method public constructor <init>(Lorg/apache/tika/mime/MediaType;[B)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "pattern"    # [B

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tika/detect/MagicDetector;-><init>(Lorg/apache/tika/mime/MediaType;[BI)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MediaType;[BI)V
    .locals 6
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "pattern"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 95
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/detect/MagicDetector;-><init>(Lorg/apache/tika/mime/MediaType;[B[BII)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MediaType;[B[BII)V
    .locals 5
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "pattern"    # [B
    .param p3, "mask"    # [B
    .param p4, "offsetRangeBegin"    # I
    .param p5, "offsetRangeEnd"    # I

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Matching media type is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    if-nez p2, :cond_1

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Magic match pattern is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    if-ltz p4, :cond_2

    .line 110
    if-ge p5, p4, :cond_3

    .line 111
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid offset range: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_3
    iput-object p1, p0, Lorg/apache/tika/detect/MagicDetector;->type:Lorg/apache/tika/mime/MediaType;

    .line 118
    array-length v3, p2

    if-eqz p3, :cond_4

    array-length v1, p3

    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    .line 120
    iget v1, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    .line 121
    iget v1, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->pattern:[B

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    if-lt v0, v1, :cond_5

    .line 137
    iput p4, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    .line 138
    iput p5, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeEnd:I

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Magic Detection for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, " looking for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string/jumbo v2, " bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tika/detect/MagicDetector;->pattern:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, " mask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    iput-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->asString:Ljava/lang/String;

    .line 146
    return-void

    .end local v0    # "i":I
    :cond_4
    move v1, v2

    .line 118
    goto :goto_0

    .line 124
    .restart local v0    # "i":I
    :cond_5
    if-eqz p3, :cond_6

    array-length v1, p3

    if-ge v0, v1, :cond_6

    .line 125
    iget-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    aget-byte v3, p3, v0

    aput-byte v3, v1, v0

    .line 130
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_7

    .line 131
    iget-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->pattern:[B

    aget-byte v3, p2, v0

    iget-object v4, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    aget-byte v4, v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 123
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_6
    iget-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    const/4 v3, -0x1

    aput-byte v3, v1, v0

    goto :goto_2

    .line 133
    :cond_7
    iget-object v1, p0, Lorg/apache/tika/detect/MagicDetector;->pattern:[B

    aput-byte v2, v1, v0

    goto :goto_3
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 155
    if-nez p1, :cond_0

    .line 156
    sget-object v8, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    .line 202
    :goto_0
    return-object v8

    .line 159
    :cond_0
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeEnd:I

    iget v9, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 161
    const/4 v7, 0x0

    .line 164
    .local v7, "offset":I
    :goto_1
    :try_start_0
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    if-lt v7, v8, :cond_3

    .line 177
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    iget v9, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeEnd:I

    iget v10, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    new-array v0, v8, [B

    .line 178
    .local v0, "buffer":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 179
    .local v5, "n":I
    if-lez v5, :cond_1

    .line 180
    add-int/2addr v7, v5

    .line 182
    :cond_1
    :goto_2
    if-eq v5, v11, :cond_2

    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeEnd:I

    iget v9, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    add-int/2addr v8, v9

    if-lt v7, v8, :cond_6

    .line 187
    :cond_2
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    iget v9, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_7

    .line 188
    sget-object v8, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 165
    .end local v0    # "buffer":[B
    .end local v5    # "n":I
    :cond_3
    :try_start_1
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    sub-int/2addr v8, v7

    int-to-long v8, v8

    invoke-virtual {p1, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    .line 166
    .local v5, "n":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_4

    .line 167
    int-to-long v8, v7

    add-long/2addr v8, v5

    long-to-int v7, v8

    .line 168
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v11, :cond_5

    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    sget-object v8, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 183
    .restart local v0    # "buffer":[B
    .local v5, "n":I
    :cond_6
    :try_start_2
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    sub-int v1, v7, v8

    .line 185
    .local v1, "bufferOffset":I
    array-length v8, v0

    sub-int/2addr v8, v1

    .line 184
    invoke-virtual {p1, v0, v1, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    goto :goto_2

    .line 192
    .end local v1    # "bufferOffset":I
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeEnd:I

    iget v9, p0, Lorg/apache/tika/detect/MagicDetector;->offsetRangeBegin:I

    sub-int/2addr v8, v9

    if-le v2, v8, :cond_8

    .line 202
    sget-object v8, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 193
    :cond_8
    const/4 v4, 0x1

    .line 194
    .local v4, "match":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-eqz v4, :cond_9

    :try_start_3
    iget v8, p0, Lorg/apache/tika/detect/MagicDetector;->length:I

    if-lt v3, v8, :cond_a

    .line 197
    :cond_9
    if-eqz v4, :cond_c

    .line 198
    iget-object v8, p0, Lorg/apache/tika/detect/MagicDetector;->type:Lorg/apache/tika/mime/MediaType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 195
    :cond_a
    add-int v8, v2, v3

    :try_start_4
    aget-byte v8, v0, v8

    iget-object v9, p0, Lorg/apache/tika/detect/MagicDetector;->mask:[B

    aget-byte v9, v9, v3

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/apache/tika/detect/MagicDetector;->pattern:[B

    aget-byte v9, v9, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v8, v9, :cond_b

    const/4 v4, 0x1

    .line 194
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 195
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 192
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 203
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "match":Z
    .end local v5    # "n":I
    :catchall_0
    move-exception v8

    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 205
    throw v8
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/tika/detect/MagicDetector;->asString:Ljava/lang/String;

    return-object v0
.end method
