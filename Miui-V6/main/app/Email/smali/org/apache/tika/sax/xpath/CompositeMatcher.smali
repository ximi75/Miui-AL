.class public Lorg/apache/tika/sax/xpath/CompositeMatcher;
.super Lorg/apache/tika/sax/xpath/Matcher;
.source "CompositeMatcher.java"


# instance fields
.field private final a:Lorg/apache/tika/sax/xpath/Matcher;

.field private final b:Lorg/apache/tika/sax/xpath/Matcher;


# direct methods
.method public constructor <init>(Lorg/apache/tika/sax/xpath/Matcher;Lorg/apache/tika/sax/xpath/Matcher;)V
    .locals 0
    .param p1, "a"    # Lorg/apache/tika/sax/xpath/Matcher;
    .param p2, "b"    # Lorg/apache/tika/sax/xpath/Matcher;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/tika/sax/xpath/Matcher;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    .line 31
    iput-object p2, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    .line 32
    return-void
.end method


# virtual methods
.method public descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v2, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v0

    .line 36
    .local v0, "a":Lorg/apache/tika/sax/xpath/Matcher;
    iget-object v2, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v2, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v1

    .line 37
    .local v1, "b":Lorg/apache/tika/sax/xpath/Matcher;
    sget-object v2, Lorg/apache/tika/sax/xpath/CompositeMatcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    if-ne v0, v2, :cond_0

    .line 44
    .end local v1    # "b":Lorg/apache/tika/sax/xpath/Matcher;
    .end local p0    # "this":Lorg/apache/tika/sax/xpath/CompositeMatcher;
    :goto_0
    return-object v1

    .line 39
    .restart local v1    # "b":Lorg/apache/tika/sax/xpath/Matcher;
    .restart local p0    # "this":Lorg/apache/tika/sax/xpath/CompositeMatcher;
    :cond_0
    sget-object v2, Lorg/apache/tika/sax/xpath/CompositeMatcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    if-ne v2, v1, :cond_2

    move-object v1, p0

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    new-instance p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;

    .end local p0    # "this":Lorg/apache/tika/sax/xpath/CompositeMatcher;
    invoke-direct {p0, v0, v1}, Lorg/apache/tika/sax/xpath/CompositeMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;Lorg/apache/tika/sax/xpath/Matcher;)V

    move-object v1, p0

    goto :goto_0
.end method

.method public matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tika/sax/xpath/Matcher;->matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matchesElement()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesElement()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matchesText()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->a:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/sax/xpath/CompositeMatcher;->b:Lorg/apache/tika/sax/xpath/Matcher;

    invoke-virtual {v0}, Lorg/apache/tika/sax/xpath/Matcher;->matchesText()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
