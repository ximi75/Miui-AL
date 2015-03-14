.class public Lorg/apache/tika/parser/DelegatingParser;
.super Ljava/lang/Object;
.source "DelegatingParser.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDelegateParser(Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;
    .locals 2
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;

    .prologue
    .line 51
    const-class v0, Lorg/apache/tika/parser/Parser;

    sget-object v1, Lorg/apache/tika/parser/EmptyParser;->INSTANCE:Lorg/apache/tika/parser/EmptyParser;

    invoke-virtual {p1, v0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/parser/Parser;

    return-object v0
.end method

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
    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/tika/parser/DelegatingParser;->getDelegateParser(Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;

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
    .line 81
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/DelegatingParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 82
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p4}, Lorg/apache/tika/parser/DelegatingParser;->getDelegateParser(Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 73
    return-void
.end method
