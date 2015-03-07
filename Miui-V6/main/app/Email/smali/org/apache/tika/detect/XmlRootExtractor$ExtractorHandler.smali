.class Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlRootExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/detect/XmlRootExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractorHandler"
.end annotation


# instance fields
.field private rootElement:Ljavax/xml/namespace/QName;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;->rootElement:Ljavax/xml/namespace/QName;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;)Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;->rootElement:Ljavax/xml/namespace/QName;

    return-object v0
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tika/detect/XmlRootExtractor$ExtractorHandler;->rootElement:Ljavax/xml/namespace/QName;

    .line 64
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Aborting: root element received"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
