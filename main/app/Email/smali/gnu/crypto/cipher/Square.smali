.class public final Lgnu/crypto/cipher/Square;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Square.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final OFFSET:[I

.field private static final ROOT:I = 0x1f5

.field private static final ROUNDS:I = 0x8

.field private static final Sd:[B

.field private static final Sdata:Ljava/lang/String; = "\ub1ce\uc395\u5aad\ue702\u4d44\ufb91\u0c87\ua150\ucb67\u54dd\u468f\ue14e\uf0fd\ufceb\uf9c4\u1a6e\u5ef5\ucc8d\u1c56\u43fe\u0761\uf875\u59ff\u0322\u8ad1\u13ee\u8800\u0e34\u1580\u94e3\uedb5\u5323\u4b47\u17a7\u9035\uabd8\ub8df\u4f57\u9a92\udb1b\u3cc8\u9904\u8ee0\ud77d\u85bb\u402c\u3a45\uf142\u6520\u4118\u7225\u9370\u3605\uf20b\ua379\uec08\u2731\u32b6\u7cb0\u0a73\u5b7b\ub781\ud20d\u6a26\u9e58\u9c83\u74b3\uac30\u7a69\u770f\uae21\uded0\u2e97\u10a4\u98a8\ud468\u2d62\u296d\u1649\u76c7\ue8c1\u9637\ue5ca\uf4e9\u6312\uc2a6\u14bc\ud328\uaf2f\ue624\u52c6\ua009\ubd8c\ucf5d\u115f\u01c5\u9f3d\ua29b\uc93b\ube51\u191f\u3f5c\ub2ef\u4acd\ubfba\u6f64\ud9f3\u3eb4\uaadc\ud506\uc07e\uf666\u6c84\u7138\ub91d\u7f9d\u488b\u2ada\ua533\u8239\ud678\u86fa\ue42b\ua91e\u8960\u6bea\u554c\uf7e2"

.field private static final Se:[B

.field private static final Td:[I

.field private static final Te:[I

.field private static valid:Ljava/lang/Boolean;


# direct methods
.method private static final constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/16 v9, 0x100

    .line 80
    new-array v5, v11, [I

    sput-object v5, Lgnu/crypto/cipher/Square;->OFFSET:[I

    .line 101
    new-array v5, v9, [B

    sput-object v5, Lgnu/crypto/cipher/Square;->Se:[B

    .line 102
    new-array v5, v9, [B

    sput-object v5, Lgnu/crypto/cipher/Square;->Sd:[B

    .line 105
    new-array v5, v9, [I

    sput-object v5, Lgnu/crypto/cipher/Square;->Te:[I

    .line 106
    new-array v5, v9, [I

    sput-object v5, Lgnu/crypto/cipher/Square;->Td:[I

    .line 114
    const-string/jumbo v5, "00000000000000000000020000000000"

    invoke-static {v5}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v5

    sput-object v5, Lgnu/crypto/cipher/Square;->KAT_KEY:[B

    .line 116
    const-string/jumbo v5, "A9DF031B4E25E89F527EFFF89CB0BEBA"

    invoke-static {v5}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v5

    sput-object v5, Lgnu/crypto/cipher/Square;->KAT_CT:[B

    .line 176
    const-string/jumbo v5, "\ub1ce\uc395\u5aad\ue702\u4d44\ufb91\u0c87\ua150\ucb67\u54dd\u468f\ue14e\uf0fd\ufceb\uf9c4\u1a6e\u5ef5\ucc8d\u1c56\u43fe\u0761\uf875\u59ff\u0322\u8ad1\u13ee\u8800\u0e34\u1580\u94e3\uedb5\u5323\u4b47\u17a7\u9035\uabd8\ub8df\u4f57\u9a92\udb1b\u3cc8\u9904\u8ee0\ud77d\u85bb\u402c\u3a45\uf142\u6520\u4118\u7225\u9370\u3605\uf20b\ua379\uec08\u2731\u32b6\u7cb0\u0a73\u5b7b\ub781\ud20d\u6a26\u9e58\u9c83\u74b3\uac30\u7a69\u770f\uae21\uded0\u2e97\u10a4\u98a8\ud468\u2d62\u296d\u1649\u76c7\ue8c1\u9637\ue5ca\uf4e9\u6312\uc2a6\u14bc\ud328\uaf2f\ue624\u52c6\ua009\ubd8c\ucf5d\u115f\u01c5\u9f3d\ua29b\uc93b\ube51\u191f\u3f5c\ub2ef\u4acd\ubfba\u6f64\ud9f3\u3eb4\uaadc\ud506\uc07e\uf666\u6c84\u7138\ub91d\u7f9d\u488b\u2ada\ua533\u8239\ud678\u86fa\ue42b\ua91e\u8960\u6bea\u554c\uf7e2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 178
    .local v4, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 185
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v9, :cond_1

    .line 190
    sget-object v5, Lgnu/crypto/cipher/Square;->OFFSET:[I

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 191
    const/4 v1, 0x1

    :goto_2
    if-lt v1, v11, :cond_2

    .line 196
    sget-object v5, Lgnu/crypto/cipher/Square;->OFFSET:[I

    const/4 v7, 0x7

    aget v8, v5, v7

    shl-int/lit8 v8, v8, 0x18

    aput v8, v5, v7

    .line 206
    const/4 v1, 0x0

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_3
    if-lt v1, v9, :cond_3

    return-void

    .line 179
    .end local v2    # "j":I
    .restart local v3    # "j":I
    :cond_0
    const-string/jumbo v5, "\ub1ce\uc395\u5aad\ue702\u4d44\ufb91\u0c87\ua150\ucb67\u54dd\u468f\ue14e\uf0fd\ufceb\uf9c4\u1a6e\u5ef5\ucc8d\u1c56\u43fe\u0761\uf875\u59ff\u0322\u8ad1\u13ee\u8800\u0e34\u1580\u94e3\uedb5\u5323\u4b47\u17a7\u9035\uabd8\ub8df\u4f57\u9a92\udb1b\u3cc8\u9904\u8ee0\ud77d\u85bb\u402c\u3a45\uf142\u6520\u4118\u7225\u9370\u3605\uf20b\ua379\uec08\u2731\u32b6\u7cb0\u0a73\u5b7b\ub781\ud20d\u6a26\u9e58\u9c83\u74b3\uac30\u7a69\u770f\uae21\uded0\u2e97\u10a4\u98a8\ud468\u2d62\u296d\u1649\u76c7\ue8c1\u9637\ue5ca\uf4e9\u6312\uc2a6\u14bc\ud328\uaf2f\ue624\u52c6\ua009\ubd8c\ucf5d\u115f\u01c5\u9f3d\ua29b\uc93b\ube51\u191f\u3f5c\ub2ef\u4acd\ubfba\u6f64\ud9f3\u3eb4\uaadc\ud506\uc07e\uf666\u6c84\u7138\ub91d\u7f9d\u488b\u2ada\ua533\u8239\ud678\u86fa\ue42b\ua91e\u8960\u6bea\u554c\uf7e2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c1":C
    sget-object v5, Lgnu/crypto/cipher/Square;->Se:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    ushr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 181
    sget-object v5, Lgnu/crypto/cipher/Square;->Se:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    int-to-byte v7, v0

    aput-byte v7, v5, v2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "c1":C
    :cond_1
    sget-object v5, Lgnu/crypto/cipher/Square;->Sd:[B

    sget-object v7, Lgnu/crypto/cipher/Square;->Se:[B

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_2
    sget-object v5, Lgnu/crypto/cipher/Square;->OFFSET:[I

    sget-object v7, Lgnu/crypto/cipher/Square;->OFFSET:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    invoke-static {v7, v10}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    aput v7, v5, v1

    .line 193
    sget-object v5, Lgnu/crypto/cipher/Square;->OFFSET:[I

    add-int/lit8 v7, v1, -0x1

    aget v8, v5, v7

    shl-int/lit8 v8, v8, 0x18

    aput v8, v5, v7

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_3
    sget-object v5, Lgnu/crypto/cipher/Square;->Se:[B

    aget-byte v5, v5, v1

    and-int/lit16 v2, v5, 0xff

    .line 208
    sget-object v7, Lgnu/crypto/cipher/Square;->Te:[I

    sget-object v5, Lgnu/crypto/cipher/Square;->Se:[B

    and-int/lit8 v8, v1, 0x3

    aget-byte v5, v5, v8

    if-eqz v5, :cond_5

    invoke-static {v2, v10}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v8, v2, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v8, v2, 0x8

    or-int/2addr v5, v8

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v8

    or-int/2addr v5, v8

    :goto_4
    aput v5, v7, v1

    .line 212
    sget-object v5, Lgnu/crypto/cipher/Square;->Sd:[B

    aget-byte v5, v5, v1

    and-int/lit16 v2, v5, 0xff

    .line 213
    sget-object v7, Lgnu/crypto/cipher/Square;->Td:[I

    sget-object v5, Lgnu/crypto/cipher/Square;->Sd:[B

    and-int/lit8 v8, v1, 0x3

    aget-byte v5, v5, v8

    if-eqz v5, :cond_4

    const/16 v5, 0xe

    invoke-static {v2, v5}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    const/16 v8, 0x9

    invoke-static {v2, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    const/16 v8, 0xd

    invoke-static {v2, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    const/16 v8, 0xb

    invoke-static {v2, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v8

    or-int/2addr v5, v8

    :goto_5
    aput v5, v7, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_4
    move v5, v6

    goto :goto_5

    :cond_5
    move v5, v6

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 225
    const-string/jumbo v0, "square"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 226
    return-void
.end method

.method private static final mul(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 399
    :goto_0
    return v1

    .line 385
    :cond_0
    and-int/lit16 p0, p0, 0xff

    .line 386
    and-int/lit16 p1, p1, 0xff

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "result":I
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 399
    and-int/lit16 v1, v0, 0xff

    goto :goto_0

    .line 389
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 390
    xor-int/2addr v0, p0

    .line 393
    :cond_3
    ushr-int/lit8 p1, p1, 0x1

    .line 394
    shl-int/lit8 p0, p0, 0x1

    .line 395
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 396
    xor-int/lit16 p0, p0, 0x1f5

    goto :goto_1
.end method

.method private static final rot32L(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "s"    # I

    .prologue
    .line 355
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static final rot32R(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "s"    # I

    .prologue
    .line 366
    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static final square([BI[BI[[I[I[B)V
    .locals 14
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "j"    # I
    .param p4, "K"    # [[I
    .param p5, "T"    # [I
    .param p6, "S"    # [B

    .prologue
    .line 233
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .local v8, "i":I
    aget-byte v11, p0, p1

    shl-int/lit8 v11, v11, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v12, p0, p1

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    const/4 v12, 0x0

    aget-object v12, p4, v12

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v0, v11, v12

    .line 237
    .local v0, "a":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v11, p0, p1

    shl-int/lit8 v11, v11, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v12, p0, p1

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    const/4 v12, 0x0

    aget-object v12, p4, v12

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v2, v11, v12

    .line 241
    .local v2, "b":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v11, p0, p1

    shl-int/lit8 v11, v11, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v12, p0, p1

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    const/4 v12, 0x0

    aget-object v12, p4, v12

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v4, v11, v12

    .line 245
    .local v4, "c":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v11, p0, p1

    shl-int/lit8 v11, v11, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v12, p0, p1

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    aget-byte v12, p0, v8

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    const/4 v12, 0x0

    aget-object v12, p4, v12

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v6, v11, v12

    .line 251
    .local v6, "d":I
    const/4 v10, 0x1

    .local v10, "r":I
    :goto_0
    const/16 v11, 0x8

    if-lt v10, v11, :cond_0

    .line 276
    ushr-int/lit8 v11, v0, 0x18

    aget-byte v11, p6, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v12, v2, 0x18

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x18

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x18

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v1, v11, v12

    .line 280
    .local v1, "aa":I
    ushr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, p6, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v3, v11, v12

    .line 284
    .local v3, "bb":I
    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, p6, v11

    shl-int/lit8 v11, v11, 0x18

    ushr-int/lit8 v12, v2, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v5, v11, v12

    .line 288
    .local v5, "cc":I
    and-int/lit16 v11, v0, 0xff

    aget-byte v11, p6, v11

    shl-int/lit8 v11, v11, 0x18

    and-int/lit16 v12, v2, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    and-int/lit16 v12, v4, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    and-int/lit16 v12, v6, 0xff

    aget-byte v12, p6, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 293
    .local v7, "dd":I
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .local v9, "j":I
    ushr-int/lit8 v11, v1, 0x18

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 294
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    ushr-int/lit8 v11, v1, 0x10

    int-to-byte v11, v11

    aput-byte v11, p2, v9

    .line 295
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 296
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    int-to-byte v11, v1

    aput-byte v11, p2, v9

    .line 297
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v3, 0x18

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 298
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    ushr-int/lit8 v11, v3, 0x10

    int-to-byte v11, v11

    aput-byte v11, p2, v9

    .line 299
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 300
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    int-to-byte v11, v3

    aput-byte v11, p2, v9

    .line 301
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v5, 0x18

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 302
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    ushr-int/lit8 v11, v5, 0x10

    int-to-byte v11, v11

    aput-byte v11, p2, v9

    .line 303
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v5, 0x8

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 304
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    int-to-byte v11, v5

    aput-byte v11, p2, v9

    .line 305
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v7, 0x18

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 306
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    ushr-int/lit8 v11, v7, 0x10

    int-to-byte v11, v11

    aput-byte v11, p2, v9

    .line 307
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, p2, p3

    .line 308
    int-to-byte v11, v7

    aput-byte v11, p2, v9

    .line 309
    return-void

    .line 252
    .end local v1    # "aa":I
    .end local v3    # "bb":I
    .end local v5    # "cc":I
    .end local v7    # "dd":I
    .end local v9    # "j":I
    .restart local p3    # "j":I
    :cond_0
    ushr-int/lit8 v11, v0, 0x18

    aget v11, p5, v11

    ushr-int/lit8 v12, v2, 0x18

    aget v12, p5, v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x18

    aget v12, p5, v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x18

    aget v12, p5, v12

    const/16 v13, 0x18

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v1, v11, v12

    .line 256
    .restart local v1    # "aa":I
    ushr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, p5, v11

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x18

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v3, v11, v12

    .line 260
    .restart local v3    # "bb":I
    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, p5, v11

    ushr-int/lit8 v12, v2, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, p5, v12

    const/16 v13, 0x18

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v5, v11, v12

    .line 264
    .restart local v5    # "cc":I
    and-int/lit16 v11, v0, 0xff

    aget v11, p5, v11

    and-int/lit16 v12, v2, 0xff

    aget v12, p5, v12

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v4, 0xff

    aget v12, p5, v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v6, 0xff

    aget v12, p5, v12

    const/16 v13, 0x18

    invoke-static {v12, v13}, Lgnu/crypto/cipher/Square;->rot32R(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p4, v10

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 269
    .restart local v7    # "dd":I
    move v0, v1

    .line 270
    move v2, v3

    .line 271
    move v4, v5

    .line 272
    move v6, v7

    .line 251
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method private static final transform([I[I)V
    .locals 10
    .param p0, "in"    # [I
    .param p1, "out"    # [I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    :goto_0
    const/4 v6, 0x4

    if-lt v0, v6, :cond_0

    .line 345
    return-void

    .line 335
    :cond_0
    aget v4, p0, v0

    .line 336
    .local v4, "l3":I
    ushr-int/lit8 v3, v4, 0x8

    .line 337
    .local v3, "l2":I
    ushr-int/lit8 v2, v4, 0x10

    .line 338
    .local v2, "l1":I
    ushr-int/lit8 v1, v4, 0x18

    .line 339
    .local v1, "l0":I
    invoke-static {v1, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v6

    invoke-static {v2, v9}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    xor-int/2addr v6, v3

    xor-int/2addr v6, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x18

    .line 340
    .local v5, "m":I
    invoke-static {v2, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v6

    xor-int/2addr v6, v1

    invoke-static {v3, v9}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    xor-int/2addr v6, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    xor-int/2addr v5, v6

    .line 341
    xor-int v6, v1, v2

    invoke-static {v3, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    invoke-static {v4, v9}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    .line 342
    invoke-static {v1, v9}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v6

    xor-int/2addr v6, v2

    xor-int/2addr v6, v3

    invoke-static {v4, v8}, Lgnu/crypto/cipher/Square;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    .line 343
    aput v5, p1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lgnu/crypto/cipher/Square;

    invoke-direct {v0}, Lgnu/crypto/cipher/Square;-><init>()V

    .line 409
    .local v0, "result":Lgnu/crypto/cipher/Square;
    iget v1, p0, Lgnu/crypto/cipher/Square;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Square;->currentBlockSize:I

    .line 411
    return-object v0
.end method

.method public final decrypt([BI[BILjava/lang/Object;I)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 498
    const/16 v0, 0x10

    if-eq p6, v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 502
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v0, 0x1

    aget-object v4, p5, v0

    check-cast v4, [[I

    .line 503
    .local v4, "K":[[I
    sget-object v5, Lgnu/crypto/cipher/Square;->Td:[I

    sget-object v6, Lgnu/crypto/cipher/Square;->Sd:[B

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lgnu/crypto/cipher/Square;->square([BI[BI[[I[I[B)V

    .line 504
    return-void
.end method

.method public final encrypt([BI[BILjava/lang/Object;I)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 489
    const/16 v0, 0x10

    if-eq p6, v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 493
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v4, p5, v0

    check-cast v4, [[I

    .line 494
    .local v4, "K":[[I
    sget-object v5, Lgnu/crypto/cipher/Square;->Te:[I

    sget-object v6, Lgnu/crypto/cipher/Square;->Se:[B

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lgnu/crypto/cipher/Square;->square([BI[BI[[I[I[B)V

    .line 495
    return-void
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 11
    .param p1, "uk"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 431
    const/16 v6, 0x10

    if-eq p2, v6, :cond_0

    .line 432
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 434
    :cond_0
    if-nez p1, :cond_1

    .line 435
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string/jumbo v7, "Empty key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 437
    :cond_1
    array-length v6, p1

    const/16 v7, 0x10

    if-eq v6, v7, :cond_2

    .line 438
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string/jumbo v7, "Key is not 128-bit."

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 441
    :cond_2
    const/16 v6, 0x9

    const/4 v7, 0x4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 442
    .local v1, "Ke":[[I
    const/16 v6, 0x9

    const/4 v7, 0x4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 443
    .local v0, "Kd":[[I
    const/16 v6, 0x9

    const/4 v7, 0x4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 444
    .local v5, "tK":[[I
    const/4 v2, 0x0

    .line 446
    .local v2, "i":I
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 450
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v6, v7

    .line 451
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x1

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 455
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 456
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 460
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x2

    aget v8, v8, v9

    aput v8, v6, v7

    .line 461
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x3

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v6, v7

    .line 465
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x3

    aget v8, v8, v9

    aput v8, v6, v7

    .line 468
    const/4 v2, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    const/16 v6, 0x9

    if-lt v2, v6, :cond_3

    .line 479
    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x8

    if-lt v2, v6, :cond_4

    .line 483
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/16 v7, 0x8

    aget-object v7, v0, v7

    invoke-static {v6, v7}, Lgnu/crypto/cipher/Square;->transform([I[I)V

    .line 485
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    return-object v6

    .line 469
    :cond_3
    aget-object v6, v5, v2

    const/4 v7, 0x0

    aget-object v8, v5, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v9, v5, v4

    const/4 v10, 0x3

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lgnu/crypto/cipher/Square;->rot32L(II)I

    move-result v9

    xor-int/2addr v8, v9

    sget-object v9, Lgnu/crypto/cipher/Square;->OFFSET:[I

    aget v9, v9, v4

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 470
    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v8, v5, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v9, v5, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 471
    aget-object v6, v5, v2

    const/4 v7, 0x2

    aget-object v8, v5, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    aget-object v9, v5, v2

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 472
    aget-object v6, v5, v2

    const/4 v7, 0x3

    aget-object v8, v5, v4

    const/4 v9, 0x3

    aget v8, v8, v9

    aget-object v9, v5, v2

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 474
    aget-object v6, v5, v2

    const/4 v7, 0x0

    aget-object v8, v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    aget-object v6, v1, v4

    aget-object v7, v1, v4

    invoke-static {v6, v7}, Lgnu/crypto/cipher/Square;->transform([I[I)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    :cond_4
    rsub-int/lit8 v6, v2, 0x8

    aget-object v6, v5, v6

    const/4 v7, 0x0

    aget-object v8, v0, v2

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public final selfTest()Z
    .locals 3

    .prologue
    .line 507
    sget-object v1, Lgnu/crypto/cipher/Square;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 508
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 509
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 510
    sget-object v1, Lgnu/crypto/cipher/Square;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Square;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Square;->testKat([B[B)Z

    move-result v0

    .line 512
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Square;->valid:Ljava/lang/Boolean;

    .line 514
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Square;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
