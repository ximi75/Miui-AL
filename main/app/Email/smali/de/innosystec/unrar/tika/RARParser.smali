.class public Lde/innosystec/unrar/tika/RARParser;
.super Ljava/lang/Object;
.source "RARParser.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# static fields
.field private static final TYPE:Lorg/apache/tika/mime/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "x-rar-compressed"

    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->application(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 33
    sput-object v0, Lde/innosystec/unrar/tika/RARParser;->TYPE:Lorg/apache/tika/mime/MediaType;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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
    .line 37
    sget-object v0, Lde/innosystec/unrar/tika/RARParser;->TYPE:Lorg/apache/tika/mime/MediaType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 73
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/innosystec/unrar/tika/RARParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 74
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 10
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
    .line 45
    new-instance v3, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;

    invoke-direct {v3, p4}, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;-><init>(Lorg/apache/tika/parser/ParseContext;)V

    .line 48
    .local v3, "extractor":Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;
    :try_start_0
    invoke-static {p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/io/InputStream;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tika/io/TikaInputStream;->getFile()Ljava/io/File;

    move-result-object v4

    .line 49
    .local v4, "file":Ljava/io/File;
    new-instance v0, Lde/innosystec/unrar/Archive;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v4, v7, v8}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 51
    .local v0, "archive":Lde/innosystec/unrar/Archive;
    const-string/jumbo v7, "Content-Type"

    sget-object v8, Lde/innosystec/unrar/tika/RARParser;->TYPE:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v8}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v6, Lorg/apache/tika/sax/XHTMLContentHandler;

    invoke-direct {v6, p2, p3}, Lorg/apache/tika/sax/XHTMLContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 54
    .local v6, "xhtml":Lorg/apache/tika/sax/XHTMLContentHandler;
    invoke-virtual {v6}, Lorg/apache/tika/sax/XHTMLContentHandler;->startDocument()V

    .line 55
    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->getFileHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 64
    invoke-virtual {v6}, Lorg/apache/tika/sax/XHTMLContentHandler;->endDocument()V

    .line 68
    return-void

    .line 55
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/innosystec/unrar/rarfile/FileHeader;

    .line 56
    .local v5, "header":Lde/innosystec/unrar/rarfile/FileHeader;
    new-instance v2, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v2}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 58
    .local v2, "entrydata":Lorg/apache/tika/metadata/Metadata;
    const-string/jumbo v8, "resourceName"

    .line 59
    invoke-virtual {v5}, Lde/innosystec/unrar/rarfile/FileHeader;->getFileNameString()Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-virtual {v2, v8, v9}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v2}, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->shouldParseEmbedded(Lorg/apache/tika/metadata/Metadata;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    const/4 v8, 0x1

    invoke-virtual {v3, p1, v6, v2, v8}, Lorg/apache/tika/extractor/EmbeddedDocumentExtractor;->parseEmbedded(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Z)V
    :try_end_0
    .catch Lde/innosystec/unrar/exception/RarException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "archive":Lde/innosystec/unrar/Archive;
    .end local v2    # "entrydata":Lorg/apache/tika/metadata/Metadata;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "header":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v6    # "xhtml":Lorg/apache/tika/sax/XHTMLContentHandler;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lde/innosystec/unrar/exception/RarException;
    new-instance v7, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v8, "Unable to parse a RAR archive"

    invoke-direct {v7, v8, v1}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
