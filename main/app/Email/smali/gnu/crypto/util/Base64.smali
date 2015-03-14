.class public Lgnu/crypto/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[B

.field private static final DEBUG:Z = true

.field private static final DECODABET:[B

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NAME:Ljava/lang/String; = "Base64"

.field private static final NEW_LINE:B = 0xat

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final debuglevel:I = 0x9

.field private static final err:Ljava/io/PrintWriter;


# direct methods
.method private static final constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, -0x5

    const/16 v3, -0x9

    .line 61
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lgnu/crypto/util/Base64;->err:Ljava/io/PrintWriter;

    .line 82
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/crypto/util/Base64;->ALPHABET:[B

    .line 99
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    aput-byte v5, v0, v1

    const/16 v1, 0x44

    aput-byte v6, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    sput-object v0, Lgnu/crypto/util/Base64;->DECODABET:[B

    return-void

    .line 82
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private static final debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lgnu/crypto/util/Base64;->err:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ">>> Base64: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 189
    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lgnu/crypto/util/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([BII)[B
    .locals 13
    .param p0, "src"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v11, 0x0

    .line 206
    mul-int/lit8 v10, p2, 0x3

    div-int/lit8 v4, v10, 0x4

    .line 207
    .local v4, "len34":I
    new-array v5, v4, [B

    .line 208
    .local v5, "outBuff":[B
    const/4 v6, 0x0

    .line 209
    .local v6, "outBuffPosn":I
    const/4 v10, 0x4

    new-array v0, v10, [B

    .line 210
    .local v0, "b4":[B
    const/4 v1, 0x0

    .line 213
    .local v1, "b4Posn":I
    move v3, p1

    .local v3, "i":I
    move v2, v1

    .end local v1    # "b4Posn":I
    .local v2, "b4Posn":I
    :goto_0
    add-int v10, p1, p2

    if-lt v3, v10, :cond_1

    move v1, v2

    .line 233
    .end local v2    # "b4Posn":I
    .restart local v1    # "b4Posn":I
    :cond_0
    new-array v7, v6, [B

    .line 234
    .local v7, "result":[B
    invoke-static {v5, v11, v7, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    return-object v7

    .line 214
    .end local v1    # "b4Posn":I
    .end local v7    # "result":[B
    .restart local v2    # "b4Posn":I
    :cond_1
    aget-byte v10, p0, v3

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v8, v10

    .line 215
    .local v8, "sbiCrop":B
    sget-object v10, Lgnu/crypto/util/Base64;->DECODABET:[B

    aget-byte v9, v10, v8

    .line 216
    .local v9, "sbiDecode":B
    const/4 v10, -0x5

    if-lt v9, v10, :cond_3

    .line 217
    const/4 v10, -0x1

    if-lt v9, v10, :cond_4

    .line 218
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b4Posn":I
    .restart local v1    # "b4Posn":I
    aput-byte v8, v0, v2

    .line 219
    const/4 v10, 0x3

    if-le v1, v10, :cond_2

    .line 220
    invoke-static {v0, v11, v5, v6}, Lgnu/crypto/util/Base64;->decode4to3([BI[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 221
    const/4 v1, 0x0

    .line 223
    const/16 v10, 0x3d

    if-eq v8, v10, :cond_0

    .line 213
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "b4Posn":I
    .restart local v2    # "b4Posn":I
    goto :goto_0

    .line 228
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "Illegal BASE-64 character at #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-byte v12, p0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, "(decimal)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    move v1, v2

    .end local v2    # "b4Posn":I
    .restart local v1    # "b4Posn":I
    goto :goto_1
.end method

.method private static final decode4to3([BI[BI)I
    .locals 5
    .param p0, "src"    # [B
    .param p1, "sOffset"    # I
    .param p2, "dest"    # [B
    .param p3, "dOffset"    # I

    .prologue
    const/16 v3, 0x3d

    .line 320
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_0

    .line 321
    sget-object v2, Lgnu/crypto/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v0, v2, v3

    .line 323
    .local v0, "outBuff":I
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 324
    const/4 v2, 0x1

    .line 352
    .end local v0    # "outBuff":I
    :goto_0
    return v2

    .line 327
    :cond_0
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    .line 328
    sget-object v2, Lgnu/crypto/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v0, v2, v3

    .line 331
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 332
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 333
    const/4 v2, 0x2

    goto :goto_0

    .line 337
    .end local v0    # "outBuff":I
    :cond_1
    :try_start_0
    sget-object v2, Lgnu/crypto/util/Base64;->DECODABET:[B

    aget-byte v3, p0, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 341
    .restart local v0    # "outBuff":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 342
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 343
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v0

    aput-byte v3, p2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v2, 0x3

    goto :goto_0

    .line 345
    .end local v0    # "outBuff":I
    :catch_0
    move-exception v1

    .line 347
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    aget-byte v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    aget-byte v4, p0, p1

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/crypto/util/Base64;->debug(Ljava/lang/String;)V

    .line 348
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/crypto/util/Base64;->debug(Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/crypto/util/Base64;->debug(Ljava/lang/String;)V

    .line 350
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lgnu/crypto/util/Base64;->DECODABET:[B

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/crypto/util/Base64;->debug(Ljava/lang/String;)V

    .line 352
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public static final encode([B)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # [B

    .prologue
    .line 141
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lgnu/crypto/util/Base64;->encode([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encode([BIIZ)Ljava/lang/String;
    .locals 9
    .param p0, "src"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z

    .prologue
    const/4 v7, 0x0

    .line 154
    mul-int/lit8 v6, p2, 0x4

    div-int/lit8 v3, v6, 0x3

    .line 155
    .local v3, "len43":I
    rem-int/lit8 v6, p2, 0x3

    if-lez v6, :cond_1

    const/4 v6, 0x4

    :goto_0
    add-int v8, v3, v6

    if-eqz p3, :cond_4

    div-int/lit8 v6, v3, 0x4c

    :goto_1
    add-int/2addr v6, v8

    new-array v5, v6, [B

    .line 159
    .local v5, "outBuff":[B
    const/4 v0, 0x0

    .line 160
    .local v0, "d":I
    const/4 v1, 0x0

    .line 161
    .local v1, "e":I
    add-int/lit8 v2, p2, -0x2

    .line 162
    .local v2, "len2":I
    const/4 v4, 0x0

    .line 163
    .local v4, "lineLength":I
    :goto_2
    if-lt v0, v2, :cond_2

    .line 173
    if-ge v0, p2, :cond_0

    .line 174
    add-int v6, v0, p1

    sub-int v8, p2, v0

    invoke-static {p0, v6, v8, v5, v1}, Lgnu/crypto/util/Base64;->encode3to4([BII[BI)[B

    .line 175
    add-int/lit8 v1, v1, 0x4

    .line 178
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v7, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v6

    .end local v0    # "d":I
    .end local v1    # "e":I
    .end local v2    # "len2":I
    .end local v4    # "lineLength":I
    .end local v5    # "outBuff":[B
    :cond_1
    move v6, v7

    .line 155
    goto :goto_0

    .line 164
    .restart local v0    # "d":I
    .restart local v1    # "e":I
    .restart local v2    # "len2":I
    .restart local v4    # "lineLength":I
    .restart local v5    # "outBuff":[B
    :cond_2
    add-int v6, v0, p1

    const/4 v8, 0x3

    invoke-static {p0, v6, v8, v5, v1}, Lgnu/crypto/util/Base64;->encode3to4([BII[BI)[B

    .line 165
    add-int/lit8 v4, v4, 0x4

    .line 166
    if-eqz p3, :cond_3

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_3

    .line 167
    add-int/lit8 v6, v1, 0x4

    const/16 v8, 0xa

    aput-byte v8, v5, v6

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 169
    const/4 v4, 0x0

    .line 163
    :cond_3
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .end local v0    # "d":I
    .end local v1    # "e":I
    .end local v2    # "len2":I
    .end local v4    # "lineLength":I
    .end local v5    # "outBuff":[B
    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private static final encode3to4([BII[BI)[B
    .locals 5
    .param p0, "src"    # [B
    .param p1, "sOffset"    # I
    .param p2, "numBytes"    # I
    .param p3, "dest"    # [B
    .param p4, "dOffset"    # I

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 271
    if-lez p2, :cond_2

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_0
    or-int v0, v2, v1

    .line 275
    .local v0, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 295
    :goto_2
    return-object p3

    .line 277
    :pswitch_0
    sget-object v1, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 278
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 279
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 280
    add-int/lit8 v1, p4, 0x3

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    and-int/lit8 v3, v0, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    goto :goto_2

    .line 283
    :pswitch_1
    sget-object v1, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 284
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 285
    add-int/lit8 v1, p4, 0x2

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 286
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_2

    .line 289
    :pswitch_2
    sget-object v1, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v2, v0, 0x12

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 290
    add-int/lit8 v1, p4, 0x1

    sget-object v2, Lgnu/crypto/util/Base64;->ALPHABET:[B

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    .line 291
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 292
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_2

    .end local v0    # "inBuff":I
    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto/16 :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
