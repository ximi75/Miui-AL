.class public Lorg/apache/tika/sax/OfflineContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "OfflineContentHandler.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 34
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Lorg/apache/tika/io/ClosedInputStream;

    invoke-direct {v1}, Lorg/apache/tika/io/ClosedInputStream;-><init>()V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
