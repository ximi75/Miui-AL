.class public Lde/innosystec/unrar/rarfile/SubBlockHeader;
.super Lde/innosystec/unrar/rarfile/BlockHeader;
.source "SubBlockHeader.java"


# static fields
.field public static final SubBlockHeaderSize:S = 0x3s


# instance fields
.field private level:B

.field private subType:S


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V
    .locals 3
    .param p1, "bh"    # Lde/innosystec/unrar/rarfile/BlockHeader;
    .param p2, "subblock"    # [B

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "position":I
    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    .line 39
    add-int/lit8 v0, v0, 0x2

    .line 40
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    .line 41
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;)V
    .locals 1
    .param p1, "sb"    # Lde/innosystec/unrar/rarfile/SubBlockHeader;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V

    .line 31
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->getSubblocktype()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    .line 32
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getLevel()B

    move-result v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    .line 33
    return-void
.end method


# virtual methods
.method public getLevel()B
    .locals 1

    .prologue
    .line 47
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->level:B

    return v0
.end method

.method public getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;
    .locals 1

    .prologue
    .line 54
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/SubBlockHeader;->subType:S

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->findSubblockHeaderType(S)Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BlockHeader;->print()V

    .line 59
    return-void
.end method
