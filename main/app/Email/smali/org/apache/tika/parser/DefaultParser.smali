.class public Lorg/apache/tika/parser/DefaultParser;
.super Lorg/apache/tika/parser/CompositeParser;
.source "DefaultParser.java"


# static fields
.field private static final serialVersionUID:J = 0x32218e4a2f8413d0L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/apache/tika/parser/DefaultParser;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/parser/DefaultParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 77
    new-instance v0, Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-direct {v0}, Lorg/apache/tika/mime/MediaTypeRegistry;-><init>()V

    invoke-static {p1}, Lorg/apache/tika/parser/DefaultParser;->loadParsers(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V

    .line 78
    return-void
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 49
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 50
    const-class v1, Lorg/apache/tika/parser/DefaultParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    :cond_0
    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 55
    :cond_1
    return-object v0
.end method

.method private static loadParsers(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "parsers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/parser/Parser;>;"
    if-eqz p0, :cond_0

    .line 68
    const-class v2, Lorg/apache/tika/parser/Parser;

    invoke-static {v2, p0}, Ljavax/imageio/spi/ServiceRegistry;->lookupProviders(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/tika/parser/Parser;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/tika/parser/Parser;>;"
    :cond_0
    return-object v1

    .line 70
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/tika/parser/Parser;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/parser/Parser;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
