.class public Lorg/apache/tika/mime/HexCoDec;
.super Ljava/lang/Object;
.source "HexCoDec.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tika/mime/HexCoDec;->HEX_CHARS:[C

    .line 27
    return-void

    .line 26
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexValue"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tika/mime/HexCoDec;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .param p0, "hexChars"    # [C

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/tika/mime/HexCoDec;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 5
    .param p0, "hexChars"    # [C
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 63
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Length must be even"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_0
    div-int/lit8 v3, p2, 0x2

    new-array v1, v3, [B

    .line 67
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 70
    return-object v1

    .line 68
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "startIndex":I
    .local v2, "startIndex":I
    aget-char v3, p0, p1

    invoke-static {v3}, Lorg/apache/tika/mime/HexCoDec;->hexCharToNibble(C)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "startIndex":I
    .restart local p1    # "startIndex":I
    aget-char v4, p0, v2

    invoke-static {v4}, Lorg/apache/tika/mime/HexCoDec;->hexCharToNibble(C)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encode([B)[C
    .locals 2
    .param p0, "bites"    # [B

    .prologue
    .line 81
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/tika/mime/HexCoDec;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 8
    .param p0, "bites"    # [B
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 96
    mul-int/lit8 v6, p2, 0x2

    new-array v4, v6, [C

    .line 97
    .local v4, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v5, p1

    .end local p1    # "startIndex":I
    .local v5, "startIndex":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 102
    return-object v4

    .line 98
    :cond_0
    add-int/lit8 p1, v5, 0x1

    .end local v5    # "startIndex":I
    .restart local p1    # "startIndex":I
    aget-byte v6, p0, v5

    and-int/lit16 v0, v6, 0xff

    .line 99
    .local v0, "bite":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    sget-object v6, Lorg/apache/tika/mime/HexCoDec;->HEX_CHARS:[C

    shr-int/lit8 v7, v0, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v3

    .line 100
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lorg/apache/tika/mime/HexCoDec;->HEX_CHARS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v2

    .line 97
    add-int/lit8 v1, v1, 0x1

    move v5, p1

    .end local p1    # "startIndex":I
    .restart local v5    # "startIndex":I
    goto :goto_0
.end method

.method private static hexCharToNibble(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 109
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 110
    add-int/lit8 v0, p0, -0x30

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 112
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 113
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 114
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not a hex char - \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
