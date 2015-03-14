.class public Lorg/apache/tika/mime/MimeTypesFactory;
.super Ljava/lang/Object;
.source "MimeTypesFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/tika/mime/MimeTypes;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/tika/mime/MimeTypes;

    invoke-direct {v0}, Lorg/apache/tika/mime/MimeTypes;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/tika/mime/MimeTypes;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/apache/tika/mime/MimeTypes;

    invoke-direct {v0}, Lorg/apache/tika/mime/MimeTypes;-><init>()V

    .line 59
    .local v0, "mimeTypes":Lorg/apache/tika/mime/MimeTypes;
    new-instance v1, Lorg/apache/tika/mime/MimeTypesReader;

    invoke-direct {v1, v0}, Lorg/apache/tika/mime/MimeTypesReader;-><init>(Lorg/apache/tika/mime/MimeTypes;)V

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypesReader;->read(Ljava/io/InputStream;)V

    .line 60
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/tika/mime/MimeTypes;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 90
    const-class v0, Lorg/apache/tika/mime/MimeTypesReader;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tika/mime/MimeTypesFactory;->create(Ljava/net/URL;)Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/net/URL;)Lorg/apache/tika/mime/MimeTypes;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 75
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/tika/mime/MimeTypesFactory;->create(Ljava/io/InputStream;)Lorg/apache/tika/mime/MimeTypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 75
    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    throw v1
.end method

.method public static create(Lorg/w3c/dom/Document;)Lorg/apache/tika/mime/MimeTypes;
    .locals 2
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/apache/tika/mime/MimeTypes;

    invoke-direct {v0}, Lorg/apache/tika/mime/MimeTypes;-><init>()V

    .line 46
    .local v0, "mimeTypes":Lorg/apache/tika/mime/MimeTypes;
    new-instance v1, Lorg/apache/tika/mime/MimeTypesReader;

    invoke-direct {v1, v0}, Lorg/apache/tika/mime/MimeTypesReader;-><init>(Lorg/apache/tika/mime/MimeTypes;)V

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypesReader;->read(Lorg/w3c/dom/Document;)V

    .line 47
    return-object v0
.end method
