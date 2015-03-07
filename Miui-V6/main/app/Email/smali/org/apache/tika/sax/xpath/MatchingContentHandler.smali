.class public Lorg/apache/tika/sax/xpath/MatchingContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "MatchingContentHandler.java"


# instance fields
.field private matcher:Lorg/apache/tika/sax/xpath/Matcher;

.field private final matchers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/tika/sax/xpath/Matcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/sax/xpath/Matcher;)V
    .locals 1
    .param p1, "delegate"    # Lorg/xml/sax/ContentHandler;
    .param p2, "matcher"    # Lorg/apache/tika/sax/xpath/Matcher;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matchers:Ljava/util/LinkedList;

    .line 39
    iput-object p2, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    .line 40
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
    .line 80
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V

    .line 83
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matchers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/sax/xpath/Matcher;

    iput-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    .line 76
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
    .line 87
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->ignorableWhitespace([CII)V

    .line 90
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;->skippedEntity(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matchers:Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 46
    iget-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v3, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    .line 48
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 49
    .local v0, "matches":Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v6, v3, :cond_2

    .line 59
    iget-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v3}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/ContentHandlerDecorator;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 61
    iget-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v3}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v3, Lorg/apache/tika/sax/xpath/CompositeMatcher;

    iget-object v4, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    sget-object v5, Lorg/apache/tika/sax/xpath/ElementMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-direct {v3, v4, v5}, Lorg/apache/tika/sax/xpath/CompositeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;Lorg/apache/tika/sax/xpath/Matcher;)V

    .line 64
    iput-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    .line 68
    :cond_1
    return-void

    .line 50
    :cond_2
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "attributeURI":Ljava/lang/String;
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "attributeName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/tika/sax/xpath/MatchingContentHandler;->matcher:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v3, v1, v2}, Lorg/apache/tika/sax/xpath/Matcher;->matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
