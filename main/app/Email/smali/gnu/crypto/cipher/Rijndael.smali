.class public final Lgnu/crypto/cipher/Rijndael;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Rijndael.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final S:[B

.field private static final SS:Ljava/lang/String; = "\u637c\u777b\uf26b\u6fc5\u3001\u672b\ufed7\uab76\uca82\uc97d\ufa59\u47f0\uadd4\ua2af\u9ca4\u72c0\ub7fd\u9326\u363f\uf7cc\u34a5\ue5f1\u71d8\u3115\u04c7\u23c3\u1896\u059a\u0712\u80e2\ueb27\ub275\u0983\u2c1a\u1b6e\u5aa0\u523b\ud6b3\u29e3\u2f84\u53d1\u00ed\u20fc\ub15b\u6acb\ube39\u4a4c\u58cf\ud0ef\uaafb\u434d\u3385\u45f9\u027f\u503c\u9fa8\u51a3\u408f\u929d\u38f5\ubcb6\uda21\u10ff\uf3d2\ucd0c\u13ec\u5f97\u4417\uc4a7\u7e3d\u645d\u1973\u6081\u4fdc\u222a\u9088\u46ee\ub814\ude5e\u0bdb\ue032\u3a0a\u4906\u245c\uc2d3\uac62\u9195\ue479\ue7c8\u376d\u8dd5\u4ea9\u6c56\uf4ea\u657a\uae08\uba78\u252e\u1ca6\ub4c6\ue8dd\u741f\u4bbd\u8b8a\u703e\ub566\u4803\uf60e\u6135\u57b9\u86c1\u1d9e\ue1f8\u9811\u69d9\u8e94\u9b1e\u87e9\uce55\u28df\u8ca1\u890d\ubfe6\u4268\u4199\u2d0f\ub054\ubb16"

.field private static final Si:[B

.field private static final T1:[I

.field private static final T2:[I

.field private static final T3:[I

.field private static final T4:[I

.field private static final T5:[I

.field private static final T6:[I

.field private static final T7:[I

.field private static final T8:[I

.field private static final U1:[I

.field private static final U2:[I

.field private static final U3:[I

.field private static final U4:[I

.field private static final debuglevel:I = 0x9

.field private static final rcon:[B

.field private static final shifts:[[[I

.field private static valid:Ljava/lang/Boolean;


# direct methods
.method private static final constructor <clinit>()V
    .locals 24

    .prologue
    .line 107
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->S:[B

    .line 108
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->Si:[B

    .line 109
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T1:[I

    .line 110
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T2:[I

    .line 111
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T3:[I

    .line 112
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T4:[I

    .line 113
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T5:[I

    .line 114
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T6:[I

    .line 115
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T7:[I

    .line 116
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->T8:[I

    .line 117
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->U1:[I

    .line 118
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->U2:[I

    .line 119
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->U3:[I

    .line 120
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->U4:[I

    .line 121
    const/16 v19, 0x1e

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->rcon:[B

    .line 123
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [[[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_1

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    aput-object v23, v21, v22

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_4

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_5

    aput-object v23, v21, v22

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_6

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_7

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_8

    aput-object v23, v21, v22

    aput-object v21, v19, v20

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    .line 135
    const-string/jumbo v19, "0000000000000000000000010000000000000000000000000000000000000000"

    invoke-static/range {v19 .. v19}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->KAT_KEY:[B

    .line 137
    const-string/jumbo v19, "E44429474D6FC3084EB2A6B8B46AF754"

    invoke-static/range {v19 .. v19}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lgnu/crypto/cipher/Rijndael;->KAT_CT:[B

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 148
    .local v17, "time":J
    const/16 v1, 0x11b

    .line 149
    .local v1, "ROOT":I
    const/4 v11, 0x0

    .line 154
    .local v11, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v3, v0, :cond_0

    .line 194
    const/4 v12, 0x1

    .line 195
    .local v12, "r":I
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->rcon:[B

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput-byte v21, v19, v20

    .line 196
    const/4 v3, 0x1

    :goto_1
    const/16 v19, 0x1e

    move/from16 v0, v19

    if-lt v3, v0, :cond_6

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    .line 206
    return-void

    .line 155
    .end local v12    # "r":I
    :cond_0
    const-string/jumbo v19, "\u637c\u777b\uf26b\u6fc5\u3001\u672b\ufed7\uab76\uca82\uc97d\ufa59\u47f0\uadd4\ua2af\u9ca4\u72c0\ub7fd\u9326\u363f\uf7cc\u34a5\ue5f1\u71d8\u3115\u04c7\u23c3\u1896\u059a\u0712\u80e2\ueb27\ub275\u0983\u2c1a\u1b6e\u5aa0\u523b\ud6b3\u29e3\u2f84\u53d1\u00ed\u20fc\ub15b\u6acb\ube39\u4a4c\u58cf\ud0ef\uaafb\u434d\u3385\u45f9\u027f\u503c\u9fa8\u51a3\u408f\u929d\u38f5\ubcb6\uda21\u10ff\uf3d2\ucd0c\u13ec\u5f97\u4417\uc4a7\u7e3d\u645d\u1973\u6081\u4fdc\u222a\u9088\u46ee\ub814\ude5e\u0bdb\ue032\u3a0a\u4906\u245c\uc2d3\uac62\u9195\ue479\ue7c8\u376d\u8dd5\u4ea9\u6c56\uf4ea\u657a\uae08\uba78\u252e\u1ca6\ub4c6\ue8dd\u741f\u4bbd\u8b8a\u703e\ub566\u4803\uf60e\u6135\u57b9\u86c1\u1d9e\ue1f8\u9811\u69d9\u8e94\u9b1e\u87e9\uce55\u28df\u8ca1\u890d\ubfe6\u4268\u4199\u2d0f\ub054\ubb16"

    ushr-int/lit8 v20, v3, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 156
    .local v2, "c":C
    sget-object v20, Lgnu/crypto/cipher/Rijndael;->S:[B

    and-int/lit8 v19, v3, 0x1

    if-nez v19, :cond_5

    ushr-int/lit8 v19, v2, 0x8

    :goto_2
    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v20, v3

    .line 157
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->S:[B

    aget-byte v19, v19, v3

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 158
    .local v13, "s":I
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->Si:[B

    int-to-byte v0, v3

    move/from16 v20, v0

    aput-byte v20, v19, v13

    .line 159
    shl-int/lit8 v14, v13, 0x1

    .line 160
    .local v14, "s2":I
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v14, v0, :cond_1

    .line 161
    xor-int/2addr v14, v1

    .line 163
    :cond_1
    xor-int v15, v14, v13

    .line 164
    .local v15, "s3":I
    shl-int/lit8 v4, v3, 0x1

    .line 165
    .local v4, "i2":I
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v4, v0, :cond_2

    .line 166
    xor-int/2addr v4, v1

    .line 168
    :cond_2
    shl-int/lit8 v5, v4, 0x1

    .line 169
    .local v5, "i4":I
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    .line 170
    xor-int/2addr v5, v1

    .line 172
    :cond_3
    shl-int/lit8 v6, v5, 0x1

    .line 173
    .local v6, "i8":I
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    .line 174
    xor-int/2addr v6, v1

    .line 176
    :cond_4
    xor-int v7, v6, v3

    .line 177
    .local v7, "i9":I
    xor-int v8, v7, v4

    .line 178
    .local v8, "ib":I
    xor-int v9, v7, v5

    .line 179
    .local v9, "id":I
    xor-int v19, v6, v5

    xor-int v10, v19, v4

    .line 181
    .local v10, "ie":I
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T1:[I

    shl-int/lit8 v20, v14, 0x18

    shl-int/lit8 v21, v13, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v13, 0x8

    or-int v20, v20, v21

    or-int v16, v20, v15

    .local v16, "t":I
    aput v16, v19, v3

    .line 182
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T2:[I

    ushr-int/lit8 v20, v16, 0x8

    shl-int/lit8 v21, v16, 0x18

    or-int v20, v20, v21

    aput v20, v19, v3

    .line 183
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T3:[I

    ushr-int/lit8 v20, v16, 0x10

    shl-int/lit8 v21, v16, 0x10

    or-int v20, v20, v21

    aput v20, v19, v3

    .line 184
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T4:[I

    ushr-int/lit8 v20, v16, 0x18

    shl-int/lit8 v21, v16, 0x8

    or-int v20, v20, v21

    aput v20, v19, v3

    .line 186
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T5:[I

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U1:[I

    shl-int/lit8 v21, v10, 0x18

    shl-int/lit8 v22, v7, 0x10

    or-int v21, v21, v22

    shl-int/lit8 v22, v9, 0x8

    or-int v21, v21, v22

    or-int v16, v21, v8

    aput v16, v20, v3

    aput v16, v19, v13

    .line 187
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T6:[I

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U2:[I

    ushr-int/lit8 v21, v16, 0x8

    shl-int/lit8 v22, v16, 0x18

    or-int v21, v21, v22

    aput v21, v20, v3

    aput v21, v19, v13

    .line 188
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T7:[I

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U3:[I

    ushr-int/lit8 v21, v16, 0x10

    shl-int/lit8 v22, v16, 0x10

    or-int v21, v21, v22

    aput v21, v20, v3

    aput v21, v19, v13

    .line 189
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->T8:[I

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U4:[I

    ushr-int/lit8 v21, v16, 0x18

    shl-int/lit8 v22, v16, 0x8

    or-int v21, v21, v22

    aput v21, v20, v3

    aput v21, v19, v13

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 156
    .end local v4    # "i2":I
    .end local v5    # "i4":I
    .end local v6    # "i8":I
    .end local v7    # "i9":I
    .end local v8    # "ib":I
    .end local v9    # "id":I
    .end local v10    # "ie":I
    .end local v13    # "s":I
    .end local v14    # "s2":I
    .end local v15    # "s3":I
    .end local v16    # "t":I
    :cond_5
    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    goto/16 :goto_2

    .line 197
    .end local v2    # "c":C
    .restart local v12    # "r":I
    :cond_6
    shl-int/lit8 v12, v12, 0x1

    .line 198
    const/16 v19, 0x100

    move/from16 v0, v19

    if-lt v12, v0, :cond_7

    .line 199
    xor-int/2addr v12, v1

    .line 201
    :cond_7
    sget-object v19, Lgnu/crypto/cipher/Rijndael;->rcon:[B

    int-to-byte v0, v12

    move/from16 v20, v0

    aput-byte v20, v19, v3

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 123
    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 345
    const-string/jumbo v0, "rijndael"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 346
    return-void
.end method

.method private static final aesDecrypt([BI[BILjava/lang/Object;)V
    .locals 19
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "j"    # I
    .param p4, "key"    # Ljava/lang/Object;

    .prologue
    .line 559
    check-cast p4, [Ljava/lang/Object;

    .end local p4    # "key":Ljava/lang/Object;
    const/16 v16, 0x1

    aget-object v1, p4, v16

    check-cast v1, [[I

    .line 560
    .local v1, "Kd":[[I
    array-length v0, v1

    move/from16 v16, v0

    add-int/lit8 v3, v16, -0x1

    .line 561
    .local v3, "ROUNDS":I
    const/16 v16, 0x0

    aget-object v2, v1, v16

    .line 564
    .local v2, "Kdr":[I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .local v8, "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x0

    aget v17, v2, v17

    xor-int v11, v16, v17

    .line 568
    .local v11, "t0":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x1

    aget v17, v2, v17

    xor-int v12, v16, v17

    .line 572
    .local v12, "t1":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x2

    aget v17, v2, v17

    xor-int v13, v16, v17

    .line 576
    .local v13, "t2":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x3

    aget v17, v2, v17

    xor-int v14, v16, v17

    .line 582
    .local v14, "t3":I
    const/4 v10, 0x1

    .local v10, "r":I
    :goto_0
    if-lt v10, v3, :cond_0

    .line 612
    aget-object v2, v1, v3

    .line 613
    const/16 v16, 0x0

    aget v15, v2, v16

    .line 614
    .local v15, "tt":I
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .local v9, "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v11, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 615
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v14, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 616
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v13, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 617
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    and-int/lit16 v0, v12, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 618
    const/16 v16, 0x1

    aget v15, v2, v16

    .line 619
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v12, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 620
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v11, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 621
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v14, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 622
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    and-int/lit16 v0, v13, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 623
    const/16 v16, 0x2

    aget v15, v2, v16

    .line 624
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v13, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 625
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v12, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 626
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v11, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 627
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    and-int/lit16 v0, v14, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 628
    const/16 v16, 0x3

    aget v15, v2, v16

    .line 629
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v14, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 630
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v13, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 631
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    ushr-int/lit8 v17, v12, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 632
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->Si:[B

    and-int/lit16 v0, v11, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 638
    return-void

    .line 583
    .end local v15    # "tt":I
    :cond_0
    aget-object v2, v1, v10

    .line 584
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T5:[I

    ushr-int/lit8 v17, v11, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T6:[I

    ushr-int/lit8 v18, v14, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T7:[I

    ushr-int/lit8 v18, v13, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T8:[I

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x0

    aget v17, v2, v17

    xor-int v4, v16, v17

    .line 588
    .local v4, "a0":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T5:[I

    ushr-int/lit8 v17, v12, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T6:[I

    ushr-int/lit8 v18, v11, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T7:[I

    ushr-int/lit8 v18, v14, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T8:[I

    and-int/lit16 v0, v13, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x1

    aget v17, v2, v17

    xor-int v5, v16, v17

    .line 592
    .local v5, "a1":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T5:[I

    ushr-int/lit8 v17, v13, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T6:[I

    ushr-int/lit8 v18, v12, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T7:[I

    ushr-int/lit8 v18, v11, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T8:[I

    and-int/lit16 v0, v14, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x2

    aget v17, v2, v17

    xor-int v6, v16, v17

    .line 596
    .local v6, "a2":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T5:[I

    ushr-int/lit8 v17, v14, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T6:[I

    ushr-int/lit8 v18, v13, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T7:[I

    ushr-int/lit8 v18, v12, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T8:[I

    and-int/lit16 v0, v11, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x3

    aget v17, v2, v17

    xor-int v7, v16, v17

    .line 600
    .local v7, "a3":I
    move v11, v4

    .line 601
    move v12, v5

    .line 602
    move v13, v6

    .line 603
    move v14, v7

    .line 582
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method private static final aesEncrypt([BI[BILjava/lang/Object;)V
    .locals 19
    .param p0, "in"    # [B
    .param p1, "i"    # I
    .param p2, "out"    # [B
    .param p3, "j"    # I
    .param p4, "key"    # Ljava/lang/Object;

    .prologue
    .line 476
    check-cast p4, [Ljava/lang/Object;

    .end local p4    # "key":Ljava/lang/Object;
    const/16 v16, 0x0

    aget-object v1, p4, v16

    check-cast v1, [[I

    .line 477
    .local v1, "Ke":[[I
    array-length v0, v1

    move/from16 v16, v0

    add-int/lit8 v3, v16, -0x1

    .line 478
    .local v3, "ROUNDS":I
    const/16 v16, 0x0

    aget-object v2, v1, v16

    .line 481
    .local v2, "Ker":[I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .local v8, "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x0

    aget v17, v2, v17

    xor-int v11, v16, v17

    .line 485
    .local v11, "t0":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x1

    aget v17, v2, v17

    xor-int v12, v16, v17

    .line 489
    .local v12, "t1":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x2

    aget v17, v2, v17

    xor-int v13, v16, v17

    .line 493
    .local v13, "t2":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v16, p0, p1

    shl-int/lit8 v16, v16, 0x18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "i":I
    .restart local v8    # "i":I
    aget-byte v17, p0, p1

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "i":I
    .restart local p1    # "i":I
    aget-byte v17, p0, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const/16 v17, 0x3

    aget v17, v2, v17

    xor-int v14, v16, v17

    .line 499
    .local v14, "t3":I
    const/4 v10, 0x1

    .local v10, "r":I
    :goto_0
    if-lt v10, v3, :cond_0

    .line 529
    aget-object v2, v1, v3

    .line 530
    const/16 v16, 0x0

    aget v15, v2, v16

    .line 531
    .local v15, "tt":I
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .local v9, "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v11, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 532
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v12, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 533
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v13, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 534
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    and-int/lit16 v0, v14, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 535
    const/16 v16, 0x1

    aget v15, v2, v16

    .line 536
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v12, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 537
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v13, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 538
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v14, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 539
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    and-int/lit16 v0, v11, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 540
    const/16 v16, 0x2

    aget v15, v2, v16

    .line 541
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v13, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 542
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v14, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 543
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v11, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 544
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    and-int/lit16 v0, v12, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 545
    const/16 v16, 0x3

    aget v15, v2, v16

    .line 546
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v14, 0x18

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x18

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 547
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v11, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x10

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 548
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "j":I
    .restart local v9    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v17, v12, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    ushr-int/lit8 v17, v15, 0x8

    xor-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, p3

    .line 549
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "j":I
    .restart local p3    # "j":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->S:[B

    and-int/lit16 v0, v13, 0xff

    move/from16 v17, v0

    aget-byte v16, v16, v17

    xor-int v16, v16, v15

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, p2, v9

    .line 555
    return-void

    .line 500
    .end local v15    # "tt":I
    :cond_0
    aget-object v2, v1, v10

    .line 501
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T1:[I

    ushr-int/lit8 v17, v11, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T2:[I

    ushr-int/lit8 v18, v12, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T3:[I

    ushr-int/lit8 v18, v13, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T4:[I

    and-int/lit16 v0, v14, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x0

    aget v17, v2, v17

    xor-int v4, v16, v17

    .line 505
    .local v4, "a0":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T1:[I

    ushr-int/lit8 v17, v12, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T2:[I

    ushr-int/lit8 v18, v13, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T3:[I

    ushr-int/lit8 v18, v14, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T4:[I

    and-int/lit16 v0, v11, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x1

    aget v17, v2, v17

    xor-int v5, v16, v17

    .line 509
    .local v5, "a1":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T1:[I

    ushr-int/lit8 v17, v13, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T2:[I

    ushr-int/lit8 v18, v14, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T3:[I

    ushr-int/lit8 v18, v11, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T4:[I

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x2

    aget v17, v2, v17

    xor-int v6, v16, v17

    .line 513
    .local v6, "a2":I
    sget-object v16, Lgnu/crypto/cipher/Rijndael;->T1:[I

    ushr-int/lit8 v17, v14, 0x18

    aget v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T2:[I

    ushr-int/lit8 v18, v11, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T3:[I

    ushr-int/lit8 v18, v12, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T4:[I

    and-int/lit16 v0, v13, 0xff

    move/from16 v18, v0

    aget v17, v17, v18

    xor-int v16, v16, v17

    const/16 v17, 0x3

    aget v17, v2, v17

    xor-int v7, v16, v17

    .line 517
    .local v7, "a3":I
    move v11, v4

    .line 518
    move v12, v5

    .line 519
    move v13, v6

    .line 520
    move v14, v7

    .line 499
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method public static final getRounds(II)I
    .locals 3
    .param p0, "ks"    # I
    .param p1, "bs"    # I

    .prologue
    const/16 v0, 0xc

    const/16 v1, 0xe

    .line 360
    sparse-switch p0, :sswitch_data_0

    move v0, v1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 362
    :sswitch_0
    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 364
    :sswitch_1
    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method private static final rijndaelDecrypt([BI[BILjava/lang/Object;I)V
    .locals 20
    .param p0, "in"    # [B
    .param p1, "inOffset"    # I
    .param p2, "out"    # [B
    .param p3, "outOffset"    # I
    .param p4, "sessionKey"    # Ljava/lang/Object;
    .param p5, "bs"    # I

    .prologue
    .line 425
    move-object/from16 v14, p4

    check-cast v14, [Ljava/lang/Object;

    .line 426
    .local v14, "sKey":[Ljava/lang/Object;
    const/16 v17, 0x1

    aget-object v3, v14, v17

    check-cast v3, [[I

    .line 428
    .local v3, "Kd":[[I
    div-int/lit8 v2, p5, 0x4

    .line 429
    .local v2, "BC":I
    array-length v0, v3

    move/from16 v17, v0

    add-int/lit8 v4, v17, -0x1

    .line 430
    .local v4, "ROUNDS":I
    const/4 v5, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    const/16 v17, 0x1

    :cond_0
    rsub-int/lit8 v5, v17, 0x2

    .line 431
    .local v5, "SC":I
    :cond_1
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v11, v17, v18

    .line 432
    .local v11, "s1":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 433
    .local v12, "s2":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v13, v17, v18

    .line 434
    .local v13, "s3":I
    new-array v6, v2, [I

    .line 435
    .local v6, "a":[I
    new-array v15, v2, [I

    .line 438
    .local v15, "t":[I
    const/4 v7, 0x0

    .local v7, "i":I
    move/from16 v8, p1

    .end local p1    # "inOffset":I
    .local v8, "inOffset":I
    :goto_0
    if-lt v7, v2, :cond_2

    .line 445
    const/4 v10, 0x1

    .local v10, "r":I
    :goto_1
    if-lt v10, v4, :cond_3

    .line 460
    const/4 v7, 0x0

    move/from16 v9, p3

    .end local p3    # "outOffset":I
    .local v9, "outOffset":I
    :goto_2
    if-lt v7, v2, :cond_5

    .line 472
    return-void

    .line 439
    .end local v9    # "outOffset":I
    .end local v10    # "r":I
    .restart local p3    # "outOffset":I
    :cond_2
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "inOffset":I
    .restart local p1    # "inOffset":I
    aget-byte v17, p0, v8

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "inOffset":I
    .restart local v8    # "inOffset":I
    aget-byte v18, p0, p1

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "inOffset":I
    .restart local p1    # "inOffset":I
    aget-byte v18, p0, v8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "inOffset":I
    .restart local v8    # "inOffset":I
    aget-byte v18, p0, p1

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v17, v17, v18

    const/16 v18, 0x0

    aget-object v18, v3, v18

    aget v18, v18, v7

    xor-int v17, v17, v18

    aput v17, v15, v7

    .line 438
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 446
    .restart local v10    # "r":I
    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v2, :cond_4

    .line 453
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 447
    :cond_4
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T5:[I

    aget v18, v15, v7

    ushr-int/lit8 v18, v18, 0x18

    aget v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T6:[I

    add-int v19, v7, v11

    rem-int v19, v19, v2

    aget v19, v15, v19

    ushr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T7:[I

    add-int v19, v7, v12

    rem-int v19, v19, v2

    aget v19, v15, v19

    ushr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T8:[I

    add-int v19, v7, v13

    rem-int v19, v19, v2

    aget v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    aget-object v18, v3, v10

    aget v18, v18, v7

    xor-int v17, v17, v18

    aput v17, v6, v7

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 461
    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    :cond_5
    aget-object v17, v3, v4

    aget v16, v17, v7

    .line 462
    .local v16, "tt":I
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "outOffset":I
    .restart local p3    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->Si:[B

    aget v18, v15, v7

    ushr-int/lit8 v18, v18, 0x18

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x18

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, v9

    .line 463
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->Si:[B

    add-int v18, v7, v11

    rem-int v18, v18, v2

    aget v18, v15, v18

    ushr-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x10

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, p3

    .line 464
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "outOffset":I
    .restart local p3    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->Si:[B

    add-int v18, v7, v12

    rem-int v18, v18, v2

    aget v18, v15, v18

    ushr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x8

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, v9

    .line 465
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->Si:[B

    add-int v18, v7, v13

    rem-int v18, v18, v2

    aget v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    xor-int v17, v17, v16

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, p3

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method private static final rijndaelEncrypt([BI[BILjava/lang/Object;I)V
    .locals 20
    .param p0, "in"    # [B
    .param p1, "inOffset"    # I
    .param p2, "out"    # [B
    .param p3, "outOffset"    # I
    .param p4, "sessionKey"    # Ljava/lang/Object;
    .param p5, "bs"    # I

    .prologue
    .line 373
    move-object/from16 v14, p4

    check-cast v14, [Ljava/lang/Object;

    .line 374
    .local v14, "sKey":[Ljava/lang/Object;
    const/16 v17, 0x0

    aget-object v3, v14, v17

    check-cast v3, [[I

    .line 376
    .local v3, "Ke":[[I
    div-int/lit8 v2, p5, 0x4

    .line 377
    .local v2, "BC":I
    array-length v0, v3

    move/from16 v17, v0

    add-int/lit8 v4, v17, -0x1

    .line 378
    .local v4, "ROUNDS":I
    const/4 v5, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    const/16 v17, 0x1

    :cond_0
    rsub-int/lit8 v5, v17, 0x2

    .line 379
    .local v5, "SC":I
    :cond_1
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v11, v17, v18

    .line 380
    .local v11, "s1":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v12, v17, v18

    .line 381
    .local v12, "s2":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->shifts:[[[I

    aget-object v17, v17, v5

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget v13, v17, v18

    .line 382
    .local v13, "s3":I
    new-array v6, v2, [I

    .line 383
    .local v6, "a":[I
    new-array v15, v2, [I

    .line 386
    .local v15, "t":[I
    const/4 v7, 0x0

    .local v7, "i":I
    move/from16 v8, p1

    .end local p1    # "inOffset":I
    .local v8, "inOffset":I
    :goto_0
    if-lt v7, v2, :cond_2

    .line 393
    const/4 v10, 0x1

    .local v10, "r":I
    :goto_1
    if-lt v10, v4, :cond_3

    .line 408
    const/4 v7, 0x0

    move/from16 v9, p3

    .end local p3    # "outOffset":I
    .local v9, "outOffset":I
    :goto_2
    if-lt v7, v2, :cond_5

    .line 420
    return-void

    .line 387
    .end local v9    # "outOffset":I
    .end local v10    # "r":I
    .restart local p3    # "outOffset":I
    :cond_2
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "inOffset":I
    .restart local p1    # "inOffset":I
    aget-byte v17, p0, v8

    shl-int/lit8 v17, v17, 0x18

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "inOffset":I
    .restart local v8    # "inOffset":I
    aget-byte v18, p0, p1

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    add-int/lit8 p1, v8, 0x1

    .end local v8    # "inOffset":I
    .restart local p1    # "inOffset":I
    aget-byte v18, p0, v8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v8, p1, 0x1

    .end local p1    # "inOffset":I
    .restart local v8    # "inOffset":I
    aget-byte v18, p0, p1

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v17, v17, v18

    const/16 v18, 0x0

    aget-object v18, v3, v18

    aget v18, v18, v7

    xor-int v17, v17, v18

    aput v17, v15, v7

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 394
    .restart local v10    # "r":I
    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v2, :cond_4

    .line 401
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 395
    :cond_4
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->T1:[I

    aget v18, v15, v7

    ushr-int/lit8 v18, v18, 0x18

    aget v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T2:[I

    add-int v19, v7, v11

    rem-int v19, v19, v2

    aget v19, v15, v19

    ushr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T3:[I

    add-int v19, v7, v12

    rem-int v19, v19, v2

    aget v19, v15, v19

    ushr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    sget-object v18, Lgnu/crypto/cipher/Rijndael;->T4:[I

    add-int v19, v7, v13

    rem-int v19, v19, v2

    aget v19, v15, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    xor-int v17, v17, v18

    aget-object v18, v3, v10

    aget v18, v18, v7

    xor-int v17, v17, v18

    aput v17, v6, v7

    .line 394
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 409
    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    :cond_5
    aget-object v17, v3, v4

    aget v16, v17, v7

    .line 410
    .local v16, "tt":I
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "outOffset":I
    .restart local p3    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->S:[B

    aget v18, v15, v7

    ushr-int/lit8 v18, v18, 0x18

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x18

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, v9

    .line 411
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->S:[B

    add-int v18, v7, v11

    rem-int v18, v18, v2

    aget v18, v15, v18

    ushr-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x10

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, p3

    .line 412
    add-int/lit8 p3, v9, 0x1

    .end local v9    # "outOffset":I
    .restart local p3    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->S:[B

    add-int v18, v7, v12

    rem-int v18, v18, v2

    aget v18, v15, v18

    ushr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    ushr-int/lit8 v18, v16, 0x8

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, v9

    .line 413
    add-int/lit8 v9, p3, 0x1

    .end local p3    # "outOffset":I
    .restart local v9    # "outOffset":I
    sget-object v17, Lgnu/crypto/cipher/Rijndael;->S:[B

    add-int v18, v7, v13

    rem-int v18, v18, v2

    aget v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-byte v17, v17, v18

    xor-int v17, v17, v16

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, p2, p3

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lgnu/crypto/cipher/Rijndael;

    invoke-direct {v0}, Lgnu/crypto/cipher/Rijndael;-><init>()V

    .line 647
    .local v0, "result":Lgnu/crypto/cipher/Rijndael;
    iget v1, p0, Lgnu/crypto/cipher/Rijndael;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Rijndael;->currentBlockSize:I

    .line 649
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
    const/16 v1, 0x10

    .line 773
    if-eq p6, v1, :cond_0

    const/16 v0, 0x18

    if-eq p6, v0, :cond_0

    const/16 v0, 0x20

    if-eq p6, v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 777
    :cond_0
    if-ne p6, v1, :cond_1

    .line 778
    invoke-static {p1, p2, p3, p4, p5}, Lgnu/crypto/cipher/Rijndael;->aesDecrypt([BI[BILjava/lang/Object;)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-static/range {p1 .. p6}, Lgnu/crypto/cipher/Rijndael;->rijndaelDecrypt([BI[BILjava/lang/Object;I)V

    goto :goto_0
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
    const/16 v1, 0x10

    .line 761
    if-eq p6, v1, :cond_0

    const/16 v0, 0x18

    if-eq p6, v0, :cond_0

    const/16 v0, 0x20

    if-eq p6, v0, :cond_0

    .line 762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 765
    :cond_0
    if-ne p6, v1, :cond_1

    .line 766
    invoke-static {p1, p2, p3, p4, p5}, Lgnu/crypto/cipher/Rijndael;->aesEncrypt([BI[BILjava/lang/Object;)V

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-static/range {p1 .. p6}, Lgnu/crypto/cipher/Rijndael;->rijndaelEncrypt([BI[BILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 23
    .param p1, "k"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 683
    if-nez p1, :cond_0

    .line 684
    new-instance v18, Ljava/security/InvalidKeyException;

    const-string/jumbo v19, "Empty key"

    invoke-direct/range {v18 .. v19}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 686
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 687
    new-instance v18, Ljava/security/InvalidKeyException;

    const-string/jumbo v19, "Incorrect key length"

    invoke-direct/range {v18 .. v19}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 689
    :cond_1
    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x18

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x20

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 690
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 693
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lgnu/crypto/cipher/Rijndael;->getRounds(II)I

    move-result v6

    .line 694
    .local v6, "ROUNDS":I
    div-int/lit8 v2, p2, 0x4

    .line 695
    .local v2, "BC":I
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    filled-new-array {v0, v2}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 696
    .local v5, "Ke":[[I
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    filled-new-array {v0, v2}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 697
    .local v4, "Kd":[[I
    add-int/lit8 v18, v6, 0x1

    mul-int v7, v18, v2

    .line 698
    .local v7, "ROUND_KEY_COUNT":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    div-int/lit8 v3, v18, 0x4

    .line 699
    .local v3, "KC":I
    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 703
    .local v16, "tk":[I
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    move v11, v10

    .end local v10    # "j":I
    .local v11, "j":I
    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-lt v9, v3, :cond_4

    .line 710
    const/4 v15, 0x0

    .line 711
    .local v15, "t":I
    const/4 v10, 0x0

    .end local v11    # "j":I
    .restart local v10    # "j":I
    :goto_1
    if-ge v10, v3, :cond_3

    if-lt v15, v7, :cond_5

    .line 715
    :cond_3
    const/4 v13, 0x0

    .local v13, "rconpointer":I
    move v14, v13

    .end local v13    # "rconpointer":I
    .local v14, "rconpointer":I
    move v8, v9

    .line 716
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :goto_2
    if-lt v15, v7, :cond_6

    .line 747
    const/4 v12, 0x1

    .local v12, "r":I
    :goto_3
    if-lt v12, v6, :cond_d

    .line 757
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    return-object v18

    .line 704
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v12    # "r":I
    .end local v14    # "rconpointer":I
    .end local v15    # "t":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    :cond_4
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-byte v18, p1, v11

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-byte v19, p1, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget-byte v19, p1, v11

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget-byte v19, p1, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    aput v18, v16, v9

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 712
    .end local v11    # "j":I
    .restart local v10    # "j":I
    .restart local v15    # "t":I
    :cond_5
    div-int v18, v15, v2

    aget-object v18, v5, v18

    rem-int v19, v15, v2

    aget v20, v16, v10

    aput v20, v18, v19

    .line 713
    div-int v18, v15, v2

    sub-int v18, v6, v18

    aget-object v18, v4, v18

    rem-int v19, v15, v2

    aget v20, v16, v10

    aput v20, v18, v19

    .line 711
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 718
    .end local v9    # "i":I
    .restart local v8    # "i":I
    .restart local v14    # "rconpointer":I
    :cond_6
    add-int/lit8 v18, v3, -0x1

    aget v17, v16, v18

    .line 719
    .local v17, "tt":I
    const/16 v18, 0x0

    aget v19, v16, v18

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v21, v17, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v22, v17, 0x8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v22, v17, 0x18

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->rcon:[B

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "rconpointer":I
    .restart local v13    # "rconpointer":I
    aget-byte v21, v21, v14

    shl-int/lit8 v21, v21, 0x18

    xor-int v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v16, v18

    .line 724
    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v3, v0, :cond_9

    .line 725
    const/4 v8, 0x1

    const/4 v10, 0x0

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :goto_4
    if-lt v9, v3, :cond_8

    move v10, v11

    .end local v11    # "j":I
    .restart local v10    # "j":I
    move v8, v9

    .line 742
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :goto_5
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v3, :cond_7

    if-lt v15, v7, :cond_c

    :cond_7
    move v14, v13

    .end local v13    # "rconpointer":I
    .restart local v14    # "rconpointer":I
    goto/16 :goto_2

    .line 726
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v14    # "rconpointer":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v13    # "rconpointer":I
    :cond_8
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget v18, v16, v9

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget v19, v16, v11

    xor-int v18, v18, v19

    aput v18, v16, v9

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    .line 729
    .end local v9    # "i":I
    .end local v11    # "j":I
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_9
    const/4 v8, 0x1

    const/4 v10, 0x0

    :goto_7
    div-int/lit8 v18, v3, 0x2

    move/from16 v0, v18

    if-lt v8, v0, :cond_a

    .line 732
    div-int/lit8 v18, v3, 0x2

    add-int/lit8 v18, v18, -0x1

    aget v17, v16, v18

    .line 733
    div-int/lit8 v18, v3, 0x2

    aget v19, v16, v18

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->S:[B

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget-byte v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v22, v17, 0x8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v22, v17, 0x10

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    xor-int v20, v20, v21

    sget-object v21, Lgnu/crypto/cipher/Rijndael;->S:[B

    ushr-int/lit8 v22, v17, 0x18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    aget-byte v21, v21, v22

    shl-int/lit8 v21, v21, 0x18

    xor-int v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v16, v18

    .line 737
    div-int/lit8 v10, v3, 0x2

    add-int/lit8 v8, v10, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :goto_8
    if-lt v9, v3, :cond_b

    move v10, v11

    .end local v11    # "j":I
    .restart local v10    # "j":I
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_5

    .line 730
    :cond_a
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aget v18, v16, v8

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "j":I
    .restart local v11    # "j":I
    aget v19, v16, v10

    xor-int v18, v18, v19

    aput v18, v16, v8

    move v10, v11

    .end local v11    # "j":I
    .restart local v10    # "j":I
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_7

    .line 738
    .end local v8    # "i":I
    .end local v10    # "j":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    :cond_b
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget v18, v16, v9

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    aget v19, v16, v11

    xor-int v18, v18, v19

    aput v18, v16, v9

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_8

    .line 743
    .end local v9    # "i":I
    .end local v11    # "j":I
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_c
    div-int v18, v15, v2

    aget-object v18, v5, v18

    rem-int v19, v15, v2

    aget v20, v16, v10

    aput v20, v18, v19

    .line 744
    div-int v18, v15, v2

    sub-int v18, v6, v18

    aget-object v18, v4, v18

    rem-int v19, v15, v2

    aget v20, v16, v10

    aput v20, v18, v19

    .line 742
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 748
    .end local v13    # "rconpointer":I
    .end local v17    # "tt":I
    .restart local v12    # "r":I
    .restart local v14    # "rconpointer":I
    :cond_d
    const/4 v10, 0x0

    :goto_9
    if-lt v10, v2, :cond_e

    .line 747
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 749
    :cond_e
    aget-object v18, v4, v12

    aget v17, v18, v10

    .line 750
    .restart local v17    # "tt":I
    aget-object v18, v4, v12

    sget-object v19, Lgnu/crypto/cipher/Rijndael;->U1:[I

    ushr-int/lit8 v20, v17, 0x18

    aget v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U2:[I

    ushr-int/lit8 v21, v17, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U3:[I

    ushr-int/lit8 v21, v17, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    sget-object v20, Lgnu/crypto/cipher/Rijndael;->U4:[I

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    aget v20, v20, v21

    xor-int v19, v19, v20

    aput v19, v18, v10

    .line 748
    add-int/lit8 v10, v10, 0x1

    goto :goto_9
.end method

.method public final selfTest()Z
    .locals 3

    .prologue
    .line 785
    sget-object v1, Lgnu/crypto/cipher/Rijndael;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 786
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 787
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 788
    sget-object v1, Lgnu/crypto/cipher/Rijndael;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Rijndael;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Rijndael;->testKat([B[B)Z

    move-result v0

    .line 790
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Rijndael;->valid:Ljava/lang/Boolean;

    .line 792
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Rijndael;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
