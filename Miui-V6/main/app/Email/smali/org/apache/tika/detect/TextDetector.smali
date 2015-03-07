.class public Lorg/apache/tika/detect/TextDetector;
.super Ljava/lang/Object;
.source "TextDetector.java"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# static fields
.field private static final IS_CONTROL_BYTE:[Z

.field private static final NUMBER_OF_BYTES_TO_TEST:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const/16 v0, 0x20

    new-array v0, v0, [Z

    sput-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    .line 71
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 72
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 73
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 74
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 75
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 76
    sget-object v0, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x200

    .line 90
    if-nez p1, :cond_0

    .line 91
    sget-object v2, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    .line 109
    :goto_0
    return-object v2

    .line 94
    :cond_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 109
    :try_start_0
    sget-object v2, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 97
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 98
    .local v0, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 99
    if-lez v1, :cond_2

    .line 100
    sget-object v2, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 103
    :cond_2
    :try_start_2
    sget-object v2, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 105
    :cond_3
    :try_start_3
    sget-object v2, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lorg/apache/tika/detect/TextDetector;->IS_CONTROL_BYTE:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    .line 106
    sget-object v2, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 96
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "ch":I
    :catchall_0
    move-exception v2

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 112
    throw v2
.end method
