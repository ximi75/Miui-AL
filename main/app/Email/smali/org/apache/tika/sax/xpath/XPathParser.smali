.class public Lorg/apache/tika/sax/xpath/XPathParser;
.super Ljava/lang/Object;
.source "XPathParser.java"


# instance fields
.field private final prefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/sax/xpath/XPathParser;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 10
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 59
    const-string/jumbo v4, "/text()"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    sget-object v4, Lorg/apache/tika/sax/xpath/TextMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    .line 110
    :goto_0
    return-object v4

    .line 61
    :cond_0
    const-string/jumbo v4, "/node()"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    sget-object v4, Lorg/apache/tika/sax/xpath/NodeMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v4, "/descendant:node()"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    new-instance v4, Lorg/apache/tika/sax/xpath/CompositeMatcher;

    .line 65
    sget-object v5, Lorg/apache/tika/sax/xpath/TextMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    .line 66
    new-instance v6, Lorg/apache/tika/sax/xpath/ChildMatcher;

    new-instance v7, Lorg/apache/tika/sax/xpath/SubtreeMatcher;

    sget-object v8, Lorg/apache/tika/sax/xpath/NodeMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-direct {v7, v8}, Lorg/apache/tika/sax/xpath/SubtreeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;)V

    invoke-direct {v6, v7}, Lorg/apache/tika/sax/xpath/ChildMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;)V

    .line 64
    invoke-direct {v4, v5, v6}, Lorg/apache/tika/sax/xpath/CompositeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;Lorg/apache/tika/sax/xpath/Matcher;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v4, "/@*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    sget-object v4, Lorg/apache/tika/sax/xpath/AttributeMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 70
    sget-object v4, Lorg/apache/tika/sax/xpath/ElementMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    goto :goto_0

    .line 71
    :cond_4
    const-string/jumbo v4, "/@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 72
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 74
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 75
    .local v0, "colon":I
    if-eq v0, v5, :cond_5

    .line 76
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_5
    iget-object v4, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 80
    new-instance v5, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;

    iget-object v4, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4, v1}, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    .line 82
    :cond_6
    sget-object v4, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    goto :goto_0

    .line 84
    .end local v0    # "colon":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_7
    const-string/jumbo v4, "/*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    new-instance v4, Lorg/apache/tika/sax/xpath/ChildMatcher;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/tika/sax/xpath/XPathParser;->parse(Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/tika/sax/xpath/ChildMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;)V

    goto/16 :goto_0

    .line 86
    :cond_8
    const-string/jumbo v4, "///"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 87
    sget-object v4, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    goto/16 :goto_0

    .line 88
    :cond_9
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 89
    new-instance v4, Lorg/apache/tika/sax/xpath/SubtreeMatcher;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/tika/sax/xpath/XPathParser;->parse(Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/tika/sax/xpath/SubtreeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;)V

    goto/16 :goto_0

    .line 90
    :cond_a
    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 91
    const/16 v4, 0x2f

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 92
    .local v3, "slash":I
    if-ne v3, v5, :cond_b

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 95
    :cond_b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 97
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 98
    .restart local v0    # "colon":I
    if-eq v0, v5, :cond_c

    .line 99
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 100
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_c
    iget-object v4, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 103
    new-instance v5, Lorg/apache/tika/sax/xpath/NamedElementMatcher;

    .line 104
    iget-object v4, p0, Lorg/apache/tika/sax/xpath/XPathParser;->prefixes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/tika/sax/xpath/XPathParser;->parse(Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v6

    .line 103
    invoke-direct {v5, v4, v1, v6}, Lorg/apache/tika/sax/xpath/NamedElementMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/sax/xpath/Matcher;)V

    move-object v4, v5

    goto/16 :goto_0

    .line 107
    :cond_d
    sget-object v4, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    goto/16 :goto_0

    .line 110
    .end local v0    # "colon":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "slash":I
    :cond_e
    sget-object v4, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    goto/16 :goto_0
.end method
