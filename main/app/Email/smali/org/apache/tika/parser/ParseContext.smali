.class public Lorg/apache/tika/parser/ParseContext;
.super Ljava/lang/Object;
.source "ParseContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x522d2b73f81b0ee6L


# instance fields
.field private final context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/parser/ParseContext;->context:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/apache/tika/parser/ParseContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 63
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 78
    const-class v2, Ljavax/xml/parsers/SAXParser;

    invoke-virtual {p0, v2}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/parsers/SAXParser;

    .line 79
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    if-eqz v1, :cond_0

    .line 83
    .end local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    return-object v1

    .restart local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tika/parser/ParseContext;->getSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v3, "Unable to configure a SAX parser"

    invoke-direct {v2, v3, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v3, "Unable to create a SAX parser"

    invoke-direct {v2, v3, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    const-class v1, Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {p0, v1}, Lorg/apache/tika/parser/ParseContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParserFactory;

    .line 104
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 109
    :try_start_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    goto :goto_0

    .line 110
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public set(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/tika/parser/ParseContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
