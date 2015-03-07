.class public Lorg/apache/tika/sax/WriteOutContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WriteOutContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;
    }
.end annotation


# instance fields
.field private writeCount:I

.field private final writeLimit:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const v0, 0x186a0

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(I)V

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "writeLimit"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/Writer;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 72
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/Writer;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 62
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/Writer;I)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "writeLimit"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    .line 51
    iput-object p1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writer:Ljava/io/Writer;

    .line 52
    iput p2, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeLimit:I

    .line 53
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    iget v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeLimit:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    add-int/2addr v1, p3

    iget v2, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeLimit:I

    if-gt v1, v2, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 116
    iget v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    .line 125
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writer:Ljava/io/Writer;

    iget v2, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeLimit:I

    iget v3, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/Writer;->write([CII)V

    .line 119
    iget v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeLimit:I

    iput v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writeCount:I

    .line 120
    new-instance v1, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;-><init>(Lorg/apache/tika/sax/WriteOutContentHandler;Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string/jumbo v2, "Error writing out character content"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string/jumbo v2, "Error flushing character output"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tika/sax/WriteOutContentHandler;->characters([CII)V

    .line 135
    return-void
.end method

.method public isWriteLimitReached(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    instance-of v2, p1, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;

    if-eqz v2, :cond_2

    .line 176
    check-cast p1, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;

    .end local p1    # "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;->getSource()Lorg/apache/tika/sax/WriteOutContentHandler;

    move-result-object v2

    if-ne p0, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 176
    goto :goto_0

    .line 178
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tika/sax/WriteOutContentHandler;->isWriteLimitReached(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/tika/sax/WriteOutContentHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
