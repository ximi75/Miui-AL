.class public Lgnu/crypto/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final BASE64_CHARS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./"

.field private static final BASE64_CHARSET:[C

.field private static final HEX_DIGITS:[C


# direct methods
.method private static final constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    .line 64
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lgnu/crypto/util/Util;->BASE64_CHARSET:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static byteToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 438
    const/4 v1, 0x2

    new-array v0, v1, [C

    const/4 v1, 0x0

    sget-object v2, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 439
    .local v0, "buf":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static final dump(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 610
    invoke-static {p0}, Lgnu/crypto/util/Util;->trim(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0}, Lgnu/crypto/util/Util;->dumpString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpString([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 419
    if-nez p0, :cond_0

    const-string/jumbo v0, "null\n"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/crypto/util/Util;->dumpString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static dumpString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 427
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Lgnu/crypto/util/Util;->dumpString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "m"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 385
    if-nez p0, :cond_0

    .line 386
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    :goto_0
    return-object v5

    .line 388
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v5, p2, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 389
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-le p2, v7, :cond_1

    .line 390
    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "Hexadecimal dump of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " bytes...\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_1
    add-int v0, p1, p2

    .line 395
    .local v0, "end":I
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 396
    .local v2, "l":I
    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    .line 397
    const/4 v2, 0x4

    .line 399
    :cond_2
    :goto_1
    if-lt p1, v0, :cond_3

    .line 415
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 400
    :cond_3
    if-le p2, v7, :cond_4

    .line 401
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "         "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 405
    .local v1, "i":I
    :goto_2
    if-ge v1, v7, :cond_5

    add-int v5, p1, v1

    add-int/lit8 v5, v5, 0x7

    if-lt v5, v0, :cond_7

    .line 408
    :cond_5
    if-ge v1, v7, :cond_6

    .line 409
    :goto_3
    if-ge v1, v7, :cond_6

    add-int v5, p1, v1

    if-lt v5, v0, :cond_8

    .line 413
    :cond_6
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    add-int/lit8 p1, p1, 0x20

    goto :goto_1

    .line 406
    :cond_7
    add-int v5, p1, v1

    const/16 v6, 0x8

    invoke-static {p0, v5, v6}, Lgnu/crypto/util/Util;->toString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    .line 410
    :cond_8
    add-int v5, p1, v1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lgnu/crypto/util/Util;->byteToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static dumpString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p0, :cond_0

    const-string/jumbo v0, "null\n"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lgnu/crypto/util/Util;->dumpString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final fromBase64(Ljava/lang/String;)[B
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 522
    .local v3, "len":I
    if-nez v3, :cond_0

    .line 523
    new-instance v6, Ljava/lang/NumberFormatException;

    const-string/jumbo v7, "Empty string"

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 525
    :cond_0
    add-int/lit8 v6, v3, 0x1

    new-array v0, v6, [B

    .line 527
    .local v0, "a":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 534
    add-int/lit8 v1, v3, -0x1

    .line 535
    move v2, v3

    .line 538
    .local v2, "j":I
    :cond_1
    :try_start_0
    aget-byte v6, v0, v1

    aput-byte v6, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 539
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    .line 565
    :cond_2
    :goto_1
    :try_start_1
    aget-byte v6, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_5

    .line 571
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [B

    .line 572
    .local v4, "result":[B
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v2, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    .end local v4    # "result":[B
    :goto_2
    return-object v4

    .line 529
    .end local v2    # "j":I
    :cond_3
    :try_start_2
    const-string/jumbo v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./"

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v5

    .line 531
    .local v5, "x":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "Illegal character at #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 542
    .end local v5    # "x":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "j":I
    :cond_4
    :try_start_3
    aget-byte v6, v0, v2

    aget-byte v7, v0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 543
    add-int/lit8 v2, v2, -0x1

    .line 544
    aget-byte v6, v0, v1

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 545
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 548
    aget-byte v6, v0, v2

    aget-byte v7, v0, v1

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 549
    add-int/lit8 v2, v2, -0x1

    .line 550
    aget-byte v6, v0, v1

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 551
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 554
    aget-byte v6, v0, v2

    aget-byte v7, v0, v1

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 555
    add-int/lit8 v2, v2, -0x1

    .line 556
    const/4 v6, 0x0

    aput-byte v6, v0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 557
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    goto/16 :goto_1

    .line 566
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 568
    :catch_1
    move-exception v5

    .line 569
    .local v5, "x":Ljava/lang/Exception;
    const/4 v6, 0x1

    new-array v4, v6, [B

    goto :goto_2

    .line 561
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method

.method public static fromDigit(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 214
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 215
    add-int/lit8 v0, p0, -0x30

    .line 219
    :goto_0
    return v0

    .line 216
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 217
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 218
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 219
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "Invalid hexadecimal digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toBase64([B)Ljava/lang/String;
    .locals 12
    .param p0, "buffer"    # [B

    .prologue
    const/4 v10, 0x0

    .line 454
    array-length v4, p0

    .local v4, "len":I
    rem-int/lit8 v6, v4, 0x3

    .line 455
    .local v6, "pos":I
    const/4 v0, 0x0

    .local v0, "b0":B
    const/4 v1, 0x0

    .local v1, "b1":B
    const/4 v2, 0x0

    .line 456
    .local v2, "b2":B
    packed-switch v6, :pswitch_data_0

    .line 465
    :goto_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    .local v8, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "notleading":Z
    move v7, v6

    .line 469
    .end local v6    # "pos":I
    .local v7, "pos":I
    :goto_1
    and-int/lit16 v10, v0, 0xfc

    ushr-int/lit8 v3, v10, 0x2

    .line 470
    .local v3, "c":I
    if-nez v5, :cond_0

    if-eqz v3, :cond_1

    .line 471
    :cond_0
    sget-object v10, Lgnu/crypto/util/Util;->BASE64_CHARSET:[C

    aget-char v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 472
    const/4 v5, 0x1

    .line 474
    :cond_1
    and-int/lit8 v10, v0, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit16 v11, v1, 0xf0

    ushr-int/lit8 v11, v11, 0x4

    or-int v3, v10, v11

    .line 475
    if-nez v5, :cond_2

    if-eqz v3, :cond_3

    .line 476
    :cond_2
    sget-object v10, Lgnu/crypto/util/Util;->BASE64_CHARSET:[C

    aget-char v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const/4 v5, 0x1

    .line 479
    :cond_3
    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0x2

    and-int/lit16 v11, v2, 0xc0

    ushr-int/lit8 v11, v11, 0x6

    or-int v3, v10, v11

    .line 480
    if-nez v5, :cond_4

    if-eqz v3, :cond_5

    .line 481
    :cond_4
    sget-object v10, Lgnu/crypto/util/Util;->BASE64_CHARSET:[C

    aget-char v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 482
    const/4 v5, 0x1

    .line 484
    :cond_5
    and-int/lit8 v3, v2, 0x3f

    .line 485
    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    .line 486
    :cond_6
    sget-object v10, Lgnu/crypto/util/Util;->BASE64_CHARSET:[C

    aget-char v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 487
    const/4 v5, 0x1

    .line 489
    :cond_7
    if-lt v7, v4, :cond_8

    move v6, v7

    .line 502
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :goto_2
    if-eqz v5, :cond_9

    .line 503
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 505
    :goto_3
    return-object v10

    .line 458
    .end local v3    # "c":I
    .end local v5    # "notleading":Z
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :pswitch_0
    aget-byte v2, p0, v10

    .line 459
    goto :goto_0

    .line 461
    :pswitch_1
    aget-byte v1, p0, v10

    .line 462
    const/4 v10, 0x1

    aget-byte v2, p0, v10

    .line 463
    goto :goto_0

    .line 493
    .end local v6    # "pos":I
    .restart local v3    # "c":I
    .restart local v5    # "notleading":Z
    .restart local v7    # "pos":I
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :try_start_0
    aget-byte v0, p0, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    :try_start_1
    aget-byte v1, p0, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :try_start_2
    aget-byte v2, p0, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v6

    .line 500
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_1

    .line 496
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :catch_0
    move-exception v9

    .line 497
    .local v9, "x":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    goto :goto_2

    .line 505
    .end local v9    # "x":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    const-string/jumbo v10, "0"

    goto :goto_3

    .line 496
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    :catch_1
    move-exception v9

    move v6, v7

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_4

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toBytesFromString(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 173
    .local v4, "limit":I
    add-int/lit8 v6, v4, 0x1

    div-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    .line 174
    .local v5, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .line 175
    .local v2, "j":I
    rem-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 176
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .line 178
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 182
    return-object v5

    .line 179
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 180
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v6, v5, v3

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v7

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0
.end method

.method public static toBytesFromUnicode(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 360
    .local v2, "limit":I
    new-array v3, v2, [B

    .line 362
    .local v3, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 366
    return-object v3

    .line 363
    :cond_0
    ushr-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 364
    .local v0, "c":C
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_1

    ushr-int/lit8 v0, v0, 0x8

    .end local v0    # "c":C
    :cond_1
    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toReversedBytesFromString(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 195
    .local v2, "limit":I
    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 196
    .local v3, "result":[B
    const/4 v0, 0x0

    .line 197
    .local v0, "i":I
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 198
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    move v1, v0

    .line 200
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_0
    if-gtz v2, :cond_1

    .line 204
    return-object v3

    .line 201
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 202
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lgnu/crypto/util/Util;->fromDigit(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static toReversedString([B)Ljava/lang/String;
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 135
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lgnu/crypto/util/Util;->toReversedString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toReversedString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 156
    mul-int/lit8 v6, p2, 0x2

    new-array v0, v6, [C

    .line 157
    .local v0, "buf":[C
    add-int v6, p1, p2

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 162
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 158
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v6, p1, v2

    aget-byte v5, p0, v6

    .line 159
    .local v5, "k":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 160
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 232
    const/16 v2, 0x8

    new-array v0, v2, [C

    .line 233
    .local v0, "buf":[C
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 237
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 234
    :cond_0
    sget-object v2, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 235
    ushr-int/lit8 p0, p0, 0x4

    .line 233
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 5
    .param p0, "n"    # J

    .prologue
    .line 269
    const/16 v2, 0x10

    new-array v0, v2, [C

    .line 270
    .local v0, "b":[C
    const/16 v1, 0xf

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 274
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 271
    :cond_0
    sget-object v2, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    const-wide/16 v3, 0xf

    and-long/2addr v3, p0

    long-to-int v3, v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 272
    const/4 v2, 0x4

    ushr-long/2addr p0, v2

    .line 270
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lgnu/crypto/util/Util;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 109
    mul-int/lit8 v6, p2, 0x2

    new-array v0, v6, [C

    .line 110
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 115
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 111
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v6, p1, v2

    aget-byte v5, p0, v6

    .line 112
    .local v5, "k":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 113
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 8
    .param p0, "ia"    # [I

    .prologue
    .line 245
    array-length v5, p0

    .line 246
    .local v5, "length":I
    mul-int/lit8 v6, v5, 0x8

    new-array v0, v6, [C

    .line 247
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 258
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 248
    :cond_0
    aget v4, p0, v1

    .line 249
    .local v4, "k":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x1c

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    .line 250
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x18

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v2

    .line 251
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x14

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    .line 252
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x10

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v2

    .line 253
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    .line 254
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v2

    .line 255
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    .line 256
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v2

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toUnicodeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 286
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lgnu/crypto/util/Util;->toUnicodeString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toUnicodeString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v7, 0xa

    .line 299
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 301
    .local v0, "i":I
    const/4 v2, 0x0

    .line 303
    .local v2, "j":I
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 304
    .end local v0    # "i":I
    .local v1, "i":I
    :cond_0
    :goto_0
    if-lt v1, p2, :cond_1

    .line 319
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 305
    :cond_1
    const-string/jumbo v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int v5, p1, v1

    aget-byte v3, p0, v5

    .line 308
    .local v3, "k":I
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    add-int v5, p1, v0

    aget-byte v3, p0, v5

    .line 312
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_0

    .line 316
    const-string/jumbo v5, "\"+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static toUnicodeString([I)Ljava/lang/String;
    .locals 8
    .param p0, "ia"    # [I

    .prologue
    const/16 v7, 0xa

    .line 332
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    const/4 v2, 0x0

    .line 336
    .local v2, "j":I
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_0

    .line 354
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 338
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v3, p0, v0

    .line 339
    .local v3, "k":I
    const-string/jumbo v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x1c

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x18

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x14

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const-string/jumbo v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 347
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    sget-object v5, Lgnu/crypto/util/Util;->HEX_DIGITS:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1

    .line 351
    const-string/jumbo v5, "\"+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_0
.end method

.method public static final trim(Ljava/math/BigInteger;)[B
    .locals 6
    .param p0, "n"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 588
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 589
    .local v1, "in":[B
    array-length v4, v1

    if-eqz v4, :cond_0

    aget-byte v4, v1, v5

    if-eqz v4, :cond_1

    :cond_0
    move-object v3, v1

    .line 599
    :goto_0
    return-object v3

    .line 592
    :cond_1
    array-length v2, v1

    .line 593
    .local v2, "len":I
    const/4 v0, 0x1

    .line 594
    .local v0, "i":I
    :goto_1
    aget-byte v4, v1, v0

    if-nez v4, :cond_2

    if-lt v0, v2, :cond_3

    .line 597
    :cond_2
    sub-int v4, v2, v0

    new-array v3, v4, [B

    .line 598
    .local v3, "result":[B
    sub-int v4, v2, v0

    invoke-static {v1, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 595
    .end local v3    # "result":[B
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
