.class public Lorg/apache/tika/Tika;
.super Ljava/lang/Object;
.source "Tika.java"


# instance fields
.field private final detector:Lorg/apache/tika/detect/Detector;

.field private maxStringLength:I

.field private final parser:Lorg/apache/tika/parser/Parser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/Tika;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/config/TikaConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    new-instance v1, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v1, p1}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/Tika;-><init>(Lorg/apache/tika/detect/Detector;Lorg/apache/tika/parser/Parser;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/detect/Detector;)V
    .locals 1
    .param p1, "detector"    # Lorg/apache/tika/detect/Detector;

    .prologue
    .line 103
    new-instance v0, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v0, p1}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/detect/Detector;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/Tika;-><init>(Lorg/apache/tika/detect/Detector;Lorg/apache/tika/parser/Parser;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/detect/Detector;Lorg/apache/tika/parser/Parser;)V
    .locals 1
    .param p1, "detector"    # Lorg/apache/tika/detect/Detector;
    .param p2, "parser"    # Lorg/apache/tika/parser/Parser;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/tika/Tika;->maxStringLength:I

    .line 75
    iput-object p1, p0, Lorg/apache/tika/Tika;->detector:Lorg/apache/tika/detect/Detector;

    .line 76
    iput-object p2, p0, Lorg/apache/tika/Tika;->parser:Lorg/apache/tika/parser/Parser;

    .line 77
    return-void
.end method


# virtual methods
.method public detect(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/Tika;->detect(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tika/Tika;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/Tika;->detector:Lorg/apache/tika/detect/Detector;

    invoke-interface {v0, p1, p2}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/tika/Tika;->detector:Lorg/apache/tika/detect/Detector;

    .line 135
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    invoke-interface {v0, v1, p2}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public detect(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v1, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v1}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 207
    .local v1, "metadata":Lorg/apache/tika/metadata/Metadata;
    const-string/jumbo v2, "resourceName"

    invoke-virtual {v1, v2, p1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v1}, Lorg/apache/tika/Tika;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected IOException"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public detect(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 187
    .local v0, "metadata":Lorg/apache/tika/metadata/Metadata;
    invoke-static {p1, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v1

    .line 189
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/tika/Tika;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 191
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 189
    return-object v2

    .line 190
    :catchall_0
    move-exception v2

    .line 191
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 192
    throw v2
.end method

.method public getMaxStringLength()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lorg/apache/tika/Tika;->maxStringLength:I

    return v0
.end method

.method public parse(Ljava/io/File;)Ljava/io/Reader;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/Tika;->parse(Ljava/net/URL;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tika/Tika;->parse(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/io/Reader;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 228
    .local v0, "context":Lorg/apache/tika/parser/ParseContext;
    const-class v1, Lorg/apache/tika/parser/Parser;

    iget-object v2, p0, Lorg/apache/tika/Tika;->parser:Lorg/apache/tika/parser/Parser;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 229
    new-instance v1, Lorg/apache/tika/parser/ParsingReader;

    iget-object v2, p0, Lorg/apache/tika/Tika;->parser:Lorg/apache/tika/parser/Parser;

    invoke-direct {v1, v2, p1, p2, v0}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    return-object v1
.end method

.method public parse(Ljava/net/URL;)Ljava/io/Reader;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 264
    .local v0, "metadata":Lorg/apache/tika/metadata/Metadata;
    invoke-static {p1, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v1

    .line 265
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v1, v0}, Lorg/apache/tika/Tika;->parse(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/io/Reader;

    move-result-object v2

    return-object v2
.end method

.method public parseToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/Tika;->parseToString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tika/Tika;->parseToString(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseToString(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v2, Lorg/apache/tika/sax/WriteOutContentHandler;

    iget v3, p0, Lorg/apache/tika/Tika;->maxStringLength:I

    invoke-direct {v2, v3}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(I)V

    .line 288
    .local v2, "handler":Lorg/apache/tika/sax/WriteOutContentHandler;
    :try_start_0
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 289
    .local v0, "context":Lorg/apache/tika/parser/ParseContext;
    const-class v3, Lorg/apache/tika/parser/Parser;

    iget-object v4, p0, Lorg/apache/tika/Tika;->parser:Lorg/apache/tika/parser/Parser;

    invoke-virtual {v0, v3, v4}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 290
    iget-object v3, p0, Lorg/apache/tika/Tika;->parser:Lorg/apache/tika/parser/Parser;

    .line 291
    new-instance v4, Lorg/apache/tika/sax/BodyContentHandler;

    invoke-direct {v4, v2}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 290
    invoke-interface {v3, p1, v4, p2, v0}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 300
    .end local v0    # "context":Lorg/apache/tika/parser/ParseContext;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/tika/sax/WriteOutContentHandler;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Lorg/xml/sax/SAXException;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/tika/sax/WriteOutContentHandler;->isWriteLimitReached(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    new-instance v3, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v4, "Unexpected SAX processing failure"

    invoke-direct {v3, v4, v1}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v3

    .line 298
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 299
    throw v3

    .line 298
    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public parseToString(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 355
    .local v0, "metadata":Lorg/apache/tika/metadata/Metadata;
    invoke-static {p1, v0}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v1

    .line 356
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v1, v0}, Lorg/apache/tika/Tika;->parseToString(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setMaxStringLength(I)V
    .locals 0
    .param p1, "maxStringLength"    # I

    .prologue
    .line 379
    iput p1, p0, Lorg/apache/tika/Tika;->maxStringLength:I

    .line 380
    return-void
.end method
