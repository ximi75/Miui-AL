.class public Lorg/apache/tika/utils/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"

# interfaces
.implements Lorg/apache/tika/metadata/TikaMimeKeys;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParser(Ljava/io/File;Lorg/apache/tika/config/TikaConfig;)Lorg/apache/tika/parser/Parser;
    .locals 2
    .param p0, "documentFile"    # Ljava/io/File;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/io/File;)Lorg/apache/tika/mime/MimeType;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "mimetype":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/tika/utils/ParseUtils;->getParser(Ljava/lang/String;Lorg/apache/tika/config/TikaConfig;)Lorg/apache/tika/parser/Parser;

    move-result-object v1

    return-object v1
.end method

.method public static getParser(Ljava/lang/String;Lorg/apache/tika/config/TikaConfig;)Lorg/apache/tika/parser/Parser;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tika/config/TikaConfig;->getParser(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static getParser(Ljava/net/URL;Lorg/apache/tika/config/TikaConfig;)Lorg/apache/tika/parser/Parser;
    .locals 2
    .param p0, "documentUrl"    # Ljava/net/URL;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/net/URL;)Lorg/apache/tika/mime/MimeType;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "mimetype":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/tika/utils/ParseUtils;->getParser(Ljava/lang/String;Lorg/apache/tika/config/TikaConfig;)Lorg/apache/tika/parser/Parser;

    move-result-object v1

    return-object v1
.end method

.method public static getStringContent(Ljava/io/File;Lorg/apache/tika/config/TikaConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "documentFile"    # Ljava/io/File;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/io/File;)Lorg/apache/tika/mime/MimeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "mime":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lorg/apache/tika/utils/ParseUtils;->getStringContent(Ljava/io/File;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringContent(Ljava/io/File;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "documentFile"    # Ljava/io/File;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 169
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 168
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 171
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Lorg/apache/tika/utils/ParseUtils;->getStringContent(Ljava/io/InputStream;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    return-object v1

    .line 172
    :catchall_0
    move-exception v1

    .line 173
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 174
    throw v1
.end method

.method public static getStringContent(Ljava/io/InputStream;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-static {p2}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/tika/config/TikaConfig;->getParser(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/parser/Parser;

    move-result-object v2

    .line 111
    .local v2, "parser":Lorg/apache/tika/parser/Parser;
    new-instance v1, Lorg/apache/tika/sax/BodyContentHandler;

    invoke-direct {v1}, Lorg/apache/tika/sax/BodyContentHandler;-><init>()V

    .line 112
    .local v1, "handler":Lorg/xml/sax/ContentHandler;
    new-instance v3, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v3}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-interface {v2, p0, v1, v3}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 114
    .end local v1    # "handler":Lorg/xml/sax/ContentHandler;
    .end local v2    # "parser":Lorg/apache/tika/parser/Parser;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v4, "Unexpected SAX error"

    invoke-direct {v3, v4, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getStringContent(Ljava/net/URL;Lorg/apache/tika/config/TikaConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "documentUrl"    # Ljava/net/URL;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Lorg/apache/tika/config/TikaConfig;->getMimeRepository()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/net/URL;)Lorg/apache/tika/mime/MimeType;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "mime":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lorg/apache/tika/utils/ParseUtils;->getStringContent(Ljava/net/URL;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringContent(Ljava/net/URL;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "documentUrl"    # Ljava/net/URL;
    .param p1, "config"    # Lorg/apache/tika/config/TikaConfig;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 149
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Lorg/apache/tika/utils/ParseUtils;->getStringContent(Ljava/io/InputStream;Lorg/apache/tika/config/TikaConfig;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 149
    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 152
    throw v1
.end method
