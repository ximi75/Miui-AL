.class public Lorg/apache/tika/sax/TaggedContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "TaggedContentHandler.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "proxy"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected handleException(Lorg/xml/sax/SAXException;)V
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/tika/sax/TaggedSAXException;

    invoke-direct {v0, p1, p0}, Lorg/apache/tika/sax/TaggedSAXException;-><init>(Lorg/xml/sax/SAXException;Ljava/lang/Object;)V

    throw v0
.end method

.method public isCauseOf(Lorg/xml/sax/SAXException;)Z
    .locals 3
    .param p1, "exception"    # Lorg/xml/sax/SAXException;

    .prologue
    const/4 v1, 0x0

    .line 78
    instance-of v2, p1, Lorg/apache/tika/sax/TaggedSAXException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lorg/apache/tika/sax/TaggedSAXException;

    .line 80
    .local v0, "tagged":Lorg/apache/tika/sax/TaggedSAXException;
    invoke-virtual {v0}, Lorg/apache/tika/sax/TaggedSAXException;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    const/4 v1, 0x1

    .line 82
    .end local v0    # "tagged":Lorg/apache/tika/sax/TaggedSAXException;
    :cond_0
    return v1
.end method

.method public throwIfCauseOf(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 97
    instance-of v1, p1, Lorg/apache/tika/sax/TaggedSAXException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lorg/apache/tika/sax/TaggedSAXException;

    .line 99
    .local v0, "tagged":Lorg/apache/tika/sax/TaggedSAXException;
    invoke-virtual {v0}, Lorg/apache/tika/sax/TaggedSAXException;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/tika/sax/TaggedSAXException;->getCause()Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1

    .line 103
    .end local v0    # "tagged":Lorg/apache/tika/sax/TaggedSAXException;
    :cond_0
    return-void
.end method
