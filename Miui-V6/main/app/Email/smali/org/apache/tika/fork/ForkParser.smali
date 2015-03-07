.class public Lorg/apache/tika/fork/ForkParser;
.super Lorg/apache/tika/parser/DelegatingParser;
.source "ForkParser.java"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;

.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/tika/fork/ForkClient;",
            ">;"
        }
    .end annotation
.end field

.field private poolSize:I


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/tika/parser/DelegatingParser;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tika/fork/ForkParser;->poolSize:I

    .line 55
    iput-object p1, p0, Lorg/apache/tika/fork/ForkParser;->loader:Ljava/lang/ClassLoader;

    .line 56
    return-void
.end method

.method private declared-synchronized acquireClient()Lorg/apache/tika/fork/ForkClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/fork/ForkClient;

    .line 85
    .local v0, "client":Lorg/apache/tika/fork/ForkClient;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/apache/tika/fork/ForkClient;

    .end local v0    # "client":Lorg/apache/tika/fork/ForkClient;
    iget-object v1, p0, Lorg/apache/tika/fork/ForkParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lorg/apache/tika/fork/ForkClient;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .restart local v0    # "client":Lorg/apache/tika/fork/ForkClient;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 84
    .end local v0    # "client":Lorg/apache/tika/fork/ForkClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lorg/apache/tika/fork/ForkParser;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Lorg/apache/tika/fork/ForkParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 46
    .local v1, "parser":Lorg/apache/tika/fork/ForkParser;
    :try_start_0
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 47
    .local v0, "context":Lorg/apache/tika/parser/ParseContext;
    const-class v2, Lorg/apache/tika/parser/Parser;

    new-instance v3, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v3}, Lorg/apache/tika/parser/AutoDetectParser;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 48
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/tika/fork/ForkParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v1}, Lorg/apache/tika/fork/ForkParser;->close()V

    .line 52
    return-void

    .line 49
    .end local v0    # "context":Lorg/apache/tika/parser/ParseContext;
    :catchall_0
    move-exception v2

    .line 50
    invoke-virtual {v1}, Lorg/apache/tika/fork/ForkParser;->close()V

    .line 51
    throw v2
.end method

.method private declared-synchronized releaseClient(Lorg/apache/tika/fork/ForkClient;)V
    .locals 2
    .param p1, "client"    # Lorg/apache/tika/fork/ForkClient;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/tika/fork/ForkParser;->poolSize:I

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/tika/fork/ForkClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v1, p0, Lorg/apache/tika/fork/ForkParser;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tika/fork/ForkParser;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/fork/ForkClient;

    .line 76
    .local v0, "client":Lorg/apache/tika/fork/ForkClient;
    invoke-virtual {v0}, Lorg/apache/tika/fork/ForkClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "client":Lorg/apache/tika/fork/ForkClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkParser;->acquireClient()Lorg/apache/tika/fork/ForkClient;

    move-result-object v0

    .line 68
    .local v0, "client":Lorg/apache/tika/fork/ForkClient;
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p4}, Lorg/apache/tika/fork/ForkParser;->getDelegateParser(Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tika/fork/ForkClient;->echo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-direct {p0, v0}, Lorg/apache/tika/fork/ForkParser;->releaseClient(Lorg/apache/tika/fork/ForkClient;)V

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    invoke-direct {p0, v0}, Lorg/apache/tika/fork/ForkParser;->releaseClient(Lorg/apache/tika/fork/ForkClient;)V

    .line 71
    throw v1
.end method
