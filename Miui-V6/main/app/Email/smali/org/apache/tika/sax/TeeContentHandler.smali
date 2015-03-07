.class public Lorg/apache/tika/sax/TeeContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TeeContentHandler.java"


# instance fields
.field private final handlers:[Lorg/xml/sax/ContentHandler;


# direct methods
.method public varargs constructor <init>([Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handlers"    # [Lorg/xml/sax/ContentHandler;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    .line 35
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 104
    return-void

    .line 101
    :cond_0
    aget-object v0, v2, v1

    .line 102
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 79
    return-void

    .line 76
    :cond_0
    aget-object v0, v2, v1

    .line 77
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 96
    return-void

    .line 93
    :cond_0
    aget-object v0, v2, v1

    .line 94
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 50
    return-void

    .line 47
    :cond_0
    aget-object v0, v2, v1

    .line 48
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 112
    return-void

    .line 109
    :cond_0
    aget-object v0, v2, v1

    .line 110
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    aget-object v0, v2, v1

    .line 56
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 4
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 62
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 65
    return-void

    .line 62
    :cond_0
    aget-object v0, v2, v1

    .line 63
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 119
    return-void

    .line 116
    :cond_0
    aget-object v0, v2, v1

    .line 117
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    aget-object v0, v2, v1

    .line 70
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    aget-object v0, v2, v1

    .line 86
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v2, p0, Lorg/apache/tika/sax/TeeContentHandler;->handlers:[Lorg/xml/sax/ContentHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    aget-object v0, v2, v1

    .line 41
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
