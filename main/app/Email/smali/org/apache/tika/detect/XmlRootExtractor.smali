.class public Lorg/apache/tika/detect/XmlRootExtractor;
.super Ljava/lang/Object;
.source "XmlRootExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractRootElement([B)Ljavax/xml/namespace/QName;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 41
    new-instance v1, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;-><init>(Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;)V

    .line 43
    .local v1, "handler":Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 44
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 46
    const-string/jumbo v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    new-instance v4, Lorg/apache/tika/sax/OfflineContentHandler;

    invoke-direct {v4, v1}, Lorg/apache/tika/sax/OfflineContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 47
    invoke-virtual {v2, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    # getter for: Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;->rootElement:Ljavax/xml/namespace/QName;
    invoke-static {v1}, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;->access$1(Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;)Ljavax/xml/namespace/QName;

    move-result-object v2

    return-object v2

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method
