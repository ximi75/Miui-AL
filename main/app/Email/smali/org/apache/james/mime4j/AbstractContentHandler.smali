.class public abstract Lorg/apache/james/mime4j/AbstractContentHandler;
.super Ljava/lang/Object;
.source "AbstractContentHandler.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public endBodyPart()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public endHeader()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public endMessage()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public endMultipart()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public startBodyPart()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public startHeader()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public startMessage()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 0
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    .line 48
    return-void
.end method
