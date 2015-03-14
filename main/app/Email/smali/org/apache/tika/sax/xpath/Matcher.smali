.class public Lorg/apache/tika/sax/xpath/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"


# static fields
.field public static final FAIL:Lorg/apache/tika/sax/xpath/Matcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/tika/sax/xpath/Matcher;

    invoke-direct {v0}, Lorg/apache/tika/sax/xpath/Matcher;-><init>()V

    sput-object v0, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public descend(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tika/sax/xpath/Matcher;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/apache/tika/sax/xpath/Matcher;->FAIL:Lorg/apache/tika/sax/xpath/Matcher;

    return-object v0
.end method

.method public matchesAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public matchesElement()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public matchesText()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
