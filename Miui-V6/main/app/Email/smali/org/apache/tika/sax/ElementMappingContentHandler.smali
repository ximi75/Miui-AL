.class public Lorg/apache/tika/sax/ElementMappingContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "ElementMappingContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;
    }
.end annotation


# instance fields
.field private final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/util/Map;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/ContentHandler;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;>;"
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 43
    iput-object p2, p0, Lorg/apache/tika/sax/ElementMappingContentHandler;->mappings:Ljava/util/Map;

    .line 44
    return-void
.end method

.method protected static final getQNameAsString(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 3
    .param p0, "qname"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v2, p0, Lorg/apache/tika/sax/ElementMappingContentHandler;->mappings:Ljava/util/Map;

    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;

    .line 65
    .local v0, "mapping":Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->getMappedTagName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 68
    .local v1, "tag":Ljavax/xml/namespace/QName;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v1}, Lorg/apache/tika/sax/ElementMappingContentHandler;->getQNameAsString(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-super {p0, v2, v3, v4}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1    # "tag":Ljavax/xml/namespace/QName;
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v2, p0, Lorg/apache/tika/sax/ElementMappingContentHandler;->mappings:Ljava/util/Map;

    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;

    .line 52
    .local v0, "mapping":Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->getMappedTagName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 55
    .local v1, "tag":Ljavax/xml/namespace/QName;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v1}, Lorg/apache/tika/sax/ElementMappingContentHandler;->getQNameAsString(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p4}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->mapAttributes(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v5

    .line 54
    invoke-super {p0, v2, v3, v4, v5}, Lorg/apache/tika/sax/ContentHandlerDecorator;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 58
    .end local v1    # "tag":Ljavax/xml/namespace/QName;
    :cond_0
    return-void
.end method
