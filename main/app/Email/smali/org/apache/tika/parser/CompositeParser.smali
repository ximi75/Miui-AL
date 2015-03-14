.class public Lorg/apache/tika/parser/CompositeParser;
.super Ljava/lang/Object;
.source "CompositeParser.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# static fields
.field private static final serialVersionUID:J = 0x1e6e8da286131bb0L


# instance fields
.field private fallback:Lorg/apache/tika/parser/Parser;

.field private parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Lorg/apache/tika/mime/MediaTypeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-direct {v0}, Lorg/apache/tika/mime/MediaTypeRegistry;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tika/parser/Parser;

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;[Lorg/apache/tika/parser/Parser;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V
    .locals 1
    .param p1, "registry"    # Lorg/apache/tika/mime/MediaTypeRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/mime/MediaTypeRegistry;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/parser/Parser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "parsers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/parser/Parser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/tika/parser/EmptyParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/EmptyParser;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/parser/CompositeParser;->fallback:Lorg/apache/tika/parser/Parser;

    .line 65
    iput-object p2, p0, Lorg/apache/tika/parser/CompositeParser;->parsers:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lorg/apache/tika/parser/CompositeParser;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 67
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/tika/mime/MediaTypeRegistry;[Lorg/apache/tika/parser/Parser;)V
    .locals 1
    .param p1, "registry"    # Lorg/apache/tika/mime/MediaTypeRegistry;
    .param p2, "parsers"    # [Lorg/apache/tika/parser/Parser;

    .prologue
    .line 70
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/parser/CompositeParser;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getFallback()Lorg/apache/tika/parser/Parser;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/tika/parser/CompositeParser;->fallback:Lorg/apache/tika/parser/Parser;

    return-object v0
.end method

.method public getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/tika/parser/CompositeParser;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    return-object v0
.end method

.method protected getParser(Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/parser/Parser;
    .locals 1
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    .line 161
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/tika/parser/CompositeParser;->getParser(Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method protected getParser(Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)Lorg/apache/tika/parser/Parser;
    .locals 4
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p2, "context"    # Lorg/apache/tika/parser/ParseContext;

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lorg/apache/tika/parser/CompositeParser;->getParsers(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Map;

    move-result-object v0

    .line 166
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/parser/Parser;>;"
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {p1, v3}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    .line 167
    .local v2, "type":Lorg/apache/tika/mime/MediaType;
    :goto_0
    if-nez v2, :cond_1

    .line 174
    iget-object v1, p0, Lorg/apache/tika/parser/CompositeParser;->fallback:Lorg/apache/tika/parser/Parser;

    :cond_0
    return-object v1

    .line 168
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/parser/Parser;

    .line 169
    .local v1, "parser":Lorg/apache/tika/parser/Parser;
    if-nez v1, :cond_0

    .line 172
    iget-object v3, p0, Lorg/apache/tika/parser/CompositeParser;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v3, v2}, Lorg/apache/tika/mime/MediaTypeRegistry;->getSupertype(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    goto :goto_0
.end method

.method public getParsers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/tika/parser/CompositeParser;->getParsers(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParsers(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/parser/Parser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/parser/Parser;>;"
    iget-object v3, p0, Lorg/apache/tika/parser/CompositeParser;->parsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    return-object v0

    .line 79
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/parser/Parser;

    .line 80
    .local v1, "parser":Lorg/apache/tika/parser/Parser;
    invoke-interface {v1, p1}, Lorg/apache/tika/parser/Parser;->getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/mime/MediaType;

    .line 81
    .local v2, "type":Lorg/apache/tika/mime/MediaType;
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSupportedTypes(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Set;
    .locals 1
    .param p1, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/parser/ParseContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/tika/parser/CompositeParser;->getParsers(Lorg/apache/tika/parser/ParseContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/CompositeParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 219
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 7
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
    .line 193
    invoke-virtual {p0, p3}, Lorg/apache/tika/parser/CompositeParser;->getParser(Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/parser/Parser;

    move-result-object v1

    .line 194
    .local v1, "parser":Lorg/apache/tika/parser/Parser;
    new-instance v3, Lorg/apache/tika/io/TaggedInputStream;

    invoke-direct {v3, p1}, Lorg/apache/tika/io/TaggedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v3, "taggedStream":Lorg/apache/tika/io/TaggedInputStream;
    new-instance v2, Lorg/apache/tika/sax/TaggedContentHandler;

    invoke-direct {v2, p2}, Lorg/apache/tika/sax/TaggedContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 197
    .local v2, "taggedHandler":Lorg/apache/tika/sax/TaggedContentHandler;
    :try_start_0
    invoke-interface {v1, v3, v2, p3, p4}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 210
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Lorg/apache/tika/exception/TikaException;

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected RuntimeException from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-direct {v4, v5, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 201
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v3, v0}, Lorg/apache/tika/io/TaggedInputStream;->throwIfCauseOf(Ljava/lang/Exception;)V

    .line 203
    new-instance v4, Lorg/apache/tika/exception/TikaException;

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "TIKA-198: Illegal IOException from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-direct {v4, v5, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 206
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2, v0}, Lorg/apache/tika/sax/TaggedContentHandler;->throwIfCauseOf(Ljava/lang/Exception;)V

    .line 207
    new-instance v4, Lorg/apache/tika/exception/TikaException;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "TIKA-237: Illegal SAXException from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-direct {v4, v5, v0}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setFallback(Lorg/apache/tika/parser/Parser;)V
    .locals 0
    .param p1, "fallback"    # Lorg/apache/tika/parser/Parser;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/tika/parser/CompositeParser;->fallback:Lorg/apache/tika/parser/Parser;

    .line 145
    return-void
.end method

.method public setMediaTypeRegistry(Lorg/apache/tika/mime/MediaTypeRegistry;)V
    .locals 0
    .param p1, "registry"    # Lorg/apache/tika/mime/MediaTypeRegistry;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/tika/parser/CompositeParser;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 105
    return-void
.end method

.method public setParsers(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/parser/Parser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "parsers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/parser/Parser;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/tika/parser/CompositeParser;->parsers:Ljava/util/List;

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    return-void

    .line 123
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/parser/Parser;>;"
    iget-object v4, p0, Lorg/apache/tika/parser/CompositeParser;->parsers:Ljava/util/List;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/parser/Parser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/mime/MediaType;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lorg/apache/tika/parser/ParserDecorator;->withTypes(Lorg/apache/tika/parser/Parser;Ljava/util/Set;)Lorg/apache/tika/parser/Parser;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
