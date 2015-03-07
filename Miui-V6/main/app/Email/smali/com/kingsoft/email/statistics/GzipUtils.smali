.class public Lcom/kingsoft/email/statistics/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# static fields
.field private static final encoding:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 64
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 63
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 64
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static compressToByte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, v0}, Lcom/kingsoft/email/statistics/GzipUtils;->compressToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    return-object v2

    .line 24
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 27
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static decompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 89
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "buffer":[B
    .local v2, "gzip":Ljava/util/zip/GZIPInputStream;
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    .local v4, "n":I
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 72
    .end local v0    # "buffer":[B
    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "n":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 74
    .local v1, "gzip":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .end local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x100

    :try_start_1
    new-array v0, v6, [B

    .line 80
    .restart local v0    # "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .restart local v4    # "n":I
    if-ltz v4, :cond_3

    .line 81
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    .end local v0    # "buffer":[B
    .end local v4    # "n":I
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    :goto_2
    if-eqz v1, :cond_2

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    :cond_2
    :goto_3
    throw v6

    .line 83
    .end local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "n":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    .line 85
    .end local p0    # "str":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 87
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "n":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local p0    # "str":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 85
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public static decompressToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, v0}, Lcom/kingsoft/email/statistics/GzipUtils;->decompressToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decompressToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 51
    :cond_1
    :goto_0
    return-object v6

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 37
    .local v1, "gzip":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .end local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    .local v2, "gzip":Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x100

    :try_start_1
    new-array v0, v6, [B

    .line 42
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .local v4, "n":I
    if-ltz v4, :cond_4

    .line 43
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    .end local v0    # "buffer":[B
    .end local v4    # "n":I
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    :goto_2
    if-eqz v1, :cond_3

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    :cond_3
    :goto_3
    throw v6

    .line 45
    .end local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "n":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_3
    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 47
    if-eqz v2, :cond_1

    .line 49
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v2    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v4    # "n":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 47
    :catchall_1
    move-exception v6

    goto :goto_2
.end method
