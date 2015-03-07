.class public Lorg/apache/tika/parser/ParserPostProcessor;
.super Lorg/apache/tika/parser/ParserDecorator;
.source "ParserPostProcessor.java"


# direct methods
.method public constructor <init>(Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/tika/parser/ParserDecorator;-><init>(Lorg/apache/tika/parser/Parser;)V

    .line 45
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 55
    new-instance v0, Lorg/apache/tika/sax/BodyContentHandler;

    invoke-direct {v0}, Lorg/apache/tika/sax/BodyContentHandler;-><init>()V

    .line 56
    .local v0, "body":Lorg/xml/sax/ContentHandler;
    new-instance v4, Lorg/apache/tika/sax/TeeContentHandler;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/xml/sax/ContentHandler;

    aput-object p2, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Lorg/apache/tika/sax/TeeContentHandler;-><init>([Lorg/xml/sax/ContentHandler;)V

    .line 57
    .local v4, "tee":Lorg/xml/sax/ContentHandler;
    invoke-super {p0, p1, v4, p3, p4}, Lorg/apache/tika/parser/ParserDecorator;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "content":Ljava/lang/String;
    const-string/jumbo v5, "fulltext"

    invoke-virtual {p3, v5, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 63
    .local v2, "length":I
    const-string/jumbo v5, "summary"

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lorg/apache/tika/utils/RegexUtils;->extractLinks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, "link":Ljava/lang/String;
    const-string/jumbo v6, "outlinks"

    invoke-virtual {p3, v6, v3}, Lorg/apache/tika/metadata/Metadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
