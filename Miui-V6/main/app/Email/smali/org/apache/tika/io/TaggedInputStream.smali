.class public Lorg/apache/tika/io/TaggedInputStream;
.super Lorg/apache/tika/io/ProxyInputStream;
.source "TaggedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "proxy"    # Ljava/io/InputStream;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/tika/io/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected handleIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/tika/io/TaggedIOException;

    invoke-direct {v0, p1, p0}, Lorg/apache/tika/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/lang/Object;)V

    throw v0
.end method

.method public isCauseOf(Ljava/io/IOException;)Z
    .locals 3
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x0

    .line 78
    instance-of v2, p1, Lorg/apache/tika/io/TaggedIOException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lorg/apache/tika/io/TaggedIOException;

    .line 80
    .local v0, "tagged":Lorg/apache/tika/io/TaggedIOException;
    invoke-virtual {v0}, Lorg/apache/tika/io/TaggedIOException;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    const/4 v1, 0x1

    .line 82
    .end local v0    # "tagged":Lorg/apache/tika/io/TaggedIOException;
    :cond_0
    return v1
.end method

.method public throwIfCauseOf(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    instance-of v1, p1, Lorg/apache/tika/io/TaggedIOException;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lorg/apache/tika/io/TaggedIOException;

    .line 99
    .local v0, "tagged":Lorg/apache/tika/io/TaggedIOException;
    invoke-virtual {v0}, Lorg/apache/tika/io/TaggedIOException;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/tika/io/TaggedIOException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 103
    .end local v0    # "tagged":Lorg/apache/tika/io/TaggedIOException;
    :cond_0
    return-void
.end method
