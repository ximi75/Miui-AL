.class final Lorg/apache/tika/mime/MimeTypesReader;
.super Ljava/lang/Object;
.source "MimeTypesReader.java"

# interfaces
.implements Lorg/apache/tika/mime/MimeTypesReaderMetKeys;


# instance fields
.field private final types:Lorg/apache/tika/mime/MimeTypes;


# direct methods
.method constructor <init>(Lorg/apache/tika/mime/MimeTypes;)V
    .locals 0
    .param p1, "types"    # Lorg/apache/tika/mime/MimeTypes;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    .line 100
    return-void
.end method

.method private decodeString(Ljava/lang/String;)[B
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x5c

    .line 319
    const-string/jumbo v5, "0x"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 321
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 354
    .end local v0    # "bytes":[B
    :goto_1
    return-object v0

    .line 323
    .restart local v0    # "bytes":[B
    :cond_0
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    .line 322
    aput-byte v5, v0, v3

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "bytes":[B
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v1, "decoded":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 354
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 332
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_7

    .line 333
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 334
    const/16 v5, 0x5c

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    add-int/lit8 v3, v3, 0x1

    .line 331
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    :cond_3
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_4

    .line 338
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 337
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    add-int/lit8 v3, v3, 0x3

    .line 340
    goto :goto_3

    .line 341
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 342
    .local v4, "j":I
    :goto_4
    add-int/lit8 v5, v3, 0x4

    if-ge v4, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 343
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 347
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-static {v5}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v5

    .line 347
    invoke-virtual {v5}, Ljava/lang/Short;->byteValue()B

    move-result v5

    .line 346
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    add-int/lit8 v3, v4, -0x1

    .line 350
    goto :goto_3

    .line 344
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 351
    .end local v4    # "j":I
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 355
    .end local v1    # "decoded":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/tika/mime/MimeTypeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid string value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private decodeValue(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 271
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 315
    :cond_1
    :goto_0
    return-object v0

    .line 275
    :cond_2
    const/4 v0, 0x0

    .line 276
    .local v0, "decoded":[B
    const/4 v4, 0x0

    .line 277
    .local v4, "tmpVal":Ljava/lang/String;
    const/16 v3, 0x8

    .line 280
    .local v3, "radix":I
    const-string/jumbo v5, "0x"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    const/16 v3, 0x10

    .line 288
    :goto_1
    const-string/jumbo v5, "string"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    invoke-direct {p0, p2}, Lorg/apache/tika/mime/MimeTypesReader;->decodeString(Ljava/lang/String;)[B

    move-result-object v0

    .line 291
    goto :goto_0

    .line 284
    :cond_3
    move-object v4, p2

    .line 285
    const/16 v3, 0x8

    goto :goto_1

    .line 291
    :cond_4
    const-string/jumbo v5, "byte"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 294
    goto :goto_0

    :cond_5
    const-string/jumbo v5, "host16"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "little16"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 295
    :cond_6
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 296
    .local v1, "i":I
    new-array v0, v8, [B

    .end local v0    # "decoded":[B
    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v9

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 298
    .restart local v0    # "decoded":[B
    goto :goto_0

    .end local v1    # "i":I
    :cond_7
    const-string/jumbo v5, "big16"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 299
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 300
    .restart local v1    # "i":I
    new-array v0, v8, [B

    .end local v0    # "decoded":[B
    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v9

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 302
    .restart local v0    # "decoded":[B
    goto :goto_0

    .end local v1    # "i":I
    :cond_8
    const-string/jumbo v5, "host32"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "little32"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 303
    :cond_9
    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 304
    .local v1, "i":J
    new-array v0, v6, [B

    .end local v0    # "decoded":[B
    const-wide/16 v5, 0xff

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v9

    .line 305
    const-wide/32 v5, 0xff00

    and-long/2addr v5, v1

    const/16 v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 306
    const-wide/32 v5, 0xff0000

    and-long/2addr v5, v1

    const/16 v7, 0x10

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    .line 307
    const-wide/32 v5, -0x1000000

    and-long/2addr v5, v1

    const/16 v7, 0x18

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 309
    .restart local v0    # "decoded":[B
    goto/16 :goto_0

    .end local v1    # "i":J
    :cond_a
    const-string/jumbo v5, "big32"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 311
    .restart local v1    # "i":J
    new-array v0, v6, [B

    .end local v0    # "decoded":[B
    const-wide/32 v5, -0x1000000

    and-long/2addr v5, v1

    const/16 v7, 0x18

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v9

    .line 312
    const-wide/32 v5, 0xff0000

    and-long/2addr v5, v1

    const/16 v7, 0x10

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 313
    const-wide/32 v5, 0xff00

    and-long/2addr v5, v1

    const/16 v7, 0x8

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    const-wide/16 v5, 0xff

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 311
    .restart local v0    # "decoded":[B
    goto/16 :goto_0
.end method

.method private readMagic(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MimeType;)V
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "mimeType"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v2, 0x32

    .line 181
    .local v2, "priority":I
    const-string/jumbo v4, "priority"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 186
    :cond_0
    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/apache/tika/mime/MimeTypesReader;->readMatches(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MediaType;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    return-void

    .line 186
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/Clause;

    .line 187
    .local v0, "clause":Lorg/apache/tika/mime/Clause;
    new-instance v1, Lorg/apache/tika/mime/Magic;

    invoke-direct {v1, p2}, Lorg/apache/tika/mime/Magic;-><init>(Lorg/apache/tika/mime/MimeType;)V

    .line 188
    .local v1, "magic":Lorg/apache/tika/mime/Magic;
    invoke-virtual {v1, v2}, Lorg/apache/tika/mime/Magic;->setPriority(I)V

    .line 189
    invoke-virtual {v1, v0}, Lorg/apache/tika/mime/Magic;->setClause(Lorg/apache/tika/mime/Clause;)V

    .line 190
    invoke-virtual {p2, v1}, Lorg/apache/tika/mime/MimeType;->addMagic(Lorg/apache/tika/mime/Magic;)V

    goto :goto_0
.end method

.method private readMatch(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/Clause;
    .locals 23
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "mediaType"    # Lorg/apache/tika/mime/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 211
    const-string/jumbo v18, "string"

    .line 212
    .local v18, "type":Ljava/lang/String;
    const/4 v7, 0x0

    .line 213
    .local v7, "start":I
    const/4 v8, 0x0

    .line 214
    .local v8, "end":I
    const/16 v19, 0x0

    .line 215
    .local v19, "value":Ljava/lang/String;
    const/4 v15, 0x0

    .line 217
    .local v15, "mask":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 218
    .local v10, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lt v13, v4, :cond_0

    .line 239
    if-nez v19, :cond_6

    .line 240
    new-instance v4, Lorg/apache/tika/mime/MimeTypeException;

    const-string/jumbo v20, "Missing magic byte pattern"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_0
    invoke-interface {v10, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Attr;

    .line 220
    .local v9, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "offset"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "offset":Ljava/lang/String;
    const/16 v4, 0x3a

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 223
    .local v12, "colon":I
    const/4 v4, -0x1

    if-ne v12, v4, :cond_2

    .line 224
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 225
    move v8, v7

    .line 218
    .end local v12    # "colon":I
    .end local v16    # "offset":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 227
    .restart local v12    # "colon":I
    .restart local v16    # "offset":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 228
    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 230
    goto :goto_1

    .end local v12    # "colon":I
    .end local v16    # "offset":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 231
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 232
    goto :goto_1

    :cond_4
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 234
    goto :goto_1

    :cond_5
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "mask"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    invoke-interface {v9}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 241
    .end local v9    # "attr":Lorg/w3c/dom/Attr;
    :cond_6
    if-ltz v7, :cond_7

    if-ge v8, v7, :cond_8

    .line 242
    :cond_7
    new-instance v4, Lorg/apache/tika/mime/MimeTypeException;

    .line 243
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Invalid offset range: ["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 242
    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 246
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/mime/MimeTypesReader;->decodeValue(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 247
    .local v5, "patternBytes":[B
    array-length v14, v5

    .line 248
    .local v14, "length":I
    const/4 v6, 0x0

    .line 249
    .local v6, "maskBytes":[B
    if-eqz v15, :cond_9

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lorg/apache/tika/mime/MimeTypesReader;->decodeValue(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 251
    array-length v4, v5

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 254
    :cond_9
    new-instance v3, Lorg/apache/tika/detect/MagicDetector;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/apache/tika/detect/MagicDetector;-><init>(Lorg/apache/tika/mime/MediaType;[B[BII)V

    .line 256
    .local v3, "detector":Lorg/apache/tika/detect/MagicDetector;
    new-instance v11, Lorg/apache/tika/mime/MagicMatch;

    invoke-direct {v11, v3, v14}, Lorg/apache/tika/mime/MagicMatch;-><init>(Lorg/apache/tika/detect/MagicDetector;I)V

    .line 258
    .local v11, "clause":Lorg/apache/tika/mime/Clause;
    invoke-direct/range {p0 .. p2}, Lorg/apache/tika/mime/MimeTypesReader;->readMatches(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MediaType;)Ljava/util/List;

    move-result-object v17

    .line 259
    .local v17, "subClauses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/mime/Clause;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 264
    .end local v11    # "clause":Lorg/apache/tika/mime/Clause;
    :goto_2
    return-object v11

    .line 261
    .restart local v11    # "clause":Lorg/apache/tika/mime/Clause;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_b

    .line 262
    new-instance v20, Lorg/apache/tika/mime/AndClause;

    const/4 v4, 0x2

    new-array v0, v4, [Lorg/apache/tika/mime/Clause;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    aput-object v11, v21, v4

    const/16 v22, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/mime/Clause;

    aput-object v4, v21, v22

    invoke-direct/range {v20 .. v21}, Lorg/apache/tika/mime/AndClause;-><init>([Lorg/apache/tika/mime/Clause;)V

    move-object/from16 v11, v20

    goto :goto_2

    .line 264
    :cond_b
    new-instance v4, Lorg/apache/tika/mime/AndClause;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/tika/mime/Clause;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v11, v20, v21

    const/16 v21, 0x1

    new-instance v22, Lorg/apache/tika/mime/OrClause;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/tika/mime/OrClause;-><init>(Ljava/util/List;)V

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/apache/tika/mime/AndClause;-><init>([Lorg/apache/tika/mime/Clause;)V

    move-object v11, v4

    goto :goto_2
.end method

.method private readMatches(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MediaType;)Ljava/util/List;
    .locals 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "mediaType"    # Lorg/apache/tika/mime/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lorg/apache/tika/mime/MediaType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/mime/Clause;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "clauses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/mime/Clause;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 197
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 206
    return-object v0

    .line 198
    :cond_0
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 199
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v3, v2

    .line 200
    check-cast v3, Lorg/w3c/dom/Element;

    .line 201
    .local v3, "nodeElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "match"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    invoke-direct {p0, v3, p2}, Lorg/apache/tika/mime/MimeTypesReader;->readMatch(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/Clause;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v3    # "nodeElement":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readMimeType(Lorg/w3c/dom/Element;)V
    .locals 13
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v10, "type"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    invoke-virtual {v10, v3}, Lorg/apache/tika/mime/MimeTypes;->forName(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    move-result-object v8

    .line 140
    .local v8, "type":Lorg/apache/tika/mime/MimeType;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 141
    .local v6, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v2, v10, :cond_0

    .line 171
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    invoke-virtual {v10, v8}, Lorg/apache/tika/mime/MimeTypes;->add(Lorg/apache/tika/mime/MimeType;)V

    .line 172
    return-void

    .line 142
    :cond_0
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 143
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    move-object v5, v4

    .line 144
    check-cast v5, Lorg/w3c/dom/Element;

    .line 145
    .local v5, "nodeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_comment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v8, v10}, Lorg/apache/tika/mime/MimeType;->setDescription(Ljava/lang/String;)V

    .line 141
    .end local v5    # "nodeElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .restart local v5    # "nodeElement":Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "glob"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    const-string/jumbo v10, "isregex"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 150
    .local v9, "useRegex":Z
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    const-string/jumbo v11, "pattern"

    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11, v9}, Lorg/apache/tika/mime/MimeTypes;->addPattern(Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Z)V

    goto :goto_1

    .line 151
    .end local v9    # "useRegex":Z
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "magic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 152
    invoke-direct {p0, v5, v8}, Lorg/apache/tika/mime/MimeTypesReader;->readMagic(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MimeType;)V

    goto :goto_1

    .line 153
    :cond_4
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "alias"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 154
    const-string/jumbo v10, "type"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "alias":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v1

    .line 156
    .local v1, "aliasType":Lorg/apache/tika/mime/MediaType;
    if-eqz v1, :cond_5

    .line 157
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    invoke-virtual {v10, v8, v1}, Lorg/apache/tika/mime/MimeTypes;->addAlias(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V

    goto :goto_1

    .line 159
    :cond_5
    new-instance v10, Lorg/apache/tika/mime/MimeTypeException;

    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invalid media type alias: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 159
    invoke-direct {v10, v11}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 162
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliasType":Lorg/apache/tika/mime/MediaType;
    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "root-XML"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 163
    invoke-direct {p0, v5, v8}, Lorg/apache/tika/mime/MimeTypesReader;->readRootXML(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MimeType;)V

    goto/16 :goto_1

    .line 164
    :cond_7
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "sub-class-of"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 165
    const-string/jumbo v10, "type"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "parent":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/tika/mime/MimeTypesReader;->types:Lorg/apache/tika/mime/MimeTypes;

    invoke-static {v7}, Lorg/apache/tika/mime/MediaType;->parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Lorg/apache/tika/mime/MimeTypes;->setSuperType(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MediaType;)V

    goto/16 :goto_1
.end method

.method private readRootXML(Lorg/w3c/dom/Element;Lorg/apache/tika/mime/MimeType;)V
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "mimeType"    # Lorg/apache/tika/mime/MimeType;

    .prologue
    .line 362
    const-string/jumbo v0, "namespaceURI"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string/jumbo v1, "localName"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p2, v0, v1}, Lorg/apache/tika/mime/MimeType;->addRootXML(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method


# virtual methods
.method read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 105
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 106
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 107
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lorg/apache/tika/mime/MimeTypesReader;->read(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    return-void

    .line 108
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lorg/apache/tika/mime/MimeTypeException;

    const-string/jumbo v5, "Unable to create an XML parser"

    invoke-direct {v4, v5, v2}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 110
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v4, Lorg/apache/tika/mime/MimeTypeException;

    const-string/jumbo v5, "Invalid type configuration"

    invoke-direct {v4, v5, v2}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method read(Lorg/w3c/dom/Document;)V
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 117
    .local v1, "element":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mime-info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 119
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 133
    return-void

    .line 120
    :cond_0
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 121
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v0, v3

    .line 122
    check-cast v0, Lorg/w3c/dom/Element;

    .line 123
    .local v0, "child":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mime-type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lorg/apache/tika/mime/MimeTypesReader;->readMimeType(Lorg/w3c/dom/Element;)V

    .line 119
    .end local v0    # "child":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_2
    new-instance v5, Lorg/apache/tika/mime/MimeTypeException;

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Not a <mime-info/> configuration document: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-direct {v5, v6}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
