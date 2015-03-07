.class public Lorg/apache/tika/detect/CompositeDetector;
.super Ljava/lang/Object;
.source "CompositeDetector.java"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# static fields
.field private static final serialVersionUID:J = 0x52ffa7a544c3c1acL


# instance fields
.field private final detectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/detect/Detector;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Lorg/apache/tika/mime/MediaTypeRegistry;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/detect/Detector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "detectors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/detect/Detector;>;"
    new-instance v0, Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-direct {v0}, Lorg/apache/tika/mime/MediaTypeRegistry;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/tika/detect/CompositeDetector;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MediaTypeRegistry;Ljava/util/List;)V
    .locals 0
    .param p1, "registry"    # Lorg/apache/tika/mime/MediaTypeRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/mime/MediaTypeRegistry;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/detect/Detector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "detectors":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/detect/Detector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/tika/detect/CompositeDetector;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 45
    iput-object p2, p0, Lorg/apache/tika/detect/CompositeDetector;->detectors:Ljava/util/List;

    .line 46
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/tika/detect/Detector;)V
    .locals 1
    .param p1, "detectors"    # [Lorg/apache/tika/detect/Detector;

    .prologue
    .line 53
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tika/detect/CompositeDetector;-><init>(Ljava/util/List;)V

    .line 54
    return-void
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v2, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    .line 59
    .local v2, "type":Lorg/apache/tika/mime/MediaType;
    iget-object v3, p0, Lorg/apache/tika/detect/CompositeDetector;->detectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    return-object v2

    .line 59
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/detect/Detector;

    .line 60
    .local v1, "detector":Lorg/apache/tika/detect/Detector;
    invoke-interface {v1, p1, p2}, Lorg/apache/tika/detect/Detector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 61
    .local v0, "detected":Lorg/apache/tika/mime/MediaType;
    iget-object v4, p0, Lorg/apache/tika/detect/CompositeDetector;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v4, v0, v2}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    move-object v2, v0

    goto :goto_0
.end method
