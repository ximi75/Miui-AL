.class public Lorg/apache/tika/sax/BodyContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "BodyContentHandler.java"


# static fields
.field private static final MATCHER:Lorg/apache/tika/sax/xpath/Matcher;

.field private static final PARSER:Lorg/apache/tika/sax/xpath/XPathParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/apache/tika/sax/xpath/XPathParser;

    const-string/jumbo v1, "xhtml"

    const-string/jumbo v2, "http://www.w3.org/1999/xhtml"

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/sax/xpath/XPathParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object v0, Lorg/apache/tika/sax/BodyContentHandler;->PARSER:Lorg/apache/tika/sax/xpath/XPathParser;

    .line 45
    sget-object v0, Lorg/apache/tika/sax/BodyContentHandler;->PARSER:Lorg/apache/tika/sax/xpath/XPathParser;

    const-string/jumbo v1, "/xhtml:html/xhtml:body/descendant:node()"

    invoke-virtual {v0, v1}, Lorg/apache/tika/sax/xpath/XPathParser;->parse(Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v0

    .line 44
    sput-object v0, Lorg/apache/tika/sax/BodyContentHandler;->MATCHER:Lorg/apache/tika/sax/xpath/Matcher;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lorg/apache/tika/sax/WriteOutContentHandler;

    invoke-direct {v0}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "writeLimit"    # I

    .prologue
    .line 90
    new-instance v0, Lorg/apache/tika/sax/WriteOutContentHandler;

    invoke-direct {v0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 74
    new-instance v0, Lorg/apache/tika/sax/WriteOutContentHandler;

    invoke-direct {v0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 64
    new-instance v0, Lorg/apache/tika/sax/WriteOutContentHandler;

    invoke-direct {v0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 54
    new-instance v0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;

    sget-object v1, Lorg/apache/tika/sax/BodyContentHandler;->MATCHER:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-direct {v0, p1, v1}, Lorg/apache/tika/sax/xpath/MatchingContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/sax/xpath/Matcher;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 55
    return-void
.end method
