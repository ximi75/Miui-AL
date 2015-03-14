.class public Lde/innosystec/unrar/rarfile/BlockHeader;
.super Lde/innosystec/unrar/rarfile/BaseBlock;
.source "BlockHeader.java"


# static fields
.field public static final blockHeaderSize:S = 0x4s


# instance fields
.field private dataSize:I

.field private packSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V
    .locals 1
    .param p1, "bb"    # Lde/innosystec/unrar/rarfile/BaseBlock;
    .param p2, "blockHeader"    # [B

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 49
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lde/innosystec/unrar/io/Raw;->readIntLittleEndian([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->packSize:I

    .line 50
    iget v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->packSize:I

    iput v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->dataSize:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/BlockHeader;)V
    .locals 2
    .param p1, "bh"    # Lde/innosystec/unrar/rarfile/BlockHeader;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    .line 41
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BlockHeader;->getDataSize()I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->packSize:I

    .line 42
    iget v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->packSize:I

    iput v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->dataSize:I

    .line 43
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BlockHeader;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->positionInFile:J

    .line 44
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->dataSize:I

    return v0
.end method

.method public getPackSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lde/innosystec/unrar/rarfile/BlockHeader;->packSize:I

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->print()V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DataSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BlockHeader;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " packSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BlockHeader;->getPackSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "s":Ljava/lang/String;
    return-void
.end method
