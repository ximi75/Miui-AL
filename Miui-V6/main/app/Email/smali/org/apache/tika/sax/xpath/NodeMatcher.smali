.class public Lorg/apache/tika/sax/xpath/NodeMatcher;
.super Lorg/apache/tika/sax/xpath/Matcher;
.source "NodeMatcher.java"


# static fields
.field public static final INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/apache/tika/sax/xpath/NodeMatcher;

    invoke-direct {v0}, Lorg/apache/tika/sax/xpath/NodeMatcher;-><init>()V

    sput-object v0, Lorg/apache/tika/sax/xpath/NodeMatcher;->INSTANCE:Lorg/apache/tika/sax/xpath/Matcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/tika/sax/xpath/Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public matchesElement()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public matchesText()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
