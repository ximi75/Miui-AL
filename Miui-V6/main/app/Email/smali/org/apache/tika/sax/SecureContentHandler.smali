.class public Lorg/apache/tika/sax/SecureContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "SecureContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;
    }
.end annotation


# instance fields
.field private characterCount:J

.field private ratio:J

.field private final stream:Lorg/apache/tika/io/CountingInputStream;

.field private threshold:J


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/io/CountingInputStream;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "stream"    # Lorg/apache/tika/io/CountingInputStream;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    .line 51
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->threshold:J

    .line 56
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->ratio:J

    .line 71
    iput-object p2, p0, Lorg/apache/tika/sax/SecureContentHandler;->stream:Lorg/apache/tika/io/CountingInputStream;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lorg/apache/tika/sax/SecureContentHandler;)Lorg/apache/tika/io/CountingInputStream;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->stream:Lorg/apache/tika/io/CountingInputStream;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/tika/sax/SecureContentHandler;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    return-wide v0
.end method

.method private advance(I)V
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    .line 143
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    iget-wide v2, p0, Lorg/apache/tika/sax/SecureContentHandler;->threshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 144
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J

    iget-object v2, p0, Lorg/apache/tika/sax/SecureContentHandler;->stream:Lorg/apache/tika/io/CountingInputStream;

    invoke-virtual {v2}, Lorg/apache/tika/io/CountingInputStream;->getByteCount()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/tika/sax/SecureContentHandler;->ratio:J

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 145
    new-instance v0, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;

    invoke-direct {v0, p0}, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;-><init>(Lorg/apache/tika/sax/SecureContentHandler;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
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
    .line 152
    invoke-direct {p0, p3}, Lorg/apache/tika/sax/SecureContentHandler;->advance(I)V

    .line 153
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V

    .line 154
    return-void
.end method

.method public getMaximumCompressionRatio()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->ratio:J

    return-wide v0
.end method

.method public getOutputThreshold()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/apache/tika/sax/SecureContentHandler;->threshold:J

    return-wide v0
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
    .line 159
    invoke-direct {p0, p3}, Lorg/apache/tika/sax/SecureContentHandler;->advance(I)V

    .line 160
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->ignorableWhitespace([CII)V

    .line 161
    return-void
.end method

.method public setMaximumCompressionRatio(J)V
    .locals 0
    .param p1, "ratio"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lorg/apache/tika/sax/SecureContentHandler;->ratio:J

    .line 116
    return-void
.end method

.method public setOutputThreshold(J)V
    .locals 0
    .param p1, "threshold"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lorg/apache/tika/sax/SecureContentHandler;->threshold:J

    .line 94
    return-void
.end method

.method public throwIfCauseOf(Lorg/xml/sax/SAXException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/exception/TikaException;
        }
    .end annotation

    .prologue
    .line 127
    instance-of v0, p1, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 128
    check-cast v0, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;

    invoke-virtual {v0, p0}, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;->isCausedBy(Lorg/apache/tika/sax/SecureContentHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lorg/apache/tika/exception/TikaException;

    const-string/jumbo v1, "Zip bomb detected!"

    invoke-direct {v0, v1, p1}, Lorg/apache/tika/exception/TikaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method
