.class public Lorg/apache/tika/parser/ParserDecorator;
.super Ljava/lang/Object;
.source "ParserDecorator.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# static fields
.field private static final serialVersionUID:J = -0x35976799b9d89314L


# instance fields
.field private final parser:Lorg/apache/tika/parser/Parser;


# direct methods
.method public constructor <init>(Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/tika/parser/ParserDecorator;->parser:Lorg/apache/tika/parser/Parser;

    .line 71
    return-void
.end method

.method public static final withTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;
    .locals 1
    .param p0, "parser"    # Lorg/apache/tika/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/Parser;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;)",
            "Lorg/apache/tika/parser/Parser;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    new-instance v0, Lorg/apache/tika/parser/ParserDecorator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/tika/parser/ParserDecorator$1;-><init>(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)V

    return-object v0
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
    .line 79
    iget-object v0, p0, Lorg/apache/tika/parser/ParserDecorator;->parser:Lorg/apache/tika/parser/Parser;

    invoke-interface {v0, p1}, Lorg/apache/tika/parser/Parser;->getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedParser()Lorg/apache/tika/parser/Parser;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/tika/parser/ParserDecorator;->parser:Lorg/apache/tika/parser/Parser;

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
    .line 100
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/ParserDecorator;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 101
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/tika/parser/ParserDecorator;->parser:Lorg/apache/tika/parser/Parser;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 92
    return-void
.end method
