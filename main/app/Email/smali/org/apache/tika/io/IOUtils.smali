.class public Lorg/apache/tika/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "output"    # Ljava/io/Writer;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/nio/channels/Channel;)V
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 7
    .param p0, "input1"    # Ljava/io/InputStream;
    .param p1, "input2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1149
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 1150
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "input1":Ljava/io/InputStream;
    .local v2, "input1":Ljava/io/InputStream;
    move-object p0, v2

    .line 1152
    .end local v2    # "input1":Ljava/io/InputStream;
    .restart local p0    # "input1":Ljava/io/InputStream;
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_1

    .line 1153
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "input2":Ljava/io/InputStream;
    .local v3, "input2":Ljava/io/InputStream;
    move-object p1, v3

    .line 1156
    .end local v3    # "input2":Ljava/io/InputStream;
    .restart local p1    # "input2":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1157
    .local v0, "ch":I
    :goto_0
    if-ne v6, v0, :cond_3

    .line 1165
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1166
    .local v1, "ch2":I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 1158
    .end local v1    # "ch2":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1159
    .restart local v1    # "ch2":I
    if-ne v0, v1, :cond_2

    .line 1162
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 7
    .param p0, "input1"    # Ljava/io/Reader;
    .param p1, "input2"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1186
    instance-of v5, p0, Ljava/io/BufferedReader;

    if-nez v5, :cond_0

    .line 1187
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p0    # "input1":Ljava/io/Reader;
    .local v2, "input1":Ljava/io/Reader;
    move-object p0, v2

    .line 1189
    .end local v2    # "input1":Ljava/io/Reader;
    .restart local p0    # "input1":Ljava/io/Reader;
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    .line 1190
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p1    # "input2":Ljava/io/Reader;
    .local v3, "input2":Ljava/io/Reader;
    move-object p1, v3

    .line 1193
    .end local v3    # "input2":Ljava/io/Reader;
    .restart local p1    # "input2":Ljava/io/Reader;
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1194
    .local v0, "ch":I
    :goto_0
    if-ne v6, v0, :cond_3

    .line 1202
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1203
    .local v1, "ch2":I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 1195
    .end local v1    # "ch2":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1196
    .restart local v1    # "ch2":I
    if-ne v0, v1, :cond_2

    .line 1199
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 932
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 933
    const/4 v2, -0x1

    .line 935
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1037
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1038
    const/4 v2, -0x1

    .line 1040
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 982
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 983
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    if-nez p2, :cond_0

    .line 1007
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 1012
    :goto_0
    return-void

    .line 1009
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1010
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1089
    .local v0, "out":Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1092
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1093
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    if-nez p2, :cond_0

    .line 1121
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1129
    :goto_0
    return-void

    .line 1123
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1124
    .local v0, "out":Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1127
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 955
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .line 956
    .local v1, "count":J
    const/4 v3, 0x0

    .line 957
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 961
    return-wide v1

    .line 958
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 959
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 1058
    .local v0, "buffer":[C
    const-wide/16 v1, 0x0

    .line 1059
    .local v1, "count":J
    const/4 v3, 0x0

    .line 1060
    .local v3, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 1064
    return-wide v1

    .line 1061
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1062
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 463
    .local v0, "reader":Ljava/io/InputStreamReader;
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    invoke-static {p0}, Lorg/apache/tika/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 487
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 488
    .local v0, "reader":Ljava/io/InputStreamReader;
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 507
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 513
    return-object v1

    .line 510
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lorg/apache/tika/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;-><init>()V

    .line 221
    .local v0, "output":Lorg/apache/tika/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 222
    invoke-virtual {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lorg/apache/tika/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v0, "output":Lorg/apache/tika/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 240
    invoke-virtual {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lorg/apache/tika/io/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v0, "output":Lorg/apache/tika/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lorg/apache/tika/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 301
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 325
    .local v0, "output":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 343
    .local v0, "sw":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 344
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 526
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->toInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tika/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 557
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 575
    .local v0, "bytes":[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 574
    .end local v0    # "bytes":[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 363
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 386
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 403
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 404
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 442
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    if-eqz p0, :cond_0

    .line 746
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tika/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 748
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    if-eqz p0, :cond_0

    .line 769
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/tika/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 771
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    if-eqz p0, :cond_0

    .line 726
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tika/io/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V

    .line 728
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    if-eqz p0, :cond_0

    .line 806
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 808
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    if-eqz p0, :cond_0

    .line 829
    if-nez p2, :cond_1

    .line 830
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 788
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/StringBuffer;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 877
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/StringBuffer;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 899
    if-eqz p0, :cond_0

    .line 900
    if-nez p2, :cond_1

    .line 901
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/StringBuffer;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    if-eqz p0, :cond_0

    .line 853
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 855
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    if-eqz p0, :cond_0

    .line 593
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 595
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    if-eqz p0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    if-eqz p0, :cond_0

    .line 636
    if-nez p2, :cond_1

    .line 637
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->write([BLjava/io/Writer;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    if-eqz p0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 682
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    if-eqz p0, :cond_0

    .line 705
    if-nez p2, :cond_1

    .line 706
    invoke-static {p0, p1}, Lorg/apache/tika/io/IOUtils;->write([CLjava/io/OutputStream;)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .param p0, "data"    # [C
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    if-eqz p0, :cond_0

    .line 659
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 661
    :cond_0
    return-void
.end method
