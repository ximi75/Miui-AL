.class public Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;
.super Ljava/lang/Object;
.source "EmbeddedDocumentExtractor.java"


# static fields
.field private static final ABSTRACT_PATH:Ljava/io/File;

.field private static final DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;


# instance fields
.field private final context:Lorg/apache/tika/parser/ParseContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->ABSTRACT_PATH:Ljava/io/File;

    .line 49
    new-instance v0, Lorg/apache/tika/parser/DelegatingParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/DelegatingParser;-><init>()V

    sput-object v0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/ParseContext;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 55
    return-void
.end method


# virtual methods
.method public parseEmbedded(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Z)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "outputHtml"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p4, :cond_0

    .line 88
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 89
    .local v0, "attributes":Lorg/xml/sax/helpers/AttributesImpl;
    const-string/jumbo v1, ""

    const-string/jumbo v2, "class"

    const-string/jumbo v3, "class"

    const-string/jumbo v4, "CDATA"

    const-string/jumbo v5, "package-entry"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v2, "div"

    const-string/jumbo v3, "div"

    invoke-interface {p2, v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 93
    .end local v0    # "attributes":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_0
    const-string/jumbo v1, "resourceName"

    invoke-virtual {p3, v1}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p4, :cond_1

    .line 95
    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v2, "h1"

    const-string/jumbo v3, "h1"

    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {p2, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 96
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 97
    .local v6, "chars":[C
    const/4 v1, 0x0

    array-length v2, v6

    invoke-interface {p2, v6, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 98
    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v2, "h1"

    const-string/jumbo v3, "h1"

    invoke-interface {p2, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v6    # "chars":[C
    :cond_1
    :try_start_0
    sget-object v1, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->DELEGATING_PARSER:Lorg/apache/tika/parser/Parser;

    .line 104
    new-instance v2, Lorg/apache/tika/io/CloseShieldInputStream;

    invoke-direct {v2, p1}, Lorg/apache/tika/io/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    new-instance v3, Lorg/apache/tika/sax/EmbeddedContentHandler;

    new-instance v4, Lorg/apache/tika/sax/BodyContentHandler;

    invoke-direct {v4, p2}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-direct {v3, v4}, Lorg/apache/tika/sax/EmbeddedContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 106
    iget-object v4, p0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    .line 103
    invoke-interface {v1, v2, v3, p3, v4}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Lorg/apache/tika/exception/TikaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    if-eqz p4, :cond_2

    .line 112
    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v2, "div"

    const-string/jumbo v3, "div"

    invoke-interface {p2, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    return-void

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shouldParseEmbedded(Lorg/apache/tika/metadata/Metadata;)Z
    .locals 5
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    .line 58
    iget-object v3, p0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    const-class v4, Lorg/apache/tika/extractor/DocumentSelector;

    invoke-virtual {v3, v4}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/extractor/DocumentSelector;

    .line 59
    .local v2, "selector":Lorg/apache/tika/extractor/DocumentSelector;
    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2, p1}, Lorg/apache/tika/extractor/DocumentSelector;->select(Lorg/apache/tika/metadata/Metadata;)Z

    move-result v3

    .line 71
    :goto_0
    return v3

    .line 63
    :cond_0
    iget-object v3, p0, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->context:Lorg/apache/tika/parser/ParseContext;

    const-class v4, Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FilenameFilter;

    .line 64
    .local v0, "filter":Ljava/io/FilenameFilter;
    if-eqz v0, :cond_1

    .line 65
    const-string/jumbo v3, "resourceName"

    invoke-virtual {p1, v3}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    sget-object v3, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->ABSTRACT_PATH:Ljava/io/File;

    invoke-interface {v0, v3, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 71
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method
