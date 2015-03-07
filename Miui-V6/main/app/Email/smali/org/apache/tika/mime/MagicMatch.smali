.class Lorg/apache/tika/mime/MagicMatch;
.super Ljava/lang/Object;
.source "MagicMatch.java"

# interfaces
.implements Lorg/apache/tika/mime/Clause;


# instance fields
.field private final detector:Lorg/apache/tika/detect/MagicDetector;

.field private final length:I


# direct methods
.method constructor <init>(Lorg/apache/tika/detect/MagicDetector;I)V
    .locals 0
    .param p1, "detector"    # Lorg/apache/tika/detect/MagicDetector;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/tika/mime/MagicMatch;->detector:Lorg/apache/tika/detect/MagicDetector;

    .line 36
    iput p2, p0, Lorg/apache/tika/mime/MagicMatch;->length:I

    .line 37
    return-void
.end method


# virtual methods
.method public eval([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 41
    :try_start_0
    iget-object v2, p0, Lorg/apache/tika/mime/MagicMatch;->detector:Lorg/apache/tika/detect/MagicDetector;

    .line 42
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v4}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 41
    invoke-virtual {v2, v3, v4}, Lorg/apache/tika/detect/MagicDetector;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    .line 43
    sget-object v3, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/tika/mime/MagicMatch;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/tika/mime/MagicMatch;->detector:Lorg/apache/tika/detect/MagicDetector;

    invoke-virtual {v0}, Lorg/apache/tika/detect/MagicDetector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
