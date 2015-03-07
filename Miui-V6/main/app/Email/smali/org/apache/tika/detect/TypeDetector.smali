.class public Lorg/apache/tika/detect/TypeDetector;
.super Ljava/lang/Object;
.source "TypeDetector.java"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    .line 46
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p2, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "hint":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 49
    .local v1, "type":Lorg/apache/tika/mime/MediaType;
    if-eqz v1, :cond_0

    .line 53
    .end local v1    # "type":Lorg/apache/tika/mime/MediaType;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    goto :goto_0
.end method
