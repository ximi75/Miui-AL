.class public Lorg/apache/tika/sax/EmbeddedContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "EmbeddedContentHandler.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 40
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
