.class public Lde/innosystec/unrar/crc/RarCRC;
.super Ljava/lang/Object;
.source "RarCRC.java"


# static fields
.field private static final crcTab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 30
    new-array v3, v4, [I

    sput-object v3, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 44
    return-void

    .line 32
    :cond_0
    move v0, v1

    .line 33
    .local v0, "c":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 42
    sget-object v3, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    aput v0, v3, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 35
    ushr-int/lit8 v0, v0, 0x1

    .line 36
    const v3, -0x12477ce0

    xor-int/2addr v0, v3

    .line 33
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static checkCrc(I[BII)I
    .locals 4
    .param p0, "startCrc"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 51
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 83
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 117
    return p0

    .line 109
    :cond_0
    sget-object v2, Lde/innosystec/unrar/crc/RarCRC;->crcTab:[I

    .line 110
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, p0

    and-int/lit16 v3, v3, 0xff

    .line 109
    aget v2, v2, v3

    .line 110
    ushr-int/lit8 v3, p0, 0x8

    .line 109
    xor-int p0, v2, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkOldCrc(S[BI)S
    .locals 4
    .param p0, "startCrc"    # S
    .param p1, "data"    # [B
    .param p2, "count"    # I

    .prologue
    .line 121
    array-length v2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 126
    return p0

    .line 123
    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v2, p0

    int-to-short v2, v2

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 124
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v3, p0, 0xf

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
