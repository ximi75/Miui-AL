.class public Lorg/apache/tika/io/TikaInputStream;
.super Lorg/apache/tika/io/ProxyInputStream;
.source "TikaInputStream.java"


# static fields
.field private static final BLOB_SIZE_THRESHOLD:I = 0x100000


# instance fields
.field private file:Ljava/io/File;

.field private length:J

.field private mark:J

.field private openContainer:Ljava/lang/Object;

.field private position:J

.field private temporary:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/io/File;J)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "length"    # J

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lorg/apache/tika/io/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    .line 326
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->mark:J

    .line 345
    iput-object p2, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    .line 346
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/tika/io/TikaInputStream;->temporary:Z

    .line 347
    iput-wide p3, p0, Lorg/apache/tika/io/TikaInputStream;->length:J

    .line 348
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get(Ljava/io/File;)Lorg/apache/tika/io/TikaInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/File;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "resourceName"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lorg/apache/tika/io/TikaInputStream;

    .line 144
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 143
    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/tika/io/TikaInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;J)V

    return-object v0
.end method

.method public static get(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 83
    instance-of v0, p0, Lorg/apache/tika/io/TikaInputStream;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Lorg/apache/tika/io/TikaInputStream;

    .line 86
    .end local p0    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object p0

    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lorg/apache/tika/io/TikaInputStream;

    .line 87
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 86
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/tika/io/TikaInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;J)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/tika/io/TikaInputStream;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URI;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URI;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const-string/jumbo v1, "file"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 228
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {v0, p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/File;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v1

    .line 233
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public static get(Ljava/net/URL;)Lorg/apache/tika/io/TikaInputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    .locals 12
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    const-string/jumbo v7, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 262
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    invoke-static {v2, p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/File;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 293
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v7

    .line 265
    :catch_0
    move-exception v7

    .line 270
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 272
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "path":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 274
    .local v5, "slash":I
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 275
    const-string/jumbo v7, "resourceName"

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 280
    const-string/jumbo v7, "Content-Type"

    invoke-virtual {p1, v7, v6}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 285
    const-string/jumbo v7, "Content-Encoding"

    invoke-virtual {p1, v7, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 289
    .local v3, "length":I
    if-ltz v3, :cond_4

    .line 290
    const-string/jumbo v7, "Content-Length"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_4
    new-instance v7, Lorg/apache/tika/io/TikaInputStream;

    .line 294
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 295
    const/4 v9, 0x0

    int-to-long v10, v3

    .line 293
    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/tika/io/TikaInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;J)V

    goto :goto_0
.end method

.method public static get(Ljava/sql/Blob;)Lorg/apache/tika/io/TikaInputStream;
    .locals 1
    .param p0, "blob"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/sql/Blob;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/sql/Blob;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    .locals 5
    .param p0, "blob"    # Ljava/sql/Blob;
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 184
    const-wide/16 v0, -0x1

    .line 186
    .local v0, "length":J
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Blob;->length()J

    move-result-wide v0

    .line 187
    const-string/jumbo v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 195
    const-wide/16 v2, 0x1

    long-to-int v4, v0

    invoke-interface {p0, v2, v3, v4}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/tika/io/TikaInputStream;->get([BLorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v2

    .line 197
    :goto_1
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/tika/io/TikaInputStream;

    .line 198
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-interface {p0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    const/4 v4, 0x0

    .line 197
    invoke-direct {v2, v3, v4, v0, v1}, Lorg/apache/tika/io/TikaInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;J)V

    goto :goto_1

    .line 188
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static get([B)Lorg/apache/tika/io/TikaInputStream;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 99
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/tika/io/TikaInputStream;->get([BLorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static get([BLorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    .line 112
    const-string/jumbo v0, "Content-Length"

    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lorg/apache/tika/io/TikaInputStream;

    .line 115
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    array-length v3, p0

    int-to-long v3, v3

    .line 114
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/tika/io/TikaInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;J)V

    return-object v0
.end method

.method public static isTikaInputStream(Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 71
    instance-of v0, p0, Lorg/apache/tika/io/TikaInputStream;

    return v0
.end method


# virtual methods
.method protected afterRead(I)V
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 540
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lorg/apache/tika/io/TikaInputStream;->close()V

    goto :goto_0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/tika/io/ProxyInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method protected beforeRead(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 530
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    .line 535
    :cond_0
    return-void

    .line 532
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "End of the stream reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->openContainer:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 512
    iput-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->openContainer:Ljava/lang/Object;

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 516
    iput-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    .line 518
    :cond_1
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 519
    iget-boolean v0, p0, Lorg/apache/tika/io/TikaInputStream;->temporary:Z

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 522
    :cond_2
    iput-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    .line 524
    :cond_3
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream has already been read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    iget-wide v1, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 409
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream is already being read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_1
    const-string/jumbo v1, "apache-tika-"

    const-string/jumbo v2, ".tmp"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    .line 412
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 414
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 418
    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 420
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    .line 423
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_2
    iget-object v1, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    return-object v1

    .line 415
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .line 416
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 417
    throw v1
.end method

.method public getLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lorg/apache/tika/io/TikaInputStream;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->length:J

    .line 444
    :cond_0
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->length:J

    return-wide v0
.end method

.method public getOpenContainer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->openContainer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasFile()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLength()Z
    .locals 4

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 492
    invoke-super {p0, p1}, Lorg/apache/tika/io/ProxyInputStream;->mark(I)V

    .line 493
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->mark:J

    .line 494
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public peek([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 363
    .local v1, "n":I
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/apache/tika/io/TikaInputStream;->mark(I)V

    .line 365
    invoke-virtual {p0, p1}, Lorg/apache/tika/io/TikaInputStream;->read([B)I

    move-result v0

    .line 366
    .local v0, "m":I
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/apache/tika/io/TikaInputStream;->reset()V

    .line 377
    return v1

    .line 367
    :cond_0
    add-int/2addr v1, v0

    .line 368
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 369
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/tika/io/TikaInputStream;->read([BII)I

    move-result v0

    .line 370
    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, -0x1

    .line 472
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/tika/io/ProxyInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "bts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tika/io/TikaInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "bts"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 479
    const/4 v0, -0x1

    .line 481
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/io/ProxyInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-super {p0}, Lorg/apache/tika/io/ProxyInputStream;->reset()V

    .line 504
    iget-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    .line 505
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tika/io/TikaInputStream;->mark:J

    .line 506
    return-void
.end method

.method public setOpenContainer(Ljava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Ljava/lang/Object;

    .prologue
    .line 397
    iput-object p1, p0, Lorg/apache/tika/io/TikaInputStream;->openContainer:Ljava/lang/Object;

    .line 398
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "ln"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v2, p0, Lorg/apache/tika/io/TikaInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/tika/io/TikaInputStream;->file:Ljava/io/File;

    if-nez v2, :cond_0

    .line 459
    const-wide/16 v0, 0x0

    .line 463
    :goto_0
    return-wide v0

    .line 461
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/tika/io/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 462
    .local v0, "n":J
    iget-wide v2, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/tika/io/TikaInputStream;->position:J

    goto :goto_0
.end method
