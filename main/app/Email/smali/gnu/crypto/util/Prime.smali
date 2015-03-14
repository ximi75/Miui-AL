.class public Lgnu/crypto/util/Prime;
.super Ljava/lang/Object;
.source "Prime.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CERTAINTY:I = 0x14

.field private static final NAME:Ljava/lang/String; = "prime"

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIME:[Ljava/math/BigInteger;

.field private static final SMALL_PRIME_COUNT:I = 0x3e8

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final debuglevel:I = 0x5

.field private static final err:Ljava/io/PrintWriter;

.field private static final knownPrimes:Ljava/util/Map;


# direct methods
.method private static final constructor <clinit>()V
    .locals 9

    .prologue
    .line 67
    new-instance v6, Ljava/io/PrintWriter;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v6, Lgnu/crypto/util/Prime;->err:Ljava/io/PrintWriter;

    .line 76
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v6, Lgnu/crypto/util/Prime;->ZERO:Ljava/math/BigInteger;

    .line 77
    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sput-object v6, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    .line 78
    const/4 v6, 0x2

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    sput-object v6, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    .line 85
    const/16 v6, 0x3e8

    new-array v6, v6, [Ljava/math/BigInteger;

    sput-object v6, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    neg-long v4, v6

    .line 89
    .local v4, "time":J
    sget-object v6, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    const/4 v7, 0x0

    sget-object v8, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    aput-object v8, v6, v7

    .line 90
    const/4 v2, 0x3

    .line 91
    .local v2, "N":I
    const/4 v0, 0x0

    .line 94
    .local v0, "J":I
    :cond_0
    sget-object v6, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    aput-object v7, v6, v0

    .line 95
    const/16 v6, 0x3e7

    if-lt v0, v6, :cond_1

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 127
    new-instance v6, Ljava/util/WeakHashMap;

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v6, Lgnu/crypto/util/Prime;->knownPrimes:Ljava/util/Map;

    return-void

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 100
    const/4 v1, 0x1

    .line 101
    .local v1, "K":I
    :goto_0
    sget-object v6, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 102
    .local v3, "prime":I
    rem-int v6, v2, v3

    if-eqz v6, :cond_1

    .line 104
    div-int v6, v2, v3

    if-le v6, v3, :cond_0

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method private static final debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lgnu/crypto/util/Prime;->err:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ">>> prime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static hasSmallPrimeDivisor(Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "w"    # Ljava/math/BigInteger;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    .line 165
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 154
    :cond_0
    sget-object v2, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    aget-object v1, v2, v0

    .line 155
    .local v1, "prime":Ljava/math/BigInteger;
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lgnu/crypto/util/Prime;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const/4 v2, 0x1

    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1
    .param p0, "w"    # Ljava/math/BigInteger;

    .prologue
    .line 445
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lgnu/crypto/util/Prime;->isProbablePrime(Ljava/math/BigInteger;I)Z

    move-result v0

    return v0
.end method

.method public static isProbablePrime(Ljava/math/BigInteger;I)Z
    .locals 4
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "certainty"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 464
    if-nez p0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    sget-object v3, Lgnu/crypto/util/Prime;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_2

    .line 484
    invoke-static {p0}, Lgnu/crypto/util/Prime;->hasSmallPrimeDivisor(Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    invoke-static {p0, p1}, Lgnu/crypto/util/Prime;->passMillerRabin(Ljava/math/BigInteger;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 541
    goto :goto_0

    .line 475
    :cond_2
    sget-object v3, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 479
    goto :goto_0

    .line 474
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static passEulerCriterion(Ljava/math/BigInteger;)Z
    .locals 12
    .param p0, "w"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 226
    sget-object v10, Lgnu/crypto/util/Prime;->knownPrimes:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 227
    .local v6, "obj":Ljava/lang/ref/WeakReference;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 332
    :goto_0
    return v8

    .line 234
    :cond_0
    sget-object v10, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 235
    .local v7, "w_minus_one":Ljava/math/BigInteger;
    move-object v1, v7

    .line 237
    .local v1, "e":Ljava/math/BigInteger;
    const-wide/16 v10, 0x7

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 238
    .local v5, "l":I
    const/4 v3, 0x1

    .line 242
    .local v3, "j":I
    and-int/lit8 v10, v5, 0x7

    if-eqz v10, :cond_5

    .line 243
    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 244
    sget-object v10, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v10, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 245
    .local v0, "A":Ljava/math/BigInteger;
    and-int/lit8 v10, v5, 0x7

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 246
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v10

    if-eq v10, v8, :cond_1

    move v8, v9

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    const/4 v4, 0x1

    .line 294
    .local v4, "k":I
    :cond_2
    :goto_1
    move v2, v3

    .local v2, "i":I
    :goto_2
    const/16 v10, 0xd

    if-lt v2, v10, :cond_8

    .line 330
    sget-object v9, Lgnu/crypto/util/Prime;->knownPrimes:Ljava/util/Map;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v9, p0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v2    # "i":I
    .end local v4    # "k":I
    :cond_3
    sget-object v10, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v8, v9

    .line 259
    goto :goto_0

    .line 261
    :cond_4
    const/4 v4, 0x1

    .line 262
    .restart local v4    # "k":I
    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_2

    .line 263
    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 264
    const/4 v4, 0x2

    goto :goto_1

    .line 268
    .end local v0    # "A":Ljava/math/BigInteger;
    .end local v4    # "k":I
    :cond_5
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 269
    sget-object v10, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v10, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 270
    .restart local v0    # "A":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v10

    if-ne v10, v8, :cond_7

    .line 271
    const/4 v3, 0x0

    .line 282
    :cond_6
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 283
    .restart local v4    # "k":I
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 284
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 273
    .end local v4    # "k":I
    :cond_7
    sget-object v10, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    move v8, v9

    .line 278
    goto/16 :goto_0

    .line 295
    .restart local v2    # "i":I
    .restart local v4    # "k":I
    :cond_8
    sget-object v10, Lgnu/crypto/util/Prime;->SMALL_PRIME:[Ljava/math/BigInteger;

    aget-object v0, v10, v2

    .line 296
    invoke-virtual {v0, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v10

    if-ne v10, v8, :cond_a

    .line 294
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    :cond_a
    move v5, v4

    .line 304
    :cond_b
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 307
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_c

    move v8, v9

    .line 311
    goto/16 :goto_0

    .line 315
    :cond_c
    sget-object v10, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v10, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v10

    if-ne v10, v8, :cond_b

    move v8, v9

    .line 320
    goto/16 :goto_0
.end method

.method public static passFermatLittleTheorem(Ljava/math/BigInteger;I)Z
    .locals 8
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "t"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    sget-object v6, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 346
    .local v3, "w_minus_one":Ljava/math/BigInteger;
    if-gtz p1, :cond_0

    .line 347
    const/16 p1, 0xa

    .line 349
    :cond_0
    sget-object v6, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v6, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 373
    :cond_1
    :goto_0
    return v4

    .line 355
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_3

    move v4, v5

    .line 373
    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, -0x1

    new-array v1, v6, [B

    .line 357
    .local v1, "buf":[B
    const/4 v0, 0x0

    .line 359
    .local v0, "base":Ljava/math/BigInteger;
    :cond_4
    invoke-static {v1}, Lgnu/crypto/util/PRNG;->nextBytes([B)V

    .line 360
    new-instance v0, Ljava/math/BigInteger;

    .end local v0    # "base":Ljava/math/BigInteger;
    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 361
    .restart local v0    # "base":Ljava/math/BigInteger;
    sget-object v6, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_4

    .line 362
    invoke-virtual {v0, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static passMillerRabin(Ljava/math/BigInteger;I)Z
    .locals 12
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "t"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 390
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    div-int/lit8 v5, v11, 0x8

    .line 391
    .local v5, "nbytes":I
    new-array v1, v5, [B

    .line 394
    .local v1, "ab":[B
    sget-object v11, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 395
    .local v4, "n_minus_1":Ljava/math/BigInteger;
    move-object v6, v4

    .line 396
    .local v6, "r":Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 397
    .local v7, "s":I
    :goto_0
    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_1

    .line 441
    :goto_2
    return v9

    .line 398
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 408
    .restart local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lgnu/crypto/util/PRNG;->nextBytes([B)V

    .line 409
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 410
    .local v0, "a":Ljava/math/BigInteger;
    sget-object v11, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gtz v11, :cond_1

    .line 413
    invoke-virtual {v0, v6, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 416
    .local v8, "y":Ljava/math/BigInteger;
    sget-object v11, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 417
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_3
    add-int/lit8 v11, v7, -0x1

    if-ge v3, v11, :cond_2

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 430
    :cond_2
    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move v9, v10

    .line 434
    goto :goto_2

    .line 419
    :cond_3
    sget-object v11, Lgnu/crypto/util/Prime;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v11, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 422
    sget-object v11, Lgnu/crypto/util/Prime;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v9, v10

    .line 426
    goto :goto_2

    .line 417
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 403
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
