.class public Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;
.super Ljava/lang/Object;
.source "ElementMappingContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/sax/ElementMappingContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetElement"
.end annotation


# instance fields
.field private final attributesMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private final mappedTagName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mappedTagURI"    # Ljava/lang/String;
    .param p2, "mappedTagLocalName"    # Ljava/lang/String;

    .prologue
    .line 113
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "mappedTagURI"    # Ljava/lang/String;
    .param p2, "mappedTagLocalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "attributesMapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;>;"
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p1, "mappedTagName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Map;)V
    .locals 0
    .param p1, "mappedTagName"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "attributesMapping":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->mappedTagName:Ljavax/xml/namespace/QName;

    .line 91
    iput-object p2, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    .line 92
    return-void
.end method


# virtual methods
.method public getAttributesMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getMappedTagName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->mappedTagName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public mapAttributes(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 8
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 126
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 127
    .local v0, "natts":Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v6, v1, :cond_0

    .line 137
    return-object v0

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/sax/ElementMappingContentHandler$TargetElement;->attributesMapping:Ljava/util/Map;

    .line 129
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/namespace/QName;

    .line 130
    .local v7, "name":Ljavax/xml/namespace/QName;
    if-eqz v7, :cond_1

    .line 132
    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v7}, Lorg/apache/tika/sax/ElementMappingContentHandler;->getQNameAsString(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
