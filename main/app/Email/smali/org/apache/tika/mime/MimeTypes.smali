.class public final Lorg/apache/tika/mime/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/tika/detect/Detector;


# static fields
.field private static final IS_CONTROL_BYTE:[Z

.field public static final OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field public static final XML:Ljava/lang/String; = "application/xml"

.field private static final serialVersionUID:J = -0x12bf3ae564bb2fecL


# instance fields
.field private magics:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lorg/apache/tika/mime/Magic;",
            ">;"
        }
    .end annotation
.end field

.field private patterns:Lorg/apache/tika/mime/Patterns;

.field private final registry:Lorg/apache/tika/mime/MediaTypeRegistry;

.field private final rootMimeType:Lorg/apache/tika/mime/MimeType;

.field private final textMimeType:Lorg/apache/tika/mime/MimeType;

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/mime/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlMimeType:Lorg/apache/tika/mime/MimeType;

.field private xmls:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lorg/apache/tika/mime/MimeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const/16 v0, 0x20

    new-array v0, v0, [Z

    sput-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    .line 106
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 107
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 108
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 109
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 110
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 111
    sget-object v0, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-direct {v0}, Lorg/apache/tika/mime/MediaTypeRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->types:Ljava/util/Map;

    .line 139
    new-instance v0, Lorg/apache/tika/mime/Patterns;

    iget-object v1, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-direct {v0, v1}, Lorg/apache/tika/mime/Patterns;-><init>(Lorg/apache/tika/mime/MediaTypeRegistry;)V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->patterns:Lorg/apache/tika/mime/Patterns;

    .line 142
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->magics:Ljava/util/SortedSet;

    .line 145
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->xmls:Ljava/util/SortedSet;

    .line 148
    new-instance v0, Lorg/apache/tika/mime/MimeType;

    sget-object v1, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    invoke-direct {v0, v1}, Lorg/apache/tika/mime/MimeType;-><init>(Lorg/apache/tika/mime/MediaType;)V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->rootMimeType:Lorg/apache/tika/mime/MimeType;

    .line 149
    new-instance v0, Lorg/apache/tika/mime/MimeType;

    sget-object v1, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;

    invoke-direct {v0, v1}, Lorg/apache/tika/mime/MimeType;-><init>(Lorg/apache/tika/mime/MediaType;)V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->textMimeType:Lorg/apache/tika/mime/MimeType;

    .line 150
    new-instance v0, Lorg/apache/tika/mime/MimeType;

    sget-object v1, Lorg/apache/tika/mime/MediaType;->APPLICATION_XML:Lorg/apache/tika/mime/MediaType;

    invoke-direct {v0, v1}, Lorg/apache/tika/mime/MimeType;-><init>(Lorg/apache/tika/mime/MediaType;)V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->xmlMimeType:Lorg/apache/tika/mime/MimeType;

    .line 152
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->rootMimeType:Lorg/apache/tika/mime/MimeType;

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->add(Lorg/apache/tika/mime/MimeType;)V

    .line 153
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->textMimeType:Lorg/apache/tika/mime/MimeType;

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->add(Lorg/apache/tika/mime/MimeType;)V

    .line 154
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->xmlMimeType:Lorg/apache/tika/mime/MimeType;

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->add(Lorg/apache/tika/mime/MimeType;)V

    .line 155
    return-void
.end method

.method public static getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;
    .locals 3

    .prologue
    .line 594
    :try_start_0
    const-string/jumbo v1, "tika-mimetypes.xml"

    invoke-static {v1}, Lorg/apache/tika/mime/MimeTypesFactory;->create(Ljava/lang/String;)Lorg/apache/tika/mime/MimeTypes;
    :try_end_0
    .catch Lorg/apache/tika/mime/MimeTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Lorg/apache/tika/mime/MimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to read default mimetypes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 597
    .end local v0    # "e":Lorg/apache/tika/mime/MimeTypeException;
    :catch_1
    move-exception v0

    .line 598
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to read default mimetypes"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readMagicHeader(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "InputStream is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tika/mime/MimeTypes;->getMinLength()I

    move-result v4

    new-array v0, v4, [B

    .line 298
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 300
    .local v3, "totalRead":I
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 301
    .local v1, "lastRead":I
    :goto_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 309
    new-array v2, v3, [B

    .line 310
    .local v2, "shorter":[B
    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 311
    .end local v0    # "bytes":[B
    .end local v2    # "shorter":[B
    :cond_1
    return-object v0

    .line 302
    .restart local v0    # "bytes":[B
    :cond_2
    add-int/2addr v3, v1

    .line 303
    array-length v4, v0

    if-eq v3, v4, :cond_1

    .line 306
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method add(Lorg/apache/tika/mime/MimeType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;

    .prologue
    .line 500
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tika/mime/MediaTypeRegistry;->addType(Lorg/apache/tika/mime/MediaType;)V

    .line 501
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->types:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->hasMagic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->magics:Ljava/util/SortedSet;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->getMagics()[Lorg/apache/tika/mime/Magic;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 509
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->hasRootXML()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->xmls:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    return-void
.end method

.method declared-synchronized addAlias(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;
    .param p2, "alias"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/tika/mime/MediaTypeRegistry;->addAlias(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addPattern(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tika/mime/MimeTypes;->addPattern(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method public addPattern(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "isRegex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->patterns:Lorg/apache/tika/mime/Patterns;

    invoke-virtual {v0, p2, p3, p1}, Lorg/apache/tika/mime/Patterns;->add(Ljava/lang/String;ZLorg/apache/tika/mime/MimeType;)V

    .line 473
    return-void
.end method

.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    sget-object v7, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    .line 532
    .local v7, "type":Lorg/apache/tika/mime/MediaType;
    if-eqz p1, :cond_0

    .line 533
    invoke-virtual {p0}, Lorg/apache/tika/mime/MimeTypes;->getMinLength()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/InputStream;->mark(I)V

    .line 535
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tika/mime/MimeTypes;->readMagicHeader(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 536
    .local v4, "prefix":[B
    invoke-virtual {p0, v4}, Lorg/apache/tika/mime/MimeTypes;->getMimeType([B)Lorg/apache/tika/mime/MimeType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 538
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 543
    .end local v4    # "prefix":[B
    :cond_0
    const-string/jumbo v10, "resourceName"

    invoke-virtual {p2, v10}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "resourceName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 545
    const/4 v2, 0x0

    .line 549
    .local v2, "name":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 550
    .local v9, "uri":Ljava/net/URI;
    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 552
    const/16 v10, 0x2f

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 553
    .local v6, "slash":I
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 554
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 561
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v9    # "uri":Ljava/net/URI;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {p0, v2}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 563
    .local v1, "hint":Lorg/apache/tika/mime/MediaType;
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v10, v1, v7}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 564
    move-object v7, v1

    .line 570
    .end local v1    # "hint":Lorg/apache/tika/mime/MediaType;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "Content-Type"

    invoke-virtual {p2, v10}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "typeName":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 573
    :try_start_2
    invoke-virtual {p0, v8}, Lorg/apache/tika/mime/MimeTypes;->forName(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 574
    .restart local v1    # "hint":Lorg/apache/tika/mime/MediaType;
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v10, v1, v7}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z
    :try_end_2
    .catch Lorg/apache/tika/mime/MimeTypeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    if-eqz v10, :cond_3

    .line 575
    move-object v7, v1

    .line 582
    .end local v1    # "hint":Lorg/apache/tika/mime/MediaType;
    :cond_3
    :goto_1
    return-object v7

    .line 537
    .end local v5    # "resourceName":Ljava/lang/String;
    .end local v8    # "typeName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 538
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 539
    throw v10

    .line 557
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v2, v5

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v2    # "name":Ljava/lang/String;
    .restart local v8    # "typeName":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public declared-synchronized forName(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 408
    .local v1, "type":Lorg/apache/tika/mime/MediaType;
    if-eqz v1, :cond_1

    .line 409
    iget-object v2, p0, Lorg/apache/tika/mime/MimeTypes;->types:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v3, v1}, Lorg/apache/tika/mime/MediaTypeRegistry;->normalize(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MimeType;

    .line 410
    .local v0, "mime":Lorg/apache/tika/mime/MimeType;
    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lorg/apache/tika/mime/MimeType;

    .end local v0    # "mime":Lorg/apache/tika/mime/MimeType;
    invoke-direct {v0, v1}, Lorg/apache/tika/mime/MimeType;-><init>(Lorg/apache/tika/mime/MediaType;)V

    .line 412
    .restart local v0    # "mime":Lorg/apache/tika/mime/MimeType;
    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->add(Lorg/apache/tika/mime/MimeType;)V

    .line 413
    iget-object v2, p0, Lorg/apache/tika/mime/MimeTypes;->types:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    monitor-exit p0

    return-object v0

    .line 417
    .end local v0    # "mime":Lorg/apache/tika/mime/MimeType;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/apache/tika/mime/MimeTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid media type name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v1    # "type":Lorg/apache/tika/mime/MediaType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    return-object v0
.end method

.method public getMimeType(Ljava/io/File;)Lorg/apache/tika/mime/MimeType;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/io/InputStream;)Lorg/apache/tika/mime/MimeType;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lorg/apache/tika/mime/MimeTypes;->readMagicHeader(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType([B)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v1, p0, Lorg/apache/tika/mime/MimeTypes;->patterns:Lorg/apache/tika/mime/Patterns;

    invoke-virtual {v1, p1}, Lorg/apache/tika/mime/Patterns;->matches(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    .line 190
    .local v0, "type":Lorg/apache/tika/mime/MimeType;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 197
    :goto_0
    return-object v1

    .line 193
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/mime/MimeTypes;->patterns:Lorg/apache/tika/mime/Patterns;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tika/mime/Patterns;->matches(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 195
    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/mime/MimeTypes;->rootMimeType:Lorg/apache/tika/mime/MimeType;

    goto :goto_0
.end method

.method public getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/tika/mime/MimeType;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p2}, Lorg/apache/tika/mime/MimeTypes;->readMagicHeader(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;[B)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;[B)Lorg/apache/tika/mime/MimeType;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 370
    invoke-virtual {p0, p2}, Lorg/apache/tika/mime/MimeTypes;->getMimeType([B)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    .line 374
    .local v0, "mimeType":Lorg/apache/tika/mime/MimeType;
    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    .line 378
    :cond_0
    return-object v0
.end method

.method public getMimeType(Ljava/net/URL;)Lorg/apache/tika/mime/MimeType;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType([B)Lorg/apache/tika/mime/MimeType;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Data is missing"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 215
    :cond_0
    array-length v7, p1

    if-nez v7, :cond_2

    .line 217
    iget-object v4, p0, Lorg/apache/tika/mime/MimeTypes;->rootMimeType:Lorg/apache/tika/mime/MimeType;

    .line 263
    :cond_1
    :goto_0
    return-object v4

    .line 221
    :cond_2
    const/4 v4, 0x0

    .line 222
    .local v4, "result":Lorg/apache/tika/mime/MimeType;
    iget-object v7, p0, Lorg/apache/tika/mime/MimeTypes;->magics:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 229
    :goto_1
    if-eqz v4, :cond_8

    .line 232
    const-string/jumbo v7, "application/xml"

    invoke-virtual {v4}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    const-string/jumbo v7, "text/html"

    invoke-virtual {v4}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 234
    :cond_4
    new-instance v1, Lorg/apache/tika/detect/XmlRootExtractor;

    invoke-direct {v1}, Lorg/apache/tika/detect/XmlRootExtractor;-><init>()V

    .line 236
    .local v1, "extractor":Lorg/apache/tika/detect/XmlRootExtractor;
    invoke-virtual {v1, p1}, Lorg/apache/tika/detect/XmlRootExtractor;->extractRootElement([B)Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 237
    .local v5, "rootElement":Ljavax/xml/namespace/QName;
    if-eqz v5, :cond_7

    .line 238
    iget-object v7, p0, Lorg/apache/tika/mime/MimeTypes;->xmls:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tika/mime/MimeType;

    .line 240
    .local v6, "type":Lorg/apache/tika/mime/MimeType;
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    .line 239
    invoke-virtual {v6, v8, v9}, Lorg/apache/tika/mime/MimeType;->matchesXML(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 241
    if-eqz v8, :cond_5

    .line 242
    move-object v4, v6

    .line 243
    goto :goto_0

    .line 222
    .end local v1    # "extractor":Lorg/apache/tika/detect/XmlRootExtractor;
    .end local v5    # "rootElement":Ljavax/xml/namespace/QName;
    .end local v6    # "type":Lorg/apache/tika/mime/MimeType;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tika/mime/Magic;

    .line 223
    .local v3, "magic":Lorg/apache/tika/mime/Magic;
    invoke-virtual {v3, p1}, Lorg/apache/tika/mime/Magic;->eval([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 224
    invoke-virtual {v3}, Lorg/apache/tika/mime/Magic;->getType()Lorg/apache/tika/mime/MimeType;

    move-result-object v4

    .line 225
    goto :goto_1

    .line 246
    .end local v3    # "magic":Lorg/apache/tika/mime/Magic;
    .restart local v1    # "extractor":Lorg/apache/tika/detect/XmlRootExtractor;
    .restart local v5    # "rootElement":Ljavax/xml/namespace/QName;
    :cond_7
    const-string/jumbo v7, "application/xml"

    invoke-virtual {v4}, Lorg/apache/tika/mime/MimeType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    iget-object v4, p0, Lorg/apache/tika/mime/MimeTypes;->textMimeType:Lorg/apache/tika/mime/MimeType;

    goto :goto_0

    .line 257
    .end local v1    # "extractor":Lorg/apache/tika/detect/XmlRootExtractor;
    .end local v5    # "rootElement":Ljavax/xml/namespace/QName;
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, p1

    if-lt v2, v7, :cond_9

    .line 263
    iget-object v4, p0, Lorg/apache/tika/mime/MimeTypes;->textMimeType:Lorg/apache/tika/mime/MimeType;

    goto :goto_0

    .line 258
    :cond_9
    aget-byte v7, p1, v2

    and-int/lit16 v0, v7, 0xff

    .line 259
    .local v0, "b":I
    sget-object v7, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    array-length v7, v7

    if-ge v0, v7, :cond_a

    sget-object v7, Lorg/apache/tika/mime/MimeTypes;->IS_CONTROL_BYTE:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_a

    .line 260
    iget-object v4, p0, Lorg/apache/tika/mime/MimeTypes;->rootMimeType:Lorg/apache/tika/mime/MimeType;

    goto/16 :goto_0

    .line 257
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getMinLength()I
    .locals 1

    .prologue
    .line 490
    const/16 v0, 0x2000

    return v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 316
    :try_start_0
    new-instance v1, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v1}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 317
    .local v1, "metadata":Lorg/apache/tika/metadata/Metadata;
    if-eqz p2, :cond_0

    .line 318
    const-string/jumbo v2, "resourceName"

    invoke-virtual {v1, v2, p2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    if-eqz p1, :cond_1

    .line 321
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2, p1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v2, v1}, Lorg/apache/tika/mime/MimeTypes;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 324
    .end local v1    # "metadata":Lorg/apache/tika/metadata/Metadata;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 326
    const-string/jumbo v3, "ByteArrayInputStream throws an IOException!"

    .line 325
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getType(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 343
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 344
    .local v0, "metadata":Lorg/apache/tika/metadata/Metadata;
    const-string/jumbo v2, "resourceName"

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v1, v0}, Lorg/apache/tika/mime/MimeTypes;->detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 347
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 345
    return-object v2

    .line 346
    .end local v0    # "metadata":Lorg/apache/tika/metadata/Metadata;
    :catchall_0
    move-exception v2

    .line 347
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 348
    throw v2
.end method

.method public declared-synchronized setSuperType(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;
    .param p2, "parent"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/mime/MimeTypes;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/tika/mime/MediaTypeRegistry;->addSuperType(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
