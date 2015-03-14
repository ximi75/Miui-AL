.class public Lorg/apache/tika/parser/EmptyParser;
.super Ljava/lang/Object;
.source "EmptyParser.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# static fields
.field public static INSTANCE:Lorg/apache/tika/parser/EmptyParser; = null

.field private static final serialVersionUID:J = -0x3a8ba78cca68df9bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/tika/parser/EmptyParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/EmptyParser;-><init>()V

    sput-object v0, Lorg/apache/tika/parser/EmptyParser;->INSTANCE:Lorg/apache/tika/parser/EmptyParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
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
    .line 49
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

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
    .line 67
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/EmptyParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 68
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
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/apache/tika/sax/XHTMLContentHandler;

    invoke-direct {v0, p2, p3}, Lorg/apache/tika/sax/XHTMLContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 57
    .local v0, "xhtml":Lorg/apache/tika/sax/XHTMLContentHandler;
    invoke-virtual {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->startDocument()V

    .line 58
    invoke-virtual {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->endDocument()V

    .line 59
    return-void
.end method
