.class public Lorg/apache/tika/sax/TextContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TextContentHandler.java"


# instance fields
.field private final delegate:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "delegate"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    .line 36
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 42
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 58
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 48
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/tika/sax/TextContentHandler;->delegate:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
