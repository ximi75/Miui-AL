.class public Lde/innosystec/unrar/rarfile/MarkHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "MarkHeader.java"


# instance fields
.field private oldFormat:Z


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V
    .locals 1
    .param p1, "bb"    # Lde/innosystec/unrar/rarfile/BaseBlock;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->oldFormat:Z

    .line 35
    return-void
.end method


# virtual methods
.method public isOldFormat()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->oldFormat:Z

    return v0
.end method

.method public isSignature()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "valid":Z
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 56
    .local v0, "d":[B
    iget-short v2, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->headCRC:S

    invoke-static {v0, v4, v2}, Lde/innosystec/unrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 57
    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->headerType:B

    aput-byte v2, v0, v6

    .line 58
    iget-short v2, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->flags:S

    invoke-static {v0, v7, v2}, Lde/innosystec/unrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 59
    iget-short v2, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->headerSize:S

    invoke-static {v0, v8, v2}, Lde/innosystec/unrar/io/Raw;->writeShortLittleEndian([BIS)V

    .line 61
    aget-byte v2, v0, v4

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    .line 62
    aget-byte v2, v0, v5

    const/16 v3, 0x45

    if-ne v2, v3, :cond_1

    aget-byte v2, v0, v6

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1

    aget-byte v2, v0, v7

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_1

    .line 63
    iput-boolean v5, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->oldFormat:Z

    .line 64
    const/4 v1, 0x1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    aget-byte v2, v0, v5

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v6

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v7

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    .line 66
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 67
    iput-boolean v4, p0, Lde/innosystec/unrar/rarfile/MarkHeader;->oldFormat:Z

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MarkHeader;->getHeadCRC()S

    move-result v1

    const/16 v2, 0x6152

    if-eq v1, v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MarkHeader;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v1

    sget-object v2, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v1, v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MarkHeader;->getFlags()S

    move-result v1

    const/16 v2, 0x1a21

    if-ne v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/MarkHeader;->getHeaderSize()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->print()V

    .line 80
    return-void
.end method
