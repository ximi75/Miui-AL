.class public Lde/innosystec/unrar/rarfile/EAHeader;
.super Lde/innosystec/unrar/rarfile/SubBlockHeader;
.source "EAHeader.java"


# static fields
.field public static final EAHeaderSize:S = 0xas


# instance fields
.field private EACRC:I

.field private method:B

.field private unpSize:I

.field private unpVer:B


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V
    .locals 3
    .param p1, "sb"    # Lde/innosystec/unrar/rarfile/SubBlockHeader;
    .param p2, "eahead"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "pos":I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpSize:I

    .line 40
    add-int/lit8 v0, v0, 0x4

    .line 41
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v1

    iput v1, p0, Lde/innosystec/unrar/rarfile/EAHeader;->EACRC:I

    .line 46
    return-void
.end method


# virtual methods
.method public getEACRC()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->EACRC:I

    return v0
.end method

.method public getMethod()B
    .locals 1

    .prologue
    .line 59
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->method:B

    return v0
.end method

.method public getUnpSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpSize:I

    return v0
.end method

.method public getUnpVer()B
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/EAHeader;->unpVer:B

    return v0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 78
    return-void
.end method
