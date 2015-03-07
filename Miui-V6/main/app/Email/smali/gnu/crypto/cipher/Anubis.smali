.class public final Lgnu/crypto/cipher/Anubis;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Anubis.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final S:[B

.field private static final Sd:Ljava/lang/String; = "\uba54\u2f74\u53d3\ud24d\u50ac\u8dbf\u7052\u9a4c\uead5\u97d1\u3351\u5ba6\ude48\ua899\udb32\ub7fc\ue39e\u919b\ue2bb\u416e\ua5cb\u6b95\ua1f3\ub102\uccc4\u1d14\uc363\uda5d\u5fdc\u7dcd\u7f5a\u6c5c\uf726\uffed\ue89d\u6f8e\u19a0\uf089\u0f07\uaffb\u0815\u0d04\u0164\udf76\u79dd\u3d16\u3f37\u6d38\ub973\ue935\u5571\u7b8c\u7288\uf62a\u3e5e\u2746\u0c65\u6861\u03c1\u57d6\ud958\ud866\ud73a\uc83c\ufa96\ua798\uecb8\uc7ae\u694b\uaba9\u670a\u47f2\ub522\ue5ee\ube2b\u8112\u831b\u0e23\uf545\u21ce\u492c\uf9e6\ub628\u1782\u1a8b\ufe8a\u09c9\u874e\ue12e\ue4e0\ueb90\ua41e\u8560%\uf4f1\u940b\ue775\uef34\u31d4\ud086\u7ead\ufd29\u303b\u9ff8\uc613\u0605\uc511\u777c\u7a78\u361c\u3959\u1856\ub3b0\u2420\ub292\ua3c0\u4462\u10b4\u8443\u93c2\u4abd\u8f2d\ubc9c\u6a40\ucfa2\u804f\u1fca\uaa42"

.field private static final T0:[I

.field private static final T1:[I

.field private static final T2:[I

.field private static final T3:[I

.field private static final T4:[I

.field private static final T5:[I

.field private static final debuglevel:I = 0x9

.field private static final rc:[I

.field private static valid:Ljava/lang/Boolean;


# direct methods
.method private static final constructor <clinit>()V
    .locals 16

    .prologue
    .line 110
    const/16 v12, 0x100

    new-array v12, v12, [B

    sput-object v12, Lgnu/crypto/cipher/Anubis;->S:[B

    .line 112
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T0:[I

    .line 113
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T1:[I

    .line 114
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T2:[I

    .line 115
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T3:[I

    .line 116
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T4:[I

    .line 117
    const/16 v12, 0x100

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->T5:[I

    .line 123
    const/16 v12, 0x12

    new-array v12, v12, [I

    sput-object v12, Lgnu/crypto/cipher/Anubis;->rc:[I

    .line 131
    const-string/jumbo v12, "000000000000000000002000000000000000000000000000"

    invoke-static {v12}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v12

    sput-object v12, Lgnu/crypto/cipher/Anubis;->KAT_KEY:[B

    .line 133
    const-string/jumbo v12, "2E66AB15773F3D32FB6C697509460DF4"

    invoke-static {v12}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v12

    sput-object v12, Lgnu/crypto/cipher/Anubis;->KAT_CT:[B

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 144
    .local v10, "time":J
    const/16 v0, 0x11d

    .line 147
    .local v0, "ROOT":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v12, 0x100

    if-lt v2, v12, :cond_0

    .line 178
    const/4 v2, 0x0

    const/4 v4, 0x0

    .local v4, "s":I
    move v5, v4

    .end local v4    # "s":I
    .local v5, "s":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    const/16 v12, 0x12

    if-lt v3, v12, :cond_5

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 187
    return-void

    .line 148
    .end local v3    # "i":I
    .end local v5    # "s":I
    .restart local v2    # "i":I
    :cond_0
    const-string/jumbo v12, "\uba54\u2f74\u53d3\ud24d\u50ac\u8dbf\u7052\u9a4c\uead5\u97d1\u3351\u5ba6\ude48\ua899\udb32\ub7fc\ue39e\u919b\ue2bb\u416e\ua5cb\u6b95\ua1f3\ub102\uccc4\u1d14\uc363\uda5d\u5fdc\u7dcd\u7f5a\u6c5c\uf726\uffed\ue89d\u6f8e\u19a0\uf089\u0f07\uaffb\u0815\u0d04\u0164\udf76\u79dd\u3d16\u3f37\u6d38\ub973\ue935\u5571\u7b8c\u7288\uf62a\u3e5e\u2746\u0c65\u6861\u03c1\u57d6\ud958\ud866\ud73a\uc83c\ufa96\ua798\uecb8\uc7ae\u694b\uaba9\u670a\u47f2\ub522\ue5ee\ube2b\u8112\u831b\u0e23\uf545\u21ce\u492c\uf9e6\ub628\u1782\u1a8b\ufe8a\u09c9\u874e\ue12e\ue4e0\ueb90\ua41e\u8560%\uf4f1\u940b\ue775\uef34\u31d4\ud086\u7ead\ufd29\u303b\u9ff8\uc613\u0605\uc511\u777c\u7a78\u361c\u3959\u1856\ub3b0\u2420\ub292\ua3c0\u4462\u10b4\u8443\u93c2\u4abd\u8f2d\ubc9c\u6a40\ucfa2\u804f\u1fca\uaa42"

    ushr-int/lit8 v13, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 149
    .local v1, "c":C
    and-int/lit8 v12, v2, 0x1

    if-nez v12, :cond_1

    ushr-int/lit8 v1, v1, 0x8

    .end local v1    # "c":C
    :cond_1
    and-int/lit16 v4, v1, 0xff

    .line 150
    .restart local v4    # "s":I
    sget-object v12, Lgnu/crypto/cipher/Anubis;->S:[B

    int-to-byte v13, v4

    aput-byte v13, v12, v2

    .line 152
    shl-int/lit8 v6, v4, 0x1

    .line 153
    .local v6, "s2":I
    const/16 v12, 0xff

    if-le v6, v12, :cond_2

    .line 154
    xor-int/2addr v6, v0

    .line 157
    :cond_2
    shl-int/lit8 v7, v6, 0x1

    .line 158
    .local v7, "s4":I
    const/16 v12, 0xff

    if-le v7, v12, :cond_3

    .line 159
    xor-int/2addr v7, v0

    .line 162
    :cond_3
    xor-int v8, v7, v6

    .line 163
    .local v8, "s6":I
    shl-int/lit8 v9, v7, 0x1

    .line 164
    .local v9, "s8":I
    const/16 v12, 0xff

    if-le v9, v12, :cond_4

    .line 165
    xor-int/2addr v9, v0

    .line 168
    :cond_4
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T0:[I

    shl-int/lit8 v13, v4, 0x18

    shl-int/lit8 v14, v6, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v7, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v8

    aput v13, v12, v2

    .line 169
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T1:[I

    shl-int/lit8 v13, v6, 0x18

    shl-int/lit8 v14, v4, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v8, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v7

    aput v13, v12, v2

    .line 170
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T2:[I

    shl-int/lit8 v13, v7, 0x18

    shl-int/lit8 v14, v8, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v4, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v6

    aput v13, v12, v2

    .line 171
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T3:[I

    shl-int/lit8 v13, v8, 0x18

    shl-int/lit8 v14, v7, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v6, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v4

    aput v13, v12, v2

    .line 173
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T4:[I

    shl-int/lit8 v13, v4, 0x18

    shl-int/lit8 v14, v4, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v4, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v4

    aput v13, v12, v2

    .line 174
    sget-object v12, Lgnu/crypto/cipher/Anubis;->T5:[I

    shl-int/lit8 v13, v4, 0x18

    shl-int/lit8 v14, v6, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v8, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v9

    aput v13, v12, v4

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 179
    .end local v2    # "i":I
    .end local v4    # "s":I
    .end local v6    # "s2":I
    .end local v7    # "s4":I
    .end local v8    # "s6":I
    .end local v9    # "s8":I
    .restart local v3    # "i":I
    .restart local v5    # "s":I
    :cond_5
    sget-object v12, Lgnu/crypto/cipher/Anubis;->rc:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    sget-object v13, Lgnu/crypto/cipher/Anubis;->S:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    and-int/lit16 v14, v5, 0xff

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x18

    sget-object v14, Lgnu/crypto/cipher/Anubis;->S:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .restart local v5    # "s":I
    and-int/lit16 v15, v4, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    sget-object v14, Lgnu/crypto/cipher/Anubis;->S:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    and-int/lit16 v15, v5, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    sget-object v14, Lgnu/crypto/cipher/Anubis;->S:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .restart local v5    # "s":I
    and-int/lit16 v15, v4, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    aput v13, v12, v3

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 259
    const-string/jumbo v0, "anubis"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 260
    return-void
.end method

.method private static final anubis([BI[BI[[I)V
    .locals 18
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "j"    # I
    .param p4, "K"    # [[I

    .prologue
    .line 267
    move-object/from16 v0, p4

    array-length v15, v0

    add-int/lit8 v2, v15, -0x1

    .line 268
    .local v2, "R":I
    const/4 v15, 0x0

    aget-object v1, p4, v15

    .line 271
    .local v1, "Ker":[I
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .local v11, "i":I
    aget-byte v15, p0, p1

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v16, p0, p1

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    const/16 v16, 0x0

    aget v16, v1, v16

    xor-int v3, v15, v16

    .line 275
    .local v3, "a0":I
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v15, p0, p1

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v16, p0, p1

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    const/16 v16, 0x1

    aget v16, v1, v16

    xor-int v4, v15, v16

    .line 279
    .local v4, "a1":I
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v15, p0, p1

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v16, p0, p1

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    const/16 v16, 0x2

    aget v16, v1, v16

    xor-int v5, v15, v16

    .line 283
    .local v5, "a2":I
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v15, p0, p1

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 p1, v11, 0x1

    .end local v11    # "i":I
    .restart local p1    # "i":I
    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "i":I
    .restart local v11    # "i":I
    aget-byte v16, p0, p1

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    aget-byte v16, p0, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    const/16 v16, 0x3

    aget v16, v1, v16

    xor-int v6, v15, v16

    .line 290
    .local v6, "a3":I
    const/4 v13, 0x1

    .local v13, "r":I
    :goto_0
    if-lt v13, v2, :cond_0

    .line 319
    aget-object v1, p4, v2

    .line 320
    const/4 v15, 0x0

    aget v14, v1, v15

    .line 321
    .local v14, "tt":I
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .local v12, "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v3, 0x18

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x18

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 322
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v4, 0x18

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x10

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 323
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v5, 0x18

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 324
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v6, 0x18

    aget-byte v15, v15, v16

    xor-int/2addr v15, v14

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 325
    const/4 v15, 0x1

    aget v14, v1, v15

    .line 326
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v3, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x18

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 327
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v4, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x10

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 328
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v5, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 329
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v6, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    xor-int/2addr v15, v14

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 330
    const/4 v15, 0x2

    aget v14, v1, v15

    .line 331
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v3, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x18

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 332
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v4, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x10

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 333
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v5, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 334
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v16, v6, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    xor-int/2addr v15, v14

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 335
    const/4 v15, 0x3

    aget v14, v1, v15

    .line 336
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x18

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 337
    add-int/lit8 p3, v12, 0x1

    .end local v12    # "j":I
    .restart local p3    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x10

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 338
    add-int/lit8 v12, p3, 0x1

    .end local p3    # "j":I
    .restart local v12    # "j":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v5, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    ushr-int/lit8 v16, v14, 0x8

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, p2, p3

    .line 339
    sget-object v15, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v6, 0xff

    move/from16 v16, v0

    aget-byte v15, v15, v16

    xor-int/2addr v15, v14

    int-to-byte v15, v15

    aput-byte v15, p2, v12

    .line 345
    return-void

    .line 291
    .end local v12    # "j":I
    .end local v14    # "tt":I
    .restart local p3    # "j":I
    :cond_0
    aget-object v1, p4, v13

    .line 292
    sget-object v15, Lgnu/crypto/cipher/Anubis;->T0:[I

    ushr-int/lit8 v16, v3, 0x18

    aget v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T1:[I

    ushr-int/lit8 v17, v4, 0x18

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T2:[I

    ushr-int/lit8 v17, v5, 0x18

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T3:[I

    ushr-int/lit8 v17, v6, 0x18

    aget v16, v16, v17

    xor-int v15, v15, v16

    const/16 v16, 0x0

    aget v16, v1, v16

    xor-int v7, v15, v16

    .line 296
    .local v7, "b0":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->T0:[I

    ushr-int/lit8 v16, v3, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T1:[I

    ushr-int/lit8 v17, v4, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T2:[I

    ushr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T3:[I

    ushr-int/lit8 v17, v6, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    const/16 v16, 0x1

    aget v16, v1, v16

    xor-int v8, v15, v16

    .line 300
    .local v8, "b1":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->T0:[I

    ushr-int/lit8 v16, v3, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T1:[I

    ushr-int/lit8 v17, v4, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T2:[I

    ushr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T3:[I

    ushr-int/lit8 v17, v6, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    const/16 v16, 0x2

    aget v16, v1, v16

    xor-int v9, v15, v16

    .line 304
    .local v9, "b2":I
    sget-object v15, Lgnu/crypto/cipher/Anubis;->T0:[I

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T1:[I

    and-int/lit16 v0, v4, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T2:[I

    and-int/lit16 v0, v5, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    sget-object v16, Lgnu/crypto/cipher/Anubis;->T3:[I

    and-int/lit16 v0, v6, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    xor-int v15, v15, v16

    const/16 v16, 0x3

    aget v16, v1, v16

    xor-int v10, v15, v16

    .line 308
    .local v10, "b3":I
    move v3, v7

    .line 309
    move v4, v8

    .line 310
    move v5, v9

    .line 311
    move v6, v10

    .line 290
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lgnu/crypto/cipher/Anubis;

    invoke-direct {v0}, Lgnu/crypto/cipher/Anubis;-><init>()V

    .line 354
    .local v0, "result":Lgnu/crypto/cipher/Anubis;
    iget v1, p0, Lgnu/crypto/cipher/Anubis;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Anubis;->currentBlockSize:I

    .line 356
    return-object v0
.end method

.method public final decrypt([BI[BILjava/lang/Object;I)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 544
    const/16 v1, 0x10

    if-eq p6, v1, :cond_0

    .line 545
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 548
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v0, p5, v1

    check-cast v0, [[I

    .line 549
    .local v0, "K":[[I
    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/Anubis;->anubis([BI[BI[[I)V

    .line 550
    return-void
.end method

.method public final encrypt([BI[BILjava/lang/Object;I)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "out"    # [B
    .param p4, "j"    # I
    .param p5, "k"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 535
    const/16 v1, 0x10

    if-eq p6, v1, :cond_0

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 539
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v0, p5, v1

    check-cast v0, [[I

    .line 540
    .local v0, "K":[[I
    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/Anubis;->anubis([BI[BI[[I)V

    .line 541
    return-void
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "al":Ljava/util/ArrayList;
    const/4 v1, 0x4

    .local v1, "n":I
    :goto_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 374
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 371
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    mul-int/lit8 v3, v1, 0x20

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 24
    .param p1, "uk"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 388
    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 389
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 392
    new-instance v18, Ljava/security/InvalidKeyException;

    const-string/jumbo v19, "Empty key"

    invoke-direct/range {v18 .. v19}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 394
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_2

    .line 395
    new-instance v18, Ljava/security/InvalidKeyException;

    const-string/jumbo v19, "Key is not multiple of 32-bit."

    invoke-direct/range {v18 .. v19}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 397
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    div-int/lit8 v4, v18, 0x4

    .line 398
    .local v4, "N":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v4, v0, :cond_3

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_4

    .line 399
    :cond_3
    new-instance v18, Ljava/security/InvalidKeyException;

    const-string/jumbo v19, "Key is not 32N; 4 <= N <= 10"

    invoke-direct/range {v18 .. v19}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 401
    :cond_4
    add-int/lit8 v5, v4, 0x8

    .line 402
    .local v5, "R":I
    add-int/lit8 v18, v5, 0x1

    const/16 v19, 0x4

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 403
    .local v3, "Ke":[[I
    add-int/lit8 v18, v5, 0x1

    const/16 v19, 0x4

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 404
    .local v2, "Kd":[[I
    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 405
    .local v16, "tk":[I
    new-array v13, v4, [I

    .line 409
    .local v13, "kk":[I
    const/4 v14, 0x0

    .local v14, "r":I
    const/4 v6, 0x0

    .local v6, "i":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    move v15, v14

    .end local v14    # "r":I
    .local v15, "r":I
    :goto_0
    if-lt v15, v4, :cond_5

    .line 415
    const/4 v14, 0x0

    .end local v15    # "r":I
    .restart local v14    # "r":I
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    if-le v14, v5, :cond_6

    .line 531
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v2, v18, v19

    return-object v18

    .line 410
    .end local v6    # "i":I
    .end local v14    # "r":I
    .restart local v7    # "i":I
    .restart local v15    # "r":I
    :cond_5
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "r":I
    .restart local v14    # "r":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v18, p1, v7

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v19, p1, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v19, p1, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v19, p1, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    aput v18, v16, v15

    move v15, v14

    .end local v14    # "r":I
    .restart local v15    # "r":I
    goto :goto_0

    .line 416
    .end local v7    # "i":I
    .end local v15    # "r":I
    .restart local v6    # "i":I
    .restart local v14    # "r":I
    :cond_6
    if-lez v14, :cond_7

    .line 418
    const/16 v18, 0x0

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T0:[I

    const/16 v20, 0x0

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x18

    aget v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T1:[I

    add-int/lit8 v21, v4, -0x1

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T2:[I

    add-int/lit8 v21, v4, -0x2

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T3:[I

    add-int/lit8 v21, v4, -0x3

    aget v21, v16, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v13, v18

    .line 422
    const/16 v18, 0x1

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T0:[I

    const/16 v20, 0x1

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x18

    aget v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T1:[I

    const/16 v21, 0x0

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T2:[I

    add-int/lit8 v21, v4, -0x1

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T3:[I

    add-int/lit8 v21, v4, -0x2

    aget v21, v16, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v13, v18

    .line 426
    const/16 v18, 0x2

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T0:[I

    const/16 v20, 0x2

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x18

    aget v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T1:[I

    const/16 v21, 0x1

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T2:[I

    const/16 v21, 0x0

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T3:[I

    add-int/lit8 v21, v4, -0x1

    aget v21, v16, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v13, v18

    .line 430
    const/16 v18, 0x3

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T0:[I

    const/16 v20, 0x3

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x18

    aget v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T1:[I

    const/16 v21, 0x2

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T2:[I

    const/16 v21, 0x1

    aget v21, v16, v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T3:[I

    const/16 v21, 0x0

    aget v21, v16, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v13, v18

    .line 435
    const/4 v6, 0x4

    :goto_2
    if-lt v6, v4, :cond_9

    .line 442
    const/16 v18, 0x0

    sget-object v19, Lgnu/crypto/cipher/Anubis;->rc:[I

    add-int/lit8 v20, v14, -0x1

    aget v19, v19, v20

    const/16 v20, 0x0

    aget v20, v13, v20

    xor-int v19, v19, v20

    aput v19, v16, v18

    .line 443
    const/4 v6, 0x1

    :goto_3
    if-lt v6, v4, :cond_a

    .line 449
    :cond_7
    add-int/lit8 v18, v4, -0x1

    aget v17, v16, v18

    .line 450
    .local v17, "tt":I
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x18

    aget v9, v18, v19

    .line 451
    .local v9, "k0":I
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v10, v18, v19

    .line 452
    .local v10, "k1":I
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v11, v18, v19

    .line 453
    .local v11, "k2":I
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v12, v18, v19

    .line 455
    .local v12, "k3":I
    add-int/lit8 v8, v4, -0x2

    .local v8, "k":I
    :goto_4
    if-gez v8, :cond_b

    .line 479
    aget-object v18, v3, v14

    const/16 v19, 0x0

    aput v9, v18, v19

    .line 480
    aget-object v18, v3, v14

    const/16 v19, 0x1

    aput v10, v18, v19

    .line 481
    aget-object v18, v3, v14

    const/16 v19, 0x2

    aput v11, v18, v19

    .line 482
    aget-object v18, v3, v14

    const/16 v19, 0x3

    aput v12, v18, v19

    .line 484
    if-eqz v14, :cond_8

    if-ne v14, v5, :cond_c

    .line 485
    :cond_8
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x0

    aput v9, v18, v19

    .line 486
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x1

    aput v10, v18, v19

    .line 487
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x2

    aput v11, v18, v19

    .line 488
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x3

    aput v12, v18, v19

    .line 415
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 436
    .end local v8    # "k":I
    .end local v9    # "k0":I
    .end local v10    # "k1":I
    .end local v11    # "k2":I
    .end local v12    # "k3":I
    .end local v17    # "tt":I
    :cond_9
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T0:[I

    aget v19, v16, v6

    ushr-int/lit8 v19, v19, 0x18

    aget v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T1:[I

    add-int/lit8 v20, v6, -0x1

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T2:[I

    add-int/lit8 v20, v6, -0x2

    aget v20, v16, v20

    ushr-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T3:[I

    add-int/lit8 v20, v6, -0x3

    aget v20, v16, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    xor-int v18, v18, v19

    aput v18, v13, v6

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 444
    :cond_a
    aget v18, v13, v6

    aput v18, v16, v6

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 456
    .restart local v8    # "k":I
    .restart local v9    # "k0":I
    .restart local v10    # "k1":I
    .restart local v11    # "k2":I
    .restart local v12    # "k3":I
    .restart local v17    # "tt":I
    :cond_b
    aget v17, v16, v8

    .line 457
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x18

    aget v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v9, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v9, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v9, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const v20, 0xff00

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    and-int/lit16 v0, v9, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    xor-int v9, v18, v19

    .line 462
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v10, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v10, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v10, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const v20, 0xff00

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    xor-int v10, v18, v19

    .line 467
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    ushr-int/lit8 v19, v17, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v11, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v11, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v11, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const v20, 0xff00

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    and-int/lit16 v0, v11, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    xor-int v11, v18, v19

    .line 472
    sget-object v18, Lgnu/crypto/cipher/Anubis;->T4:[I

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v12, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, -0x1000000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v12, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    ushr-int/lit8 v20, v12, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    const v20, 0xff00

    and-int v19, v19, v20

    xor-int v18, v18, v19

    sget-object v19, Lgnu/crypto/cipher/Anubis;->T5:[I

    and-int/lit16 v0, v12, 0xff

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    xor-int v12, v18, v19

    .line 455
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    .line 490
    :cond_c
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x0

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T0:[I

    sget-object v21, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v22, v9, 0x18

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T1:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v9, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T2:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v9, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T3:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v9, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    aput v20, v18, v19

    .line 494
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x1

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T0:[I

    sget-object v21, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v22, v10, 0x18

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T1:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v10, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T2:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v10, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T3:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v10, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    aput v20, v18, v19

    .line 498
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x2

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T0:[I

    sget-object v21, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v22, v11, 0x18

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T1:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v11, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T2:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v11, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T3:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v11, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    aput v20, v18, v19

    .line 502
    sub-int v18, v5, v14

    aget-object v18, v2, v18

    const/16 v19, 0x3

    sget-object v20, Lgnu/crypto/cipher/Anubis;->T0:[I

    sget-object v21, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v22, v12, 0x18

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T1:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v12, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T2:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    ushr-int/lit8 v23, v12, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Anubis;->T3:[I

    sget-object v22, Lgnu/crypto/cipher/Anubis;->S:[B

    and-int/lit16 v0, v12, 0xff

    move/from16 v23, v0

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget v21, v21, v22

    xor-int v20, v20, v21

    aput v20, v18, v19

    goto/16 :goto_5
.end method

.method public final selfTest()Z
    .locals 3

    .prologue
    .line 553
    sget-object v1, Lgnu/crypto/cipher/Anubis;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 554
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 555
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 556
    sget-object v1, Lgnu/crypto/cipher/Anubis;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Anubis;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Anubis;->testKat([B[B)Z

    move-result v0

    .line 558
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Anubis;->valid:Ljava/lang/Boolean;

    .line 560
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Anubis;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
