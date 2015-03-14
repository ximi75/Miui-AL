.class public Lorg/apache/tika/sax/xpath/SubtreeMatcher;
.super Lorg/apache/tika/sax/xpath/Matcher;
.source "SubtreeMatcher.java"


# instance fields
.field private final then:Lorg/apache/tika/sax/xpath/Matcher;


# direct methods
.method public constructor <init>(Lorg/apache/tika/sax/xpath/Matcher;)V
    .locals 0
    .param p1, "then"    # Lorg/apache/tika/sax/xpath/Matcher;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/tika/sax/xpath/Matcher;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    .line 29
    return-void
.end method


# virtual methods
.method public descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v1, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v0

    .line 34
    .local v0, "next":Lorg/apache/tika/sax/xpath/Matcher;
    sget-object v1, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    if-ne v0, v1, :cond_1

    .line 37
    .end local p0    # "this":Lorg/apache/tika/sax/xpath/SubtreeMatcher;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/tika/sax/xpath/SubtreeMatcher;
    :cond_1
    new-instance v1, Lorg/apache/tika/sax/xpath/CompositeMatcher;

    invoke-direct {v1, v0, p0}, Lorg/apache/tika/sax/xpath/CompositeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;Lorg/apache/tika/sax/xpath/Matcher;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesElement()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v0

    return v0
.end method

.method public matchesText()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/SubtreeMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    return v0
.end method
