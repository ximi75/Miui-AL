.class public final Lgnu/crypto/cipher/Twofish;
.super Lgnu/crypto/cipher/BaseCipher;
.source "Twofish.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BLOCK_SIZE:I = 0x10

.field private static final DEFAULT_KEY_SIZE:I = 0x10

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final KAT_CT:[B

.field private static final KAT_KEY:[B

.field private static final MAX_ROUNDS:I = 0x10

.field private static final MDS:[[I

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final Pm:[Ljava/lang/String;

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final debuglevel:I = 0x9

.field private static valid:Ljava/lang/Boolean;


# direct methods
.method private static final constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0x100

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 109
    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "\ua967\ub3e8\u04fd\ua376\u9a92\u8078\ue4dd\ud138\u0dc6\u3598\u18f7\uec6c\u4375\u3726\ufa13\u9448\uf2d0\u8b30\u8454\udf23\u195b\u3d59\uf3ae\ua282\u6301\u832e\ud951\u9b7c\ua6eb\ua5be\u160c\ue361\uc08c\u3af5\u732c\u250b\ubb4e\u896b\u536a\ub4f1\ue1e6\ubd45\ue2f4\ub666\ucc95\u0356\ud41c\u1ed7\ufbc3\u8eb5\ue9cf\ubfba\uea77\u39af\u33c9\u6271\u8179\u09ad\u24cd\uf9d8\ue5c5\ub94d\u4408\u86e7\ua11d\uaaed\u0670\ub2d2\u417b\ua011\u31c2\u2790\u20f6\u60ff\u965c\ub1ab\u9e9c\u521b\u5f93\u0aef\u9185\u49ee\u2d4f\u8f3b\u4787\u6d46\ud63e\u6964\u2ace\ucb2f\ufc97\u057a\uac7f\ud51a\u4b0e\ua75a\u2814\u3f29\u883c\u4c02\ub8da\ub017\u551f\u8a7d\u57c7\u8d74\ub7c4\u9f72\u7e15\u2212\u5807\u9934\u6e50\ude68\u65bc\udbf8\uc8a8\u2b40\udcfe\u32a4\uca10\u21f0\ud35d\u0f00\u6f9d\u3642\u4a5e\uc1e0"

    aput-object v9, v8, v11

    const-string/jumbo v9, "\u75f3\uc6f4\udb7b\ufbc8\u4ad3\ue66b\u457d\ue84b\ud632\ud8fd\u3771\uf1e1\u300f\uf81b\u87fa\u063f\u5eba\uae5b\u8a00\ubc9d\u6dc1\ub10e\u805d\ud2d5\ua084\u0714\ub590\u2ca3\ub273\u4c54\u9274\u3651\u38b0\ubd5a\ufc60\u6296\u6c42\uf710\u7c28\u278c\u1395\u9cc7\u2446\u3b70\ucae3\u85cb\u11d0\u93b8\ua683\u20ff\u9f77\uc3cc\u036f\u08bf\u40e7\u2be2\u790c\uaa82\u413a\ueab9\ue49a\ua497\u7eda\u7a17\u6694\ua11d\u3df0\udeb3\u0b72\ua71c\uefd1\u533e\u8f33\u265f\uec76\u2a49\u8188\uee21\uc41a\uebd9\uc539\u99cd\uad31\u8b01\u1823\udd1f\u4e2d\uf948\u4ff2\u658e\u785c\u5819\u8de5\u9857\u677f\u0564\uaf63\ub6fe\uf5b7\u3ca5\ucee9\u6844\ue04d\u4369\u292e\uac15\u59a8\u0a9e\u6e47\udf34\u356a\ucfdc\u22c9\uc09b\u89d4\uedab\u12a2\u0d52\ubb02\u2fa9\ud761\u1eb4\u5004\uf6c2\u1625\u8656\u5509\ube91"

    aput-object v9, v8, v12

    sput-object v8, Lgnu/crypto/cipher/Twofish;->Pm:[Ljava/lang/String;

    .line 147
    filled-new-array {v13, v14}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    sput-object v8, Lgnu/crypto/cipher/Twofish;->P:[[B

    .line 184
    const/4 v8, 0x4

    filled-new-array {v8, v14}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    .line 194
    const-string/jumbo v8, "0000000000000000000000000000000000000000000002000000000000000000"

    invoke-static {v8}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v8

    sput-object v8, Lgnu/crypto/cipher/Twofish;->KAT_KEY:[B

    .line 196
    const-string/jumbo v8, "F51410475B33FBD3DB2117B5C17C82D4"

    invoke-static {v8}, Lgnu/crypto/util/Util;->toBytesFromString(Ljava/lang/String;)[B

    move-result-object v8

    sput-object v8, Lgnu/crypto/cipher/Twofish;->KAT_CT:[B

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 210
    .local v6, "time":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v14, :cond_0

    .line 219
    new-array v3, v13, [I

    .line 220
    .local v3, "m1":[I
    new-array v4, v13, [I

    .line 221
    .local v4, "mX":[I
    new-array v5, v13, [I

    .line 223
    .local v5, "mY":[I
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v14, :cond_3

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 254
    return-void

    .line 211
    .end local v3    # "m1":[I
    .end local v4    # "mX":[I
    .end local v5    # "mY":[I
    :cond_0
    sget-object v8, Lgnu/crypto/cipher/Twofish;->Pm:[Ljava/lang/String;

    aget-object v8, v8, v11

    ushr-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 212
    .local v0, "c":C
    sget-object v8, Lgnu/crypto/cipher/Twofish;->P:[[B

    aget-object v8, v8, v11

    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_1

    ushr-int/lit8 v0, v0, 0x8

    .end local v0    # "c":C
    :cond_1
    int-to-byte v9, v0

    aput-byte v9, v8, v1

    .line 214
    sget-object v8, Lgnu/crypto/cipher/Twofish;->Pm:[Ljava/lang/String;

    aget-object v8, v8, v12

    ushr-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    .restart local v0    # "c":C
    sget-object v8, Lgnu/crypto/cipher/Twofish;->P:[[B

    aget-object v8, v8, v12

    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_2

    ushr-int/lit8 v0, v0, 0x8

    .end local v0    # "c":C
    :cond_2
    int-to-byte v9, v0

    aput-byte v9, v8, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .restart local v3    # "m1":[I
    .restart local v4    # "mX":[I
    .restart local v5    # "mY":[I
    :cond_3
    sget-object v8, Lgnu/crypto/cipher/Twofish;->P:[[B

    aget-object v8, v8, v11

    aget-byte v8, v8, v1

    and-int/lit16 v2, v8, 0xff

    .line 225
    .local v2, "j":I
    aput v2, v3, v11

    .line 226
    invoke-static {v2}, Lgnu/crypto/cipher/Twofish;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v11

    .line 227
    invoke-static {v2}, Lgnu/crypto/cipher/Twofish;->Mx_Y(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v5, v11

    .line 229
    sget-object v8, Lgnu/crypto/cipher/Twofish;->P:[[B

    aget-object v8, v8, v12

    aget-byte v8, v8, v1

    and-int/lit16 v2, v8, 0xff

    .line 230
    aput v2, v3, v12

    .line 231
    invoke-static {v2}, Lgnu/crypto/cipher/Twofish;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v12

    .line 232
    invoke-static {v2}, Lgnu/crypto/cipher/Twofish;->Mx_Y(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v5, v12

    .line 234
    sget-object v8, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    aget-object v8, v8, v11

    aget v9, v3, v12

    aget v10, v4, v12

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v5, v12

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v5, v12

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v8, v1

    .line 238
    sget-object v8, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    aget-object v8, v8, v12

    aget v9, v5, v11

    aget v10, v5, v11

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v4, v11

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v3, v11

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v8, v1

    .line 242
    sget-object v8, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    aget-object v8, v8, v13

    aget v9, v4, v12

    aget v10, v5, v12

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v3, v12

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v5, v12

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v8, v1

    .line 246
    sget-object v8, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v9, 0x3

    aget-object v8, v8, v9

    aget v9, v4, v11

    aget v10, v3, v11

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget v10, v5, v11

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    aget v10, v4, v11

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v8, v1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 327
    const-string/jumbo v0, "twofish"

    invoke-direct {p0, v0, v1, v1}, Lgnu/crypto/cipher/BaseCipher;-><init>(Ljava/lang/String;II)V

    .line 328
    return-void
.end method

.method private static final F32(II[I)I
    .locals 14
    .param p0, "k64Cnt"    # I
    .param p1, "x"    # I
    .param p2, "k32"    # [I

    .prologue
    .line 386
    invoke-static {p1}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v0

    .line 387
    .local v0, "b0":I
    invoke-static {p1}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v1

    .line 388
    .local v1, "b1":I
    invoke-static {p1}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v2

    .line 389
    .local v2, "b2":I
    invoke-static {p1}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v3

    .line 390
    .local v3, "b3":I
    const/4 v9, 0x0

    aget v4, p2, v9

    .line 391
    .local v4, "k0":I
    const/4 v9, 0x1

    aget v5, p2, v9

    .line 392
    .local v5, "k1":I
    const/4 v9, 0x2

    aget v6, p2, v9

    .line 393
    .local v6, "k2":I
    const/4 v9, 0x3

    aget v7, p2, v9

    .line 395
    .local v7, "k3":I
    const/4 v8, 0x0

    .line 396
    .local v8, "result":I
    and-int/lit8 v9, p0, 0x3

    packed-switch v9, :pswitch_data_0

    .line 422
    :goto_0
    return v8

    .line 398
    :pswitch_0
    sget-object v9, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-byte v10, v10, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v1

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v3

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 403
    goto :goto_0

    .line 405
    :pswitch_1
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-static {v7}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 406
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-static {v7}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 407
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-static {v7}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 408
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-static {v7}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 410
    :pswitch_2
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-static {v6}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 411
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-static {v6}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 412
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-static {v6}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 413
    sget-object v9, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-static {v6}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 415
    :pswitch_3
    sget-object v9, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v0

    and-int/lit16 v11, v11, 0xff

    invoke-static {v5}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v1

    and-int/lit16 v12, v12, 0xff

    invoke-static {v5}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-byte v12, v12, v2

    and-int/lit16 v12, v12, 0xff

    invoke-static {v5}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    sget-object v10, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    sget-object v11, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    invoke-static {v5}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-static {v4}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 420
    goto/16 :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static final Fe32([III)I
    .locals 2
    .param p0, "sBox"    # [I
    .param p1, "x"    # I
    .param p2, "R"    # I

    .prologue
    .line 426
    invoke-static {p1, p2}, Lgnu/crypto/cipher/Twofish;->_b(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {p1, v1}, Lgnu/crypto/cipher/Twofish;->_b(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1}, Lgnu/crypto/cipher/Twofish;->_b(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    aget v1, p0, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    invoke-static {p1, v1}, Lgnu/crypto/cipher/Twofish;->_b(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static final LFSR1(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 301
    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final LFSR2(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x0

    .line 305
    shr-int/lit8 v2, p0, 0x2

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const/16 v0, 0x5a

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static final Mx_X(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 315
    invoke-static {p0}, Lgnu/crypto/cipher/Twofish;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p0

    return v0
.end method

.method private static final Mx_Y(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 319
    invoke-static {p0}, Lgnu/crypto/cipher/Twofish;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p0

    invoke-static {p0}, Lgnu/crypto/cipher/Twofish;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static final RS_MDS_Encode(II)I
    .locals 3
    .param p0, "k0"    # I
    .param p1, "k1"    # I

    .prologue
    const/4 v2, 0x4

    .line 358
    move v1, p1

    .line 360
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 363
    xor-int/2addr v1, p0

    .line 364
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 367
    return v1

    .line 361
    :cond_0
    invoke-static {v1}, Lgnu/crypto/cipher/Twofish;->RS_rem(I)I

    move-result v1

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-static {v1}, Lgnu/crypto/cipher/Twofish;->RS_rem(I)I

    move-result v1

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static final RS_rem(I)I
    .locals 7
    .param p0, "x"    # I

    .prologue
    const/4 v4, 0x0

    .line 378
    ushr-int/lit8 v5, p0, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 379
    .local v0, "b":I
    shl-int/lit8 v6, v0, 0x1

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    const/16 v5, 0x14d

    :goto_0
    xor-int/2addr v5, v6

    and-int/lit16 v1, v5, 0xff

    .line 380
    .local v1, "g2":I
    ushr-int/lit8 v5, v0, 0x1

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_0

    const/16 v4, 0xa6

    :cond_0
    xor-int/2addr v4, v5

    xor-int v2, v4, v1

    .line 381
    .local v2, "g3":I
    shl-int/lit8 v4, p0, 0x8

    shl-int/lit8 v5, v2, 0x18

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x10

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    xor-int/2addr v4, v5

    xor-int v3, v4, v0

    .line 382
    .local v3, "result":I
    return v3

    .end local v1    # "g2":I
    .end local v2    # "g3":I
    .end local v3    # "result":I
    :cond_1
    move v5, v4

    .line 379
    goto :goto_0
.end method

.method private static final _b(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "N"    # I

    .prologue
    .line 443
    rem-int/lit8 v0, p1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 447
    ushr-int/lit8 v0, p0, 0x18

    :goto_0
    return v0

    .line 444
    :pswitch_0
    and-int/lit16 v0, p0, 0xff

    goto :goto_0

    .line 445
    :pswitch_1
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 446
    :pswitch_2
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final b0(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 334
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static final b1(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 338
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static final b2(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 342
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static final b3(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 346
    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public final blockSizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Lgnu/crypto/cipher/Twofish;

    invoke-direct {v0}, Lgnu/crypto/cipher/Twofish;-><init>()V

    .line 458
    .local v0, "result":Lgnu/crypto/cipher/Twofish;
    iget v1, p0, Lgnu/crypto/cipher/Twofish;->currentBlockSize:I

    iput v1, v0, Lgnu/crypto/cipher/Twofish;->currentBlockSize:I

    .line 460
    return-object v0
.end method

.method public final decrypt([BI[BILjava/lang/Object;I)V
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .param p5, "sessionKey"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 724
    const/16 v15, 0x10

    move/from16 v0, p6

    if-eq v0, v15, :cond_0

    .line 725
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    :cond_0
    move-object/from16 v8, p5

    .line 728
    check-cast v8, [Ljava/lang/Object;

    .line 729
    .local v8, "sk":[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v6, v8, v15

    check-cast v6, [I

    .line 730
    .local v6, "sBox":[I
    const/4 v15, 0x1

    aget-object v7, v8, v15

    check-cast v7, [I

    .line 736
    .local v7, "sKey":[I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .local v2, "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v13, v15, v16

    .line 740
    .local v13, "x2":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v14, v15, v16

    .line 744
    .local v14, "x3":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v11, v15, v16

    .line 748
    .local v11, "x0":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v12, v15, v16

    .line 753
    .local v12, "x1":I
    const/4 v15, 0x4

    aget v15, v7, v15

    xor-int/2addr v13, v15

    .line 754
    const/4 v15, 0x5

    aget v15, v7, v15

    xor-int/2addr v14, v15

    .line 755
    const/4 v15, 0x6

    aget v15, v7, v15

    xor-int/2addr v11, v15

    .line 756
    const/4 v15, 0x7

    aget v15, v7, v15

    xor-int/2addr v12, v15

    .line 763
    const/16 v3, 0x27

    .line 765
    .local v3, "k":I
    const/4 v1, 0x0

    .local v1, "R":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    const/16 v15, 0x10

    if-lt v1, v15, :cond_1

    .line 790
    const/4 v15, 0x0

    aget v15, v7, v15

    xor-int/2addr v11, v15

    .line 791
    const/4 v15, 0x1

    aget v15, v7, v15

    xor-int/2addr v12, v15

    .line 792
    const/4 v15, 0x2

    aget v15, v7, v15

    xor-int/2addr v13, v15

    .line 793
    const/4 v15, 0x3

    aget v15, v7, v15

    xor-int/2addr v14, v15

    .line 800
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .local v5, "outOffset":I
    int-to-byte v15, v11

    aput-byte v15, p3, p4

    .line 801
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 802
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 803
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 804
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v12

    aput-byte v15, p3, p4

    .line 805
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 806
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v12, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 807
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v12, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 808
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v13

    aput-byte v15, p3, p4

    .line 809
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 810
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 811
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 812
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v14

    aput-byte v15, p3, p4

    .line 813
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 814
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v14, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 815
    ushr-int/lit8 v15, v14, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 821
    return-void

    .line 766
    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    :cond_1
    const/4 v15, 0x0

    invoke-static {v6, v13, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v9

    .line 767
    .local v9, "t0":I
    const/4 v15, 0x3

    invoke-static {v6, v14, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v10

    .line 768
    .local v10, "t1":I
    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v9

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v16, v7, v4

    add-int v15, v15, v16

    xor-int/2addr v12, v15

    .line 769
    ushr-int/lit8 v15, v12, 0x1

    shl-int/lit8 v16, v12, 0x1f

    or-int v12, v15, v16

    .line 770
    shl-int/lit8 v15, v11, 0x1

    ushr-int/lit8 v16, v11, 0x1f

    or-int v11, v15, v16

    .line 771
    add-int v15, v9, v10

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aget v16, v7, v3

    add-int v15, v15, v16

    xor-int/2addr v11, v15

    .line 778
    const/4 v15, 0x0

    invoke-static {v6, v11, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v9

    .line 779
    const/4 v15, 0x3

    invoke-static {v6, v12, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v10

    .line 780
    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v9

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v16, v7, v4

    add-int v15, v15, v16

    xor-int/2addr v14, v15

    .line 781
    ushr-int/lit8 v15, v14, 0x1

    shl-int/lit8 v16, v14, 0x1f

    or-int v14, v15, v16

    .line 782
    shl-int/lit8 v15, v13, 0x1

    ushr-int/lit8 v16, v13, 0x1f

    or-int v13, v15, v16

    .line 783
    add-int v15, v9, v10

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aget v16, v7, v3

    add-int v15, v15, v16

    xor-int/2addr v13, v15

    .line 765
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0
.end method

.method public final encrypt([BI[BILjava/lang/Object;I)V
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "out"    # [B
    .param p4, "outOffset"    # I
    .param p5, "sessionKey"    # Ljava/lang/Object;
    .param p6, "bs"    # I

    .prologue
    .line 623
    const/16 v15, 0x10

    move/from16 v0, p6

    if-eq v0, v15, :cond_0

    .line 624
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    :cond_0
    move-object/from16 v8, p5

    .line 627
    check-cast v8, [Ljava/lang/Object;

    .line 628
    .local v8, "sk":[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v6, v8, v15

    check-cast v6, [I

    .line 629
    .local v6, "sBox":[I
    const/4 v15, 0x1

    aget-object v7, v8, v15

    check-cast v7, [I

    .line 635
    .local v7, "sKey":[I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .local v2, "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v11, v15, v16

    .line 639
    .local v11, "x0":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v12, v15, v16

    .line 643
    .local v12, "x1":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v13, v15, v16

    .line 647
    .local v13, "x2":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inOffset":I
    .restart local v2    # "inOffset":I
    aget-byte v16, p1, p2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inOffset":I
    .restart local p2    # "inOffset":I
    aget-byte v16, p1, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x18

    or-int v14, v15, v16

    .line 652
    .local v14, "x3":I
    const/4 v15, 0x0

    aget v15, v7, v15

    xor-int/2addr v11, v15

    .line 653
    const/4 v15, 0x1

    aget v15, v7, v15

    xor-int/2addr v12, v15

    .line 654
    const/4 v15, 0x2

    aget v15, v7, v15

    xor-int/2addr v13, v15

    .line 655
    const/4 v15, 0x3

    aget v15, v7, v15

    xor-int/2addr v14, v15

    .line 663
    const/16 v3, 0x8

    .line 664
    .local v3, "k":I
    const/4 v1, 0x0

    .local v1, "R":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    const/16 v15, 0x10

    if-lt v1, v15, :cond_1

    .line 689
    const/4 v15, 0x4

    aget v15, v7, v15

    xor-int/2addr v13, v15

    .line 690
    const/4 v15, 0x5

    aget v15, v7, v15

    xor-int/2addr v14, v15

    .line 691
    const/4 v15, 0x6

    aget v15, v7, v15

    xor-int/2addr v11, v15

    .line 692
    const/4 v15, 0x7

    aget v15, v7, v15

    xor-int/2addr v12, v15

    .line 699
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .local v5, "outOffset":I
    int-to-byte v15, v13

    aput-byte v15, p3, p4

    .line 700
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 701
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 702
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v13, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 703
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v14

    aput-byte v15, p3, p4

    .line 704
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 705
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v14, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 706
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v14, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 707
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v11

    aput-byte v15, p3, p4

    .line 708
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 709
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 710
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v11, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 711
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    int-to-byte v15, v12

    aput-byte v15, p3, p4

    .line 712
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    ushr-int/lit8 v15, v12, 0x8

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 713
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outOffset":I
    .restart local v5    # "outOffset":I
    ushr-int/lit8 v15, v12, 0x10

    int-to-byte v15, v15

    aput-byte v15, p3, p4

    .line 714
    ushr-int/lit8 v15, v12, 0x18

    int-to-byte v15, v15

    aput-byte v15, p3, v5

    .line 720
    return-void

    .line 665
    .end local v5    # "outOffset":I
    .restart local p4    # "outOffset":I
    :cond_1
    const/4 v15, 0x0

    invoke-static {v6, v11, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v9

    .line 666
    .local v9, "t0":I
    const/4 v15, 0x3

    invoke-static {v6, v12, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v10

    .line 667
    .local v10, "t1":I
    add-int v15, v9, v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v16, v7, v4

    add-int v15, v15, v16

    xor-int/2addr v13, v15

    .line 668
    ushr-int/lit8 v15, v13, 0x1

    shl-int/lit8 v16, v13, 0x1f

    or-int v13, v15, v16

    .line 669
    shl-int/lit8 v15, v14, 0x1

    ushr-int/lit8 v16, v14, 0x1f

    or-int v14, v15, v16

    .line 670
    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v9

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aget v16, v7, v3

    add-int v15, v15, v16

    xor-int/2addr v14, v15

    .line 677
    const/4 v15, 0x0

    invoke-static {v6, v13, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v9

    .line 678
    const/4 v15, 0x3

    invoke-static {v6, v14, v15}, Lgnu/crypto/cipher/Twofish;->Fe32([III)I

    move-result v10

    .line 679
    add-int v15, v9, v10

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    aget v16, v7, v4

    add-int v15, v15, v16

    xor-int/2addr v11, v15

    .line 680
    ushr-int/lit8 v15, v11, 0x1

    shl-int/lit8 v16, v11, 0x1f

    or-int v11, v15, v16

    .line 681
    shl-int/lit8 v15, v12, 0x1

    ushr-int/lit8 v16, v12, 0x1f

    or-int v12, v15, v16

    .line 682
    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v9

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    aget v16, v7, v3

    add-int v15, v15, v16

    xor-int/2addr v12, v15

    .line 664
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0
.end method

.method public final keySizes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "al":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final makeKey([BI)Ljava/lang/Object;
    .locals 30
    .param p1, "k"    # [B
    .param p2, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 493
    const/16 v25, 0x10

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 494
    new-instance v25, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v25

    .line 496
    :cond_0
    if-nez p1, :cond_1

    .line 497
    new-instance v25, Ljava/security/InvalidKeyException;

    const-string/jumbo v26, "Empty key"

    invoke-direct/range {v25 .. v26}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 499
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    .line 500
    .local v17, "length":I
    const/16 v25, 0x8

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x10

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x18

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x20

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 501
    new-instance v25, Ljava/security/InvalidKeyException;

    const-string/jumbo v26, "Incorrect key length"

    invoke-direct/range {v25 .. v26}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 504
    :cond_2
    div-int/lit8 v16, v17, 0x8

    .line 505
    .local v16, "k64Cnt":I
    const/16 v24, 0x28

    .line 506
    .local v24, "subkeyCnt":I
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v14, v0, [I

    .line 507
    .local v14, "k32e":[I
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v15, v0, [I

    .line 508
    .local v15, "k32o":[I
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 513
    .local v22, "sBoxKey":[I
    const/16 v18, 0x0

    .line 514
    .local v18, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    add-int/lit8 v9, v16, -0x1

    .local v9, "j":I
    move/from16 v19, v18

    .end local v18    # "offset":I
    .local v19, "offset":I
    :goto_0
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v8, v0, :cond_3

    move/from16 v0, v19

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 528
    :cond_3
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 529
    .local v23, "subKeys":[I
    const/16 v20, 0x0

    .local v20, "q":I
    move/from16 v8, v20

    :goto_1
    const/16 v25, 0x14

    move/from16 v0, v25

    if-lt v8, v0, :cond_5

    .line 540
    const/16 v25, 0x0

    aget v10, v22, v25

    .line 541
    .local v10, "k0":I
    const/16 v25, 0x1

    aget v11, v22, v25

    .line 542
    .local v11, "k1":I
    const/16 v25, 0x2

    aget v12, v22, v25

    .line 543
    .local v12, "k2":I
    const/16 v25, 0x3

    aget v13, v22, v25

    .line 545
    .local v13, "k3":I
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 546
    .local v21, "sBox":[I
    const/4 v8, 0x0

    :goto_2
    const/16 v25, 0x100

    move/from16 v0, v25

    if-lt v8, v0, :cond_6

    .line 618
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    const/16 v26, 0x1

    aput-object v23, v25, v26

    return-object v25

    .line 515
    .end local v10    # "k0":I
    .end local v11    # "k1":I
    .end local v12    # "k2":I
    .end local v13    # "k3":I
    .end local v20    # "q":I
    .end local v21    # "sBox":[I
    .end local v23    # "subKeys":[I
    :cond_4
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    aget-byte v25, p1, v19

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    aget-byte v26, p1, v18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    aget-byte v26, p1, v19

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    aget-byte v26, p1, v18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x18

    or-int v25, v25, v26

    aput v25, v14, v8

    .line 519
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    aget-byte v25, p1, v19

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    aget-byte v26, p1, v18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    aget-byte v26, p1, v19

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    aget-byte v26, p1, v18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x18

    or-int v25, v25, v26

    aput v25, v15, v8

    .line 523
    aget v25, v14, v8

    aget v26, v15, v8

    invoke-static/range {v25 .. v26}, Lgnu/crypto/cipher/Twofish;->RS_MDS_Encode(II)I

    move-result v25

    aput v25, v22, v9

    .line 514
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 530
    .restart local v20    # "q":I
    .restart local v23    # "subKeys":[I
    :cond_5
    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1, v14}, Lgnu/crypto/cipher/Twofish;->F32(II[I)I

    move-result v2

    .line 531
    .local v2, "A":I
    const v25, 0x1010101

    add-int v25, v25, v20

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1, v15}, Lgnu/crypto/cipher/Twofish;->F32(II[I)I

    move-result v3

    .line 532
    .local v3, "B":I
    shl-int/lit8 v25, v3, 0x8

    ushr-int/lit8 v26, v3, 0x18

    or-int v3, v25, v26

    .line 533
    add-int/2addr v2, v3

    .line 534
    mul-int/lit8 v25, v8, 0x2

    aput v2, v23, v25

    .line 535
    add-int/2addr v2, v3

    .line 536
    mul-int/lit8 v25, v8, 0x2

    add-int/lit8 v25, v25, 0x1

    shl-int/lit8 v26, v2, 0x9

    ushr-int/lit8 v27, v2, 0x17

    or-int v26, v26, v27

    aput v26, v23, v25

    .line 529
    add-int/lit8 v8, v8, 0x1

    const v25, 0x2020202

    add-int v20, v20, v25

    goto/16 :goto_1

    .line 547
    .end local v2    # "A":I
    .end local v3    # "B":I
    .restart local v10    # "k0":I
    .restart local v11    # "k1":I
    .restart local v12    # "k2":I
    .restart local v13    # "k3":I
    .restart local v21    # "sBox":[I
    :cond_6
    move v7, v8

    .local v7, "b3":I
    move v6, v8

    .local v6, "b2":I
    move v5, v8

    .local v5, "b1":I
    move v4, v8

    .line 548
    .local v4, "b0":I
    and-int/lit8 v25, v16, 0x3

    packed-switch v25, :pswitch_data_0

    .line 546
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 550
    :pswitch_0
    mul-int/lit8 v25, v8, 0x2

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x0

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x0

    aget-object v27, v27, v28

    aget-byte v27, v27, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 551
    mul-int/lit8 v25, v8, 0x2

    add-int/lit8 v25, v25, 0x1

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x1

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x0

    aget-object v27, v27, v28

    aget-byte v27, v27, v5

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 552
    mul-int/lit8 v25, v8, 0x2

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x200

    move/from16 v25, v0

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x2

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-byte v27, v27, v6

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 553
    mul-int/lit8 v25, v8, 0x2

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x200

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x3

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x1

    aget-object v27, v27, v28

    aget-byte v27, v27, v7

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    goto/16 :goto_3

    .line 556
    :pswitch_1
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aget-byte v25, v25, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v13}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v26

    xor-int v4, v25, v26

    .line 557
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aget-byte v25, v25, v5

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v13}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v26

    xor-int v5, v25, v26

    .line 558
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aget-byte v25, v25, v6

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v13}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v26

    xor-int v6, v25, v26

    .line 559
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aget-byte v25, v25, v7

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v13}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v26

    xor-int v7, v25, v26

    .line 561
    :pswitch_2
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aget-byte v25, v25, v4

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v12}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v26

    xor-int v4, v25, v26

    .line 562
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aget-byte v25, v25, v5

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v12}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v26

    xor-int v5, v25, v26

    .line 563
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aget-byte v25, v25, v6

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v12}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v26

    xor-int v6, v25, v26

    .line 564
    sget-object v25, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aget-byte v25, v25, v7

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static {v12}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v26

    xor-int v7, v25, v26

    .line 566
    :pswitch_3
    mul-int/lit8 v25, v8, 0x2

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x0

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aget-byte v28, v28, v4

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    invoke-static {v11}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v29

    xor-int v28, v28, v29

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b0(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 567
    mul-int/lit8 v25, v8, 0x2

    add-int/lit8 v25, v25, 0x1

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x1

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aget-byte v28, v28, v5

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    invoke-static {v11}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v29

    xor-int v28, v28, v29

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b1(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 568
    mul-int/lit8 v25, v8, 0x2

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x200

    move/from16 v25, v0

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x2

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v29, 0x0

    aget-object v28, v28, v29

    aget-byte v28, v28, v6

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    invoke-static {v11}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v29

    xor-int v28, v28, v29

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b2(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    .line 569
    mul-int/lit8 v25, v8, 0x2

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x200

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    sget-object v26, Lgnu/crypto/cipher/Twofish;->MDS:[[I

    const/16 v27, 0x3

    aget-object v26, v26, v27

    sget-object v27, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Lgnu/crypto/cipher/Twofish;->P:[[B

    const/16 v29, 0x1

    aget-object v28, v28, v29

    aget-byte v28, v28, v7

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    invoke-static {v11}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v29

    xor-int v28, v28, v29

    aget-byte v27, v27, v28

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-static {v10}, Lgnu/crypto/cipher/Twofish;->b3(I)I

    move-result v28

    xor-int v27, v27, v28

    aget v26, v26, v27

    aput v26, v21, v25

    goto/16 :goto_3

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final selfTest()Z
    .locals 3

    .prologue
    .line 824
    sget-object v1, Lgnu/crypto/cipher/Twofish;->valid:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 825
    invoke-super {p0}, Lgnu/crypto/cipher/BaseCipher;->selfTest()Z

    move-result v0

    .line 826
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 827
    sget-object v1, Lgnu/crypto/cipher/Twofish;->KAT_KEY:[B

    sget-object v2, Lgnu/crypto/cipher/Twofish;->KAT_CT:[B

    invoke-virtual {p0, v1, v2}, Lgnu/crypto/cipher/Twofish;->testKat([B[B)Z

    move-result v0

    .line 829
    :cond_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lgnu/crypto/cipher/Twofish;->valid:Ljava/lang/Boolean;

    .line 831
    .end local v0    # "result":Z
    :cond_1
    sget-object v1, Lgnu/crypto/cipher/Twofish;->valid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
