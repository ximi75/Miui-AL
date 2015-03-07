.class public Lorg/apache/tika/sax/xpath/ChildMatcher;
.super Lorg/apache/tika/sax/xpath/Matcher;
.source "ChildMatcher.java"


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
    iput-object p1, p0, Lorg/apache/tika/sax/xpath/ChildMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    .line 29
    return-void
.end method


# virtual methods
.method public descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/tika/sax/xpath/ChildMatcher;->then:Lorg/apache/tika/sax/xpath/Matcher;

    return-object v0
.end method
