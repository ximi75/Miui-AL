.class public interface abstract Lorg/apache/tika/extractor/ContainerExtractor;
.super Ljava/lang/Object;
.source "ContainerExtractor.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract extract(Lorg/apache/tika/io/TikaInputStream;Lorg/apache/tika/extractor/ContainerExtractor;Lorg/apache/tika/extractor/EmbeddedResourceHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation
.end method

.method public abstract isSupported(Lorg/apache/tika/io/TikaInputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
