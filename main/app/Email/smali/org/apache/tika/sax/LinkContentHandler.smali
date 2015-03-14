.class public Lorg/apache/tika/sax/LinkContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LinkContentHandler.java"


# instance fields
.field private final builderStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/tika/sax/LinkBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/sax/Link;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/LinkContentHandler;->builderStack:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/LinkContentHandler;->links:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lorg/apache/tika/sax/LinkContentHandler;->builderStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    return-void

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/sax/LinkBuilder;

    .line 84
    .local v0, "builder":Lorg/apache/tika/sax/LinkBuilder;
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tika/sax/LinkBuilder;->characters([CII)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string/jumbo v0, "a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "img"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/sax/LinkContentHandler;->links:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/tika/sax/LinkContentHandler;->builderStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/sax/LinkBuilder;

    invoke-virtual {v0}, Lorg/apache/tika/sax/LinkBuilder;->getLink()Lorg/apache/tika/sax/Link;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    return-void
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/sax/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/tika/sax/LinkContentHandler;->links:Ljava/util/List;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/sax/LinkContentHandler;->characters([CII)V

    .line 91
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 60
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string/jumbo v3, "a"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    new-instance v1, Lorg/apache/tika/sax/LinkBuilder;

    const-string/jumbo v3, "a"

    invoke-direct {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "builder":Lorg/apache/tika/sax/LinkBuilder;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "href"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;->setURI(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v3, ""

    const-string/jumbo v4, "title"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;->setTitle(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lorg/apache/tika/sax/LinkContentHandler;->builderStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 79
    .end local v1    # "builder":Lorg/apache/tika/sax/LinkBuilder;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string/jumbo v3, "img"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    new-instance v1, Lorg/apache/tika/sax/LinkBuilder;

    const-string/jumbo v3, "img"

    invoke-direct {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v1    # "builder":Lorg/apache/tika/sax/LinkBuilder;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "src"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;->setURI(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v3, ""

    const-string/jumbo v4, "title"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tika/sax/LinkBuilder;->setTitle(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lorg/apache/tika/sax/LinkContentHandler;->builderStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 72
    const-string/jumbo v3, ""

    const-string/jumbo v4, "alt"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "alt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 75
    .local v2, "ch":[C
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/tika/sax/LinkContentHandler;->characters([CII)V

    goto :goto_0
.end method
