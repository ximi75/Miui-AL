.class public Lgnu/crypto/util/PRNG;
.super Ljava/lang/Object;
.source "PRNG.java"


# static fields
.field private static final singleton:Lgnu/crypto/prng/IRandom;


# direct methods
.method private static final constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lgnu/crypto/Properties;->isReproducible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lgnu/crypto/prng/MDGenerator;

    invoke-direct {v1}, Lgnu/crypto/prng/MDGenerator;-><init>()V

    sput-object v1, Lgnu/crypto/util/PRNG;->singleton:Lgnu/crypto/prng/IRandom;

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lgnu/crypto/prng/CSPRNG;->getSystemInstance()Lgnu/crypto/prng/IRandom;

    move-result-object v1

    sput-object v1, Lgnu/crypto/util/PRNG;->singleton:Lgnu/crypto/prng/IRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "x":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static nextBytes([B)V
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lgnu/crypto/util/PRNG;->nextBytes([BII)V

    .line 100
    return-void
.end method

.method public static nextBytes([BII)V
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v9, 0x8

    .line 110
    :try_start_0
    sget-object v6, Lgnu/crypto/util/PRNG;->singleton:Lgnu/crypto/prng/IRandom;

    invoke-interface {v6, p0, p1, p2}, Lgnu/crypto/prng/IRandom;->nextBytes([BII)V
    :try_end_0
    .catch Lgnu/crypto/prng/LimitReachedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v4

    .line 114
    .local v4, "x":Lgnu/crypto/prng/LimitReachedException;
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "map":Ljava/util/HashMap;
    invoke-static {}, Lgnu/crypto/Properties;->isReproducible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 117
    .local v2, "t":J
    const/16 v6, 0x8

    new-array v1, v6, [B

    const/4 v6, 0x0

    const/16 v7, 0x38

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x1

    const/16 v7, 0x30

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x2

    const/16 v7, 0x28

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x3

    const/16 v7, 0x20

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x4

    const/16 v7, 0x18

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x5

    const/16 v7, 0x10

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x6

    ushr-long v7, v2, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x7

    long-to-int v7, v2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 123
    .local v1, "seed":[B
    const-string/jumbo v6, "gnu.crypto.prng.md.seed"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v1    # "seed":[B
    .end local v2    # "t":J
    :cond_0
    sget-object v6, Lgnu/crypto/util/PRNG;->singleton:Lgnu/crypto/prng/IRandom;

    invoke-interface {v6, v0}, Lgnu/crypto/prng/IRandom;->init(Ljava/util/Map;)V

    .line 126
    sget-object v6, Lgnu/crypto/util/PRNG;->singleton:Lgnu/crypto/prng/IRandom;

    invoke-interface {v6, p0, p1, p2}, Lgnu/crypto/prng/IRandom;->nextBytes([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    .end local v0    # "map":Ljava/util/HashMap;
    :catch_1
    move-exception v5

    .line 128
    .local v5, "y":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v6, v5}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
