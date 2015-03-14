.class public final Lgnu/crypto/cipher/Khazad;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Khazad.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BLOCK_SIZE:I = 0x8

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final R:I = 0x8

.field private static final S:[B

.field private static final Sd:Ljava/lang/String; = "\uba54\u2f74\u53d3\ud24d\u50ac\u8dbf\u7052\u9a4c\uead5\u97d1\u3351\u5ba6\ude48\ua899\udb32\ub7fc\ue39e\u919b\ue2bb\u416e\ua5cb\u6b95\ua1f3\ub102\uccc4\u1d14\uc363\uda5d\u5fdc\u7dcd\u7f5a\u6c5c\uf726\uffed\ue89d\u6f8e\u19a0\uf089\u0f07\uaffb\u0815\u0d04\u0164\udf76\u79dd\u3d16\u3f37\u6d38\ub973\ue935\u5571\u7b8c\u7288\uf62a\u3e5e\u2746\u0c65\u6861\u03c1\u57d6\ud958\ud866\ud73a\uc83c\ufa96\ua798\uecb8\uc7ae\u694b\uaba9\u670a\u47f2\ub522\ue5ee\ube2b\u8112\u831b\u0e23\uf545\u21ce\u492c\uf9e6\ub628\u1782\u1a8b\ufe8a\u09c9\u874e\ue12e\ue4e0\ueb90\ua41e\u8560%\uf4f1\u940b\ue775\uef34\u31d4\ud086\u7ead\ufd29\u303b\u9ff8\uc613\u0605\uc511\u777c\u7a78\u361c\u3959\u1856\ub3b0\u2420\ub292\ua3c0\u4462\u10b4\u8443\u93c2\u4abd\u8f2d\ubc9c\u6a40\ucfa2\u804f\u1fca\uaa42"

.field private static final T0:[I

.field private static final T1:[I

.field private static final T2:[I

.field private static final T3:[I

.field private static final T4:[I

.field private static final T5:[I

.field private static final T6:[I

.field private static final T7:[I

.field private static final debuglevel:I = 0x9

.field private static final rc:[[I

.field private static valid:Ljava/lang/Boolean;


# direct methods
.method private static final constructor <clinit>()V
    .locals 23

    .prologue
    .line 111
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->S:[B

    .line 113
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T0:[I

    .line 114
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T1:[I

    .line 115
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T2:[I

    .line 116
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T3:[I

    .line 117
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T4:[I

    .line 118
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T5:[I

    .line 119
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T6:[I

    .line 120
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Khazad;->T7:[I

    .line 122
    const/16 v19, 0x9

    const/16 v20, 0x2

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    sput-object v19, Lgnu/crypto/cipher/Khazad;->rc:[[I

    .line 130
    const-string/jumbo v19, "00000000000000000000000000000100"

    invoke-static/range {v19 .. v19}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lgnu/crypto/cipher/Khazad;->KAT_KEY:[B

    .line 132
    const-string/jumbo v19, "A0C86A1BBE2CBF4C"

    invoke-static/range {v19 .. v19}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lgnu/crypto/cipher/Khazad;->KAT_CT:[B

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 143
    .local v17, "time":J
    const-wide/16 v2, 0x11d

    .line 147
    .local v2, "ROOT":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v5, v0, :cond_0

    .line 180
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    :goto_1
    const/16 v19, 0x9

    move/from16 v0, v19

    if-lt v5, v0, :cond_5

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    .line 194
    return-void

    .line 148
    .end local v7    # "j":I
    :cond_0
    const-string/jumbo v19, "\uba54\u2f74\u53d3\ud24d\u50ac\u8dbf\u7052\u9a4c\uead5\u97d1\u3351\u5ba6\ude48\ua899\udb32\ub7fc\ue39e\u919b\ue2bb\u416e\ua5cb\u6b95\ua1f3\ub102\uccc4\u1d14\uc363\uda5d\u5fdc\u7dcd\u7f5a\u6c5c\uf726\uffed\ue89d\u6f8e\u19a0\uf089\u0f07\uaffb\u0815\u0d04\u0164\udf76\u79dd\u3d16\u3f37\u6d38\ub973\ue935\u5571\u7b8c\u7288\uf62a\u3e5e\u2746\u0c65\u6861\u03c1\u57d6\ud958\ud866\ud73a\uc83c\ufa96\ua798\uecb8\uc7ae\u694b\uaba9\u670a\u47f2\ub522\ue5ee\ube2b\u8112\u831b\u0e23\uf545\u21ce\u492c\uf9e6\ub628\u1782\u1a8b\ufe8a\u09c9\u874e\ue12e\ue4e0\ueb90\ua41e\u8560%\uf4f1\u940b\ue775\uef34\u31d4\ud086\u7ead\ufd29\u303b\u9ff8\uc613\u0605\uc511\u777c\u7a78\u361c\u3959\u1856\ub3b0\u2420\ub292\ua3c0\u4462\u10b4\u8443\u93c2\u4abd\u8f2d\ubc9c\u6a40\ucfa2\u804f\u1fca\uaa42"

    ushr-int/lit8 v20, v5, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 149
    .local v4, "c":C
    and-int/lit8 v19, v5, 0x1

    if-nez v19, :cond_1

    ushr-int/lit8 v4, v4, 0x8

    .end local v4    # "c":C
    :cond_1
    and-int/lit16 v8, v4, 0xff

    .line 150
    .local v8, "s":I
    sget-object v19, Lgnu/crypto/cipher/Khazad;->S:[B

    int-to-byte v0, v8

    move/from16 v20, v0

    aput-byte v20, v19, v5

    .line 152
    shl-int/lit8 v9, v8, 0x1

    .line 153
    .local v9, "s2":I
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v9, v0, :cond_2

    .line 154
    int-to-long v0, v9

    move-wide/from16 v19, v0

    xor-long v19, v19, v2

    move-wide/from16 v0, v19

    long-to-int v9, v0

    .line 156
    :cond_2
    xor-int v10, v9, v8

    .line 157
    .local v10, "s3":I
    shl-int/lit8 v11, v9, 0x1

    .line 158
    .local v11, "s4":I
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v11, v0, :cond_3

    .line 159
    int-to-long v0, v11

    move-wide/from16 v19, v0

    xor-long v19, v19, v2

    move-wide/from16 v0, v19

    long-to-int v11, v0

    .line 161
    :cond_3
    xor-int v12, v11, v8

    .line 162
    .local v12, "s5":I
    xor-int v13, v11, v9

    .line 163
    .local v13, "s6":I
    xor-int v14, v13, v8

    .line 164
    .local v14, "s7":I
    shl-int/lit8 v15, v11, 0x1

    .line 165
    .local v15, "s8":I
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v15, v0, :cond_4

    .line 166
    int-to-long v0, v15

    move-wide/from16 v19, v0

    xor-long v19, v19, v2

    move-wide/from16 v0, v19

    long-to-int v15, v0

    .line 168
    :cond_4
    xor-int v19, v15, v9

    xor-int v16, v19, v8

    .line 170
    .local v16, "sb":I
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T0:[I

    shl-int/lit8 v20, v8, 0x18

    shl-int/lit8 v21, v10, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v11, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v12

    aput v20, v19, v5

    .line 171
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T1:[I

    shl-int/lit8 v20, v10, 0x18

    shl-int/lit8 v21, v8, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v12, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v11

    aput v20, v19, v5

    .line 172
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T2:[I

    shl-int/lit8 v20, v11, 0x18

    shl-int/lit8 v21, v12, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v8, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v10

    aput v20, v19, v5

    .line 173
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T3:[I

    shl-int/lit8 v20, v12, 0x18

    shl-int/lit8 v21, v11, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v10, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v8

    aput v20, v19, v5

    .line 174
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T4:[I

    shl-int/lit8 v20, v13, 0x18

    shl-int/lit8 v21, v15, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v16, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v14

    aput v20, v19, v5

    .line 175
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T5:[I

    shl-int/lit8 v20, v15, 0x18

    shl-int/lit8 v21, v13, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v14, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v16

    aput v20, v19, v5

    .line 176
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T6:[I

    shl-int/lit8 v20, v16, 0x18

    shl-int/lit8 v21, v14, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v13, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v15

    aput v20, v19, v5

    .line 177
    sget-object v19, Lgnu/crypto/cipher/Khazad;->T7:[I

    shl-int/lit8 v20, v14, 0x18

    shl-int/lit8 v21, v16, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v15, 0x8

    or-int v20, v20, v21

    or-int v20, v20, v13

    aput v20, v19, v5

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 182
    .end local v8    # "s":I
    .end local v9    # "s2":I
    .end local v10    # "s3":I
    .end local v11    # "s4":I
    .end local v12    # "s5":I
    .end local v13    # "s6":I
    .end local v14    # "s7":I
    .end local v15    # "s8":I
    .end local v16    # "sb":I
    .restart local v7    # "j":I
    :cond_5
    sget-object v19, Lgnu/crypto/cipher/Khazad;->rc:[[I

    aget-object v19, v19, v5

    const/16 v20, 0x0

    sget-object v21, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v21, v21, v7

    shl-int/lit8 v21, v21, 0x18

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x10

    or-int v21, v21, v22

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v22, v22, v7

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v19, v20

    .line 186
    sget-object v19, Lgnu/crypto/cipher/Khazad;->rc:[[I

    aget-object v19, v19, v5

    const/16 v20, 0x1

    sget-object v21, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v21, v21, v7

    shl-int/lit8 v21, v21, 0x18

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x10

    or-int v21, v21, v22

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v22, v22, v7

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    sget-object v22, Lgnu/crypto/cipher/Khazad;->S:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v19, v20

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 272
    const-string/jumbo v0, "khazad"

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 273
    return-void
.end method

.method private static final khazad([BI[BI[[I)V
    .locals 12
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "j"    # I
    .param p4, "K"    # [[I

    .prologue
    .line 280
    const/4 v9, 0x0

    aget-object v9, p4, v9

    const/4 v10, 0x0

    aget v6, v9, v10

    .line 281
    .local v6, "k0":I
    const/4 v9, 0x0

    aget-object v9, p4, v9

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 282
    .local v7, "k1":I
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "i":I
    .local v4, "i":I
    aget-byte v9, p0, p1

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 p1, v4, 0x1

    .end local v4    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v4, p1, 0x1

    .end local p1    # "i":I
    .restart local v4    # "i":I
    aget-byte v10, p0, p1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 p1, v4, 0x1

    .end local v4    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    xor-int v0, v9, v6

    .line 286
    .local v0, "a0":I
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "i":I
    .restart local v4    # "i":I
    aget-byte v9, p0, p1

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 p1, v4, 0x1

    .end local v4    # "i":I
    .restart local p1    # "i":I
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v4, p1, 0x1

    .end local p1    # "i":I
    .restart local v4    # "i":I
    aget-byte v10, p0, p1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    xor-int v1, v9, v7

    .line 293
    .local v1, "a1":I
    const/4 v8, 0x1

    .local v8, "r":I
    :goto_0
    const/16 v9, 0x8

    if-lt v8, v9, :cond_0

    .line 321
    const/16 v9, 0x8

    aget-object v9, p4, v9

    const/4 v10, 0x0

    aget v6, v9, v10

    .line 322
    const/16 v9, 0x8

    aget-object v9, p4, v9

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 324
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "j":I
    .local v5, "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v0, 0x18

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v6, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 325
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "j":I
    .restart local p3    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v0, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v6, 0x10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v5

    .line 326
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "j":I
    .restart local v5    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v6, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 327
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "j":I
    .restart local p3    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v10, v0, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, p2, v5

    .line 328
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "j":I
    .restart local v5    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v1, 0x18

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v7, 0x18

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 329
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "j":I
    .restart local p3    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v7, 0x10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v5

    .line 330
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "j":I
    .restart local v5    # "j":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    ushr-int/lit8 v10, v7, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, p3

    .line 331
    sget-object v9, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v10, v1, 0xff

    aget-byte v9, v9, v10

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, p2, v5

    .line 337
    return-void

    .line 294
    .end local v5    # "j":I
    .restart local p3    # "j":I
    :cond_0
    aget-object v9, p4, v8

    const/4 v10, 0x0

    aget v6, v9, v10

    .line 295
    aget-object v9, p4, v8

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 296
    sget-object v9, Lgnu/crypto/cipher/Khazad;->T0:[I

    ushr-int/lit8 v10, v0, 0x18

    aget v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T1:[I

    ushr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T2:[I

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T3:[I

    and-int/lit16 v11, v0, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T4:[I

    ushr-int/lit8 v11, v1, 0x18

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T5:[I

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T6:[I

    ushr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T7:[I

    and-int/lit16 v11, v1, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    xor-int v2, v9, v6

    .line 304
    .local v2, "b0":I
    sget-object v9, Lgnu/crypto/cipher/Khazad;->T0:[I

    ushr-int/lit8 v10, v1, 0x18

    aget v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T1:[I

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T2:[I

    ushr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T3:[I

    and-int/lit16 v11, v1, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T4:[I

    ushr-int/lit8 v11, v0, 0x18

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T5:[I

    ushr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T6:[I

    ushr-int/lit8 v11, v0, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Khazad;->T7:[I

    and-int/lit16 v11, v0, 0xff

    aget v10, v10, v11

    xor-int/2addr v9, v10

    xor-int v3, v9, v7

    .line 312
    .local v3, "b1":I
    move v0, v2

    .line 313
    move v1, v3

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lgnu/crypto/cipher/Khazad;

    invoke-direct {v0}, Lgnu/crypto/cipher/Khazad;-><init>()V

    .line 346
    .local v0, "result":Lgnu/crypto/cipher/Khazad;
    iget v1, p0, Lgnu/crypto/cipher/Khazad;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Khazad;->currentBlockSize:I

    .line 348
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
    .line 493
    const/16 v1, 0x8

    if-eq p6, v1, :cond_0

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 497
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object v0, p5, v1

    check-cast v0, [[I

    .line 498
    .local v0, "K":[[I
    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/Khazad;->khazad([BI[BI[[I)V

    .line 499
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
    .line 484
    const/16 v1, 0x8

    if-eq p6, v1, :cond_0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 488
    :cond_0
    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "k":Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v0, p5, v1

    check-cast v0, [[I

    .line 489
    .local v0, "K":[[I
    invoke-static {p1, p2, p3, p4, v0}, Lgnu/crypto/cipher/Khazad;->khazad([BI[BI[[I)V

    .line 490
    return-void
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 20
    .param p1, "uk"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 378
    const/16 v14, 0x8

    move/from16 v0, p2

    if-eq v0, v14, :cond_0

    .line 379
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 381
    :cond_0
    if-nez p1, :cond_1

    .line 382
    new-instance v14, Ljava/security/InvalidKeyException;

    const-string/jumbo v15, "Empty key"

    invoke-direct {v14, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 384
    :cond_1
    move-object/from16 v0, p1

    array-length v14, v0

    const/16 v15, 0x10

    if-eq v14, v15, :cond_2

    .line 385
    new-instance v14, Ljava/security/InvalidKeyException;

    const-string/jumbo v15, "Key is not 128-bit."

    invoke-direct {v14, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 387
    :cond_2
    const/16 v14, 0x9

    const/4 v15, 0x2

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 388
    .local v2, "Ke":[[I
    const/16 v14, 0x9

    const/4 v15, 0x2

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 393
    .local v1, "Kd":[[I
    const/4 v3, 0x0

    .line 394
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v14, p1, v3

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v15, p1, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    or-int v7, v14, v15

    .line 398
    .local v7, "k20":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v14, p1, v3

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v15, p1, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    or-int v8, v14, v15

    .line 402
    .local v8, "k21":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v14, p1, v3

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v15, p1, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    or-int v5, v14, v15

    .line 406
    .local v5, "k10":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v14, p1, v3

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v15, p1, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v15, p1, v4

    and-int/lit16 v15, v15, 0xff

    or-int v6, v14, v15

    .line 411
    .local v6, "k11":I
    const/4 v11, 0x0

    .local v11, "r":I
    const/4 v3, 0x0

    :goto_0
    const/16 v14, 0x8

    if-le v11, v14, :cond_3

    .line 480
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    return-object v14

    .line 412
    :cond_3
    sget-object v14, Lgnu/crypto/cipher/Khazad;->rc:[[I

    aget-object v14, v14, v11

    const/4 v15, 0x0

    aget v12, v14, v15

    .line 413
    .local v12, "rc0":I
    sget-object v14, Lgnu/crypto/cipher/Khazad;->rc:[[I

    aget-object v14, v14, v11

    const/4 v15, 0x1

    aget v13, v14, v15

    .line 415
    .local v13, "rc1":I
    sget-object v14, Lgnu/crypto/cipher/Khazad;->T0:[I

    ushr-int/lit8 v15, v5, 0x18

    aget v14, v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T1:[I

    ushr-int/lit8 v16, v5, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T2:[I

    ushr-int/lit8 v16, v5, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T3:[I

    and-int/lit16 v0, v5, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T4:[I

    ushr-int/lit8 v16, v6, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T5:[I

    ushr-int/lit8 v16, v6, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T6:[I

    ushr-int/lit8 v16, v6, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T7:[I

    and-int/lit16 v0, v6, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    xor-int/2addr v14, v12

    xor-int v9, v14, v7

    .line 423
    .local v9, "kr0":I
    sget-object v14, Lgnu/crypto/cipher/Khazad;->T0:[I

    ushr-int/lit8 v15, v6, 0x18

    aget v14, v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T1:[I

    ushr-int/lit8 v16, v6, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T2:[I

    ushr-int/lit8 v16, v6, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T3:[I

    and-int/lit16 v0, v6, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T4:[I

    ushr-int/lit8 v16, v5, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T5:[I

    ushr-int/lit8 v16, v5, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T6:[I

    ushr-int/lit8 v16, v5, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    sget-object v15, Lgnu/crypto/cipher/Khazad;->T7:[I

    and-int/lit16 v0, v5, 0xff

    move/from16 v16, v0

    aget v15, v15, v16

    xor-int/2addr v14, v15

    xor-int/2addr v14, v13

    xor-int v10, v14, v8

    .line 432
    .local v10, "kr1":I
    aget-object v14, v2, v11

    const/4 v15, 0x0

    aput v9, v14, v15

    .line 433
    aget-object v14, v2, v11

    const/4 v15, 0x1

    aput v10, v14, v15

    .line 434
    move v7, v5

    .line 435
    move v8, v6

    .line 436
    move v5, v9

    .line 437
    move v6, v10

    .line 439
    if-eqz v11, :cond_4

    const/16 v14, 0x8

    if-ne v11, v14, :cond_5

    .line 440
    :cond_4
    rsub-int/lit8 v14, v11, 0x8

    aget-object v14, v1, v14

    const/4 v15, 0x0

    aput v9, v14, v15

    .line 441
    rsub-int/lit8 v14, v11, 0x8

    aget-object v14, v1, v14

    const/4 v15, 0x1

    aput v10, v14, v15

    .line 411
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 443
    :cond_5
    rsub-int/lit8 v14, v11, 0x8

    aget-object v14, v1, v14

    const/4 v15, 0x0

    sget-object v16, Lgnu/crypto/cipher/Khazad;->T0:[I

    sget-object v17, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v18, v9, 0x18

    aget-byte v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T1:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v9, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T2:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v9, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T3:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v0, v9, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T4:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v10, 0x18

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T5:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v10, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T6:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v10, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T7:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    aput v16, v14, v15

    .line 451
    rsub-int/lit8 v14, v11, 0x8

    aget-object v14, v1, v14

    const/4 v15, 0x1

    sget-object v16, Lgnu/crypto/cipher/Khazad;->T0:[I

    sget-object v17, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v18, v10, 0x18

    aget-byte v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T1:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v10, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T2:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v10, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T3:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T4:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v9, 0x18

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T5:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v9, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T6:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    ushr-int/lit8 v19, v9, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Khazad;->T7:[I

    sget-object v18, Lgnu/crypto/cipher/Khazad;->S:[B

    and-int/lit16 v0, v9, 0xff

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    aput v16, v14, v15

    goto/16 :goto_1
.end method

.method public final selfTest()Z
    .locals 3

    .prologue
    .line 502
    sget-object v1, Lgnu/crypto/cipher/Khazad;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 503
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 504
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 505
    sget-object v1, Lgnu/crypto/cipher/Khazad;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Khazad;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Khazad;->testKat([B[B)Z

    move-result v0

    .line 507
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Khazad;->valid:Ljava/lang/Boolean;

    .line 509
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Khazad;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
