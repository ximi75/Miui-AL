.class public abstract Lorg/apache/james/mime4j/SimpleContentHandler;
.super Lorg/apache/james/mime4j/AbstractContentHandler;
.source "SimpleContentHandler.java"


# instance fields
.field private currHeader:Lorg/apache/james/mime4j/message/Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public abstract bodyDecoded(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final endHeader()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 85
    .local v0, "tmp":Lorg/apache/james/mime4j/message/Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/SimpleContentHandler;->headers(Lorg/apache/james/mime4j/message/Header;)V

    .line 87
    return-void
.end method

.method public final field(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 77
    return-void
.end method

.method public abstract headers(Lorg/apache/james/mime4j/message/Header;)V
.end method

.method public final startHeader()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 69
    return-void
.end method
