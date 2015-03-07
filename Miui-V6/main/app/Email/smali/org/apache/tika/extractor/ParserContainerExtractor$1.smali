.class Lorg/apache/tika/extractor/ParserContainerExtractor$1;
.super Ljava/lang/Object;
.source "ParserContainerExtractor.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tika/extractor/ParserContainerExtractor;->extract(Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/extractor/ContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

.field private final synthetic val$handler:Lorg/apache/tika/extractor/EmbeddedResourceHandler;

.field private final synthetic val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;


# direct methods
.method constructor <init>(Lorg/apache/tika/extractor/ParserContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;Lorg/apache/tika/extractor/ContainerExtractor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

    iput-object p2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$handler:Lorg/apache/tika/extractor/EmbeddedResourceHandler;

    iput-object p3, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;
    .locals 1
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

    # getter for: Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;
    invoke-static {v0}, Lorg/apache/tika/extractor/ParserContainerExtractor;->access$0(Lorg/apache/tika/extractor/ParserContainerExtractor;)Lorg/apache/tika/parser/Parser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/tika/parser/Parser;->getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1
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
    .line 114
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 115
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "ignored"    # Lorg/xml/sax/ContentHandler;
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
    .line 86
    const-string/jumbo v2, "resourceName"

    invoke-virtual {p3, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p3, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p3, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 98
    .local v1, "type":Lorg/apache/tika/mime/MediaType;
    :goto_0
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$handler:Lorg/apache/tika/extractor/EmbeddedResourceHandler;

    invoke-interface {v2, v0, v1, p1}, Lorg/apache/tika/extractor/EmbeddedResourceHandler;->handle(Ljava/lang/String;Lorg/apache/tika/mime/MediaType;Ljava/io/InputStream;)V

    .line 101
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;

    iget-object v3, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

    if-ne v2, v3, :cond_3

    .line 103
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

    # getter for: Lorg/apache/tika/extractor/ParserContainerExtractor;->parser:Lorg/apache/tika/parser/Parser;
    invoke-static {v2}, Lorg/apache/tika/extractor/ParserContainerExtractor;->access$0(Lorg/apache/tika/extractor/ParserContainerExtractor;)Lorg/apache/tika/parser/Parser;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v3}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v2, p1, v3, p3, p4}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 110
    :cond_0
    :goto_1
    return-void

    .line 91
    .end local v1    # "type":Lorg/apache/tika/mime/MediaType;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-static {p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object p1

    .line 94
    :cond_2
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->this$0:Lorg/apache/tika/extractor/ParserContainerExtractor;

    # getter for: Lorg/apache/tika/extractor/ParserContainerExtractor;->detector:Lorg/apache/tika/detect/Detector;
    invoke-static {v2}, Lorg/apache/tika/extractor/ParserContainerExtractor;->access$1(Lorg/apache/tika/extractor/ParserContainerExtractor;)Lorg/apache/tika/detect/Detector;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .restart local v1    # "type":Lorg/apache/tika/mime/MediaType;
    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;

    .line 106
    invoke-static {p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$recurseExtractor:Lorg/apache/tika/extractor/ContainerExtractor;

    iget-object v5, p0, Lorg/apache/tika/extractor/ParserContainerExtractor$1;->val$handler:Lorg/apache/tika/extractor/EmbeddedResourceHandler;

    .line 105
    invoke-interface {v2, v3, v4, v5}, Lorg/apache/tika/extractor/ContainerExtractor;->extract(Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/extractor/ContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;)V

    goto :goto_1
.end method
