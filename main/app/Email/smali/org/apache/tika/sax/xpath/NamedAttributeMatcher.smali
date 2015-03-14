.class public Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;
.super Lorg/apache/tika/sax/xpath/Matcher;
.source "NamedAttributeMatcher.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/tika/sax/xpath/Matcher;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;->namespace:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 39
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
.method public matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;->namespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/sax/xpath/NamedAttributeMatcher;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
