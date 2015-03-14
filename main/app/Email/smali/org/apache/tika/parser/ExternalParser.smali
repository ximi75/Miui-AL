.class public Lorg/apache/tika/parser/ExternalParser;
.super Ljava/lang/Object;
.source "ExternalParser.java"

# interfaces
.implements Lorg/apache/tika/parser/Parser;


# instance fields
.field private command:Ljava/lang/String;

.field private supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tika/parser/ExternalParser;->supportedTypes:Ljava/util/Set;

    .line 52
    const-string/jumbo v0, "cat"

    iput-object v0, p0, Lorg/apache/tika/parser/ExternalParser;->command:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private extractOutput(Ljava/lang/Process;Lorg/apache/tika/sax/XHTMLContentHandler;)V
    .locals 4
    .param p1, "process"    # Ljava/lang/Process;
    .param p2, "xhtml"    # Lorg/apache/tika/sax/XHTMLContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 123
    .local v2, "reader":Ljava/io/Reader;
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->startDocument()V

    .line 124
    const-string/jumbo v3, "p"

    invoke-virtual {p2, v3}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;)V

    .line 125
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 126
    .local v0, "buffer":[C
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 129
    const-string/jumbo v3, "p"

    invoke-virtual {p2, v3}, Lorg/apache/tika/sax/XHTMLContentHandler;->endElement(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->endDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 134
    return-void

    .line 127
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v3, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->characters([CII)V

    .line 126
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 131
    .end local v0    # "buffer":[C
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    .line 132
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 133
    throw v3
.end method

.method private ignoreError(Ljava/lang/Process;)V
    .locals 1
    .param p1, "process"    # Ljava/lang/Process;

    .prologue
    .line 168
    new-instance v0, Lorg/apache/tika/parser/ExternalParser$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/tika/parser/ExternalParser$2;-><init>(Lorg/apache/tika/parser/ExternalParser;Ljava/lang/Process;)V

    .line 178
    invoke-virtual {v0}, Lorg/apache/tika/parser/ExternalParser$2;->start()V

    .line 179
    return-void
.end method

.method private sendInput(Ljava/lang/Process;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "process"    # Ljava/lang/Process;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 147
    new-instance v0, Lorg/apache/tika/parser/ExternalParser$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/tika/parser/ExternalParser$1;-><init>(Lorg/apache/tika/parser/ExternalParser;Ljava/lang/Process;Ljava/io/InputStream;)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/tika/parser/ExternalParser$1;->start()V

    .line 158
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/tika/parser/ExternalParser;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/tika/parser/ExternalParser;->supportedTypes:Ljava/util/Set;

    return-object v0
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
    .line 55
    invoke-virtual {p0}, Lorg/apache/tika/parser/ExternalParser;->getSupportedTypes()Ljava/util/Set;

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
    .line 106
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/ExternalParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 107
    return-void
.end method

.method public parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 4
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
    .line 85
    new-instance v1, Lorg/apache/tika/sax/XHTMLContentHandler;

    invoke-direct {v1, p2, p3}, Lorg/apache/tika/sax/XHTMLContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V

    .line 87
    .local v1, "xhtml":Lorg/apache/tika/sax/XHTMLContentHandler;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tika/parser/ExternalParser;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 89
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/apache/tika/parser/ExternalParser;->sendInput(Ljava/lang/Process;Ljava/io/InputStream;)V

    .line 90
    invoke-direct {p0, v0}, Lorg/apache/tika/parser/ExternalParser;->ignoreError(Ljava/lang/Process;)V

    .line 91
    invoke-direct {p0, v0, v1}, Lorg/apache/tika/parser/ExternalParser;->extractOutput(Ljava/lang/Process;Lorg/apache/tika/sax/XHTMLContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v2

    .line 94
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :goto_1
    throw v2

    .line 95
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/tika/parser/ExternalParser;->command:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSupportedTypes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .line 64
    .local p1, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/tika/mime/MediaType;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/apache/tika/parser/ExternalParser;->supportedTypes:Ljava/util/Set;

    .line 65
    return-void
.end method
