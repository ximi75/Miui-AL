.class public Lorg/apache/tika/metadata/MetadataHelper;
.super Ljava/lang/Object;
.source "MetadataHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInputStream(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/apache/tika/io/TikaInputStream;->get(Ljava/net/URL;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/io/TikaInputStream;

    move-result-object v0

    return-object v0
.end method
