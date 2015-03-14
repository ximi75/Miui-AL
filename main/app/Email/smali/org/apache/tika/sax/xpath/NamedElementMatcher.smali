.class public Lorg/apache/tika/sax/xpath/NamedElementMatcher;
.super Lorg/apache/tika/sax/xpath/ChildMatcher;
.source "NamedElementMatcher.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/sax/xpath/Matcher;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "then"    # Lorg/apache/tika/sax/xpath/Matcher;

    .prologue
    .line 31
    invoke-direct {p0, p3}, Lorg/apache/tika/sax/xpath/ChildMatcher;-><init>(Lorg/apache/tika/sax/xpath/Matcher;)V

    .line 32
    iput-object p1, p0, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->namespace:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->namespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1, p2}, Lorg/apache/tika/sax/xpath/ChildMatcher;->descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/tika/sax/xpath/NamedElementMatcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    goto :goto_0
.end method
