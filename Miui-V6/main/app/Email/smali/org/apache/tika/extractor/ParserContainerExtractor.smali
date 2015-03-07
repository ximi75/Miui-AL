.class public Lorg/apache/tika/extractor/ParserContainerExtractor;
.super Ljava/lang/Object;
.source "ParserContainerExtractor.java"

# interfaces
.implements Lorg/apache/tika/extractor/ContainerExtractor;


# static fields
.field private static final serialVersionUID:J = 0x1f6126b4ba74704aL


# instance fields
.field private final detector:Lorg/apache/tika/detect/Detector;

.field private final parser:Lorg/apache/tika/parser/Parser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/extractor/ParserContainerExtractor;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/config/TikaConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;

    .prologue
    .line 60
    new-instance v0, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v0, p1}, Lorg/apache/tika/parser/AutoDetectParser;-><init>(Lorg/apache/tika/config/TikaConfig;)V

    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/extractor/ParserContainerExtractor;-><init>(Lorg/apache/tika/parser/Parser;Lorg/apache/tika/detect/Detector;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/Parser;Lorg/apache/tika/detect/Detector;)V
    .locals 0
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;
    .param p2, "detector"    # Lorg/apache/tika/detect/Detector;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;

    .line 65
    iput-object p2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->detector:Lorg/apache/tika/detect/Detector;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/apache/tika/extractor/ParserContainerExtractor;)Lorg/apache/tika/parser/Parser;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/tika/extractor/ParserContainerExtractor;)Lorg/apache/tika/detect/Detector;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->detector:Lorg/apache/tika/detect/Detector;

    return-object v0
.end method


# virtual methods
.method public extract(Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/extractor/ContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;)V
    .locals 5
    .param p1, "stream"    # Lorg/apache/tika/io/TikaInputStream;
    .param p2, "recurseExtractor"    # Lorg/apache/tika/extractor/ContainerExtractor;
    .param p3, "handler"    # Lorg/apache/tika/extractor/EmbeddedResourceHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 78
    .local v0, "context":Lorg/apache/tika/parser/ParseContext;
    const-class v2, Lorg/apache/tika/parser/Parser;

    new-instance v3, Lorg/apache/tika/extractor/ParserContainerExtractor$1;

    invoke-direct {v3, p0, p3, p2}, Lorg/apache/tika/extractor/ParserContainerExtractor$1;-><init>(Lorg/apache/tika/extractor/ParserContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;Lorg/apache/tika/extractor/ContainerExtractor;)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    :try_start_0
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;

    new-instance v3, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v3}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v4, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v4}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-interface {v2, p1, v3, v4, v0}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v3, "Unexpected SAX exception"

    invoke-direct {v2, v3, v1}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isSupported(Lorg/apache/tika/io/TikaInputStream;)Z
    .locals 3
    .param p1, "input"    # Lorg/apache/tika/io/TikaInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->detector:Lorg/apache/tika/detect/Detector;

    new-instance v2, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v2}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-interface {v1, p1, v2}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 70
    .local v0, "type":Lorg/apache/tika/mime/MediaType;
    iget-object v1, p0, Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;

    new-instance v2, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v2}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-interface {v1, v2}, Lorg/apache/tika/parser/Parser;->getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
