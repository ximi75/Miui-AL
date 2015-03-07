.class public Lorg/apache/tika/parser/AutoDetectParser;
.super Lorg/apache/tika/parser/CompositeParser;
.source "AutoDetectParser.java"


# static fields
.field private static final serialVersionUID:J = 0x54ccb32ef03a56d2L


# instance fields
.field private detector:Lorg/apache/tika/detect/Detector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/config/TikaConfig;)V
    .locals 4
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/tika/parser/Parser;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getParser()Lorg/apache/tika/parser/Parser;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;[Lorg/apache/tika/parser/Parser;)V

    .line 82
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;->setDetector(Lorg/apache/tika/detect/Detector;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/detect/Detector;)V
    .locals 1
    .param p1, "detector"    # Lorg/apache/tika/detect/Detector;

    .prologue
    .line 58
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/tika/parser/AutoDetectParser;->setDetector(Lorg/apache/tika/detect/Detector;)V

    .line 60
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/tika/detect/Detector;[Lorg/apache/tika/parser/Parser;)V
    .locals 1
    .param p1, "detector"    # Lorg/apache/tika/detect/Detector;
    .param p2, "parsers"    # [Lorg/apache/tika/parser/Parser;

    .prologue
    .line 76
    invoke-static {}, Lorg/apache/tika/mime/MediaTypeRegistry;->getDefaultRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;[Lorg/apache/tika/parser/Parser;)V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/tika/parser/AutoDetectParser;->setDetector(Lorg/apache/tika/detect/Detector;)V

    .line 78
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tika/parser/Parser;)V
    .locals 1
    .param p1, "parsers"    # [Lorg/apache/tika/parser/Parser;

    .prologue
    .line 72
    invoke-static {}, Lorg/apache/tika/mime/MimeTypes;->getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/detect/Detector;[Lorg/apache/tika/parser/Parser;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDetector()Lorg/apache/tika/detect/Detector;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/tika/parser/AutoDetectParser;->detector:Lorg/apache/tika/detect/Detector;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 149
    .local v0, "context":Lorg/apache/tika/parser/ParseContext;
    const-class v1, Lorg/apache/tika/parser/Parser;

    invoke-virtual {v0, v1, p0}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/AutoDetectParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 151
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 120
    instance-of v5, p1, Lorg/apache/tika/io/TikaInputStream;

    if-nez v5, :cond_0

    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 124
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "stream":Ljava/io/InputStream;
    .local v3, "stream":Ljava/io/InputStream;
    move-object p1, v3

    .line 128
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_0
    iget-object v5, p0, Lorg/apache/tika/parser/AutoDetectParser;->detector:Lorg/apache/tika/detect/Detector;

    invoke-interface {v5, p1, p3}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v4

    .line 129
    .local v4, "type":Lorg/apache/tika/mime/MediaType;
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v4}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lorg/apache/tika/io/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/tika/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v0, "count":Lorg/apache/tika/io/CountingInputStream;
    new-instance v2, Lorg/apache/tika/sax/SecureContentHandler;

    invoke-direct {v2, p2, v0}, Lorg/apache/tika/sax/SecureContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/io/CountingInputStream;)V

    .line 137
    .local v2, "secure":Lorg/apache/tika/sax/SecureContentHandler;
    :try_start_0
    invoke-super {p0, v0, v2, p3, p4}, Lorg/apache/tika/parser/CompositeParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2, v1}, Lorg/apache/tika/sax/SecureContentHandler;->throwIfCauseOf(Lorg/xml/sax/SAXException;)V

    .line 141
    throw v1
.end method

.method public setConfig(Lorg/apache/tika/config/TikaConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getParsers()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;->setParsers(Ljava/util/Map;)V

    .line 90
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;->setDetector(Lorg/apache/tika/detect/Detector;)V

    .line 91
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/parser/AutoDetectParser;->setMediaTypeRegistry(Lorg/apache/tika/mime/MediaTypeRegistry;)V

    .line 92
    return-void
.end method

.method public setDetector(Lorg/apache/tika/detect/Detector;)V
    .locals 0
    .param p1, "detector"    # Lorg/apache/tika/detect/Detector;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/tika/parser/AutoDetectParser;->detector:Lorg/apache/tika/detect/Detector;

    .line 114
    return-void
.end method
