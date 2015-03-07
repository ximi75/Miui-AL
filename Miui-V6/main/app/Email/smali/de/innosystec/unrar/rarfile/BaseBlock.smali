.class public Lde/innosystec/unrar/rarfile/BaseBlock;
.super Ljava/lang/Object;
.source "BaseBlock.java"


# static fields
.field public static final BaseBlockSize:S = 0x7s

.field public static final EARC_DATACRC:S = 0x2s

.field public static final EARC_NEXT_VOLUME:S = 0x1s

.field public static final EARC_REVSPACE:S = 0x4s

.field public static final EARC_VOLNUMBER:S = 0x8s

.field public static final LHD_COMMENT:S = 0x8s

.field public static final LHD_DIRECTORY:S = 0xe0s

.field public static final LHD_EXTFLAGS:S = 0x2000s

.field public static final LHD_EXTTIME:S = 0x1000s

.field public static final LHD_LARGE:S = 0x100s

.field public static final LHD_PASSWORD:S = 0x4s

.field public static final LHD_SALT:S = 0x400s

.field public static final LHD_SOLID:S = 0x10s

.field public static final LHD_SPLIT_AFTER:S = 0x2s

.field public static final LHD_SPLIT_BEFORE:S = 0x1s

.field public static final LHD_UNICODE:S = 0x200s

.field public static final LHD_VERSION:S = 0x800s

.field public static final LHD_WINDOW1024:S = 0x80s

.field public static final LHD_WINDOW128:S = 0x20s

.field public static final LHD_WINDOW2048:S = 0xa0s

.field public static final LHD_WINDOW256:S = 0x40s

.field public static final LHD_WINDOW4096:S = 0xc0s

.field public static final LHD_WINDOW512:S = 0x60s

.field public static final LHD_WINDOW64:S = 0x0s

.field public static final LHD_WINDOWMASK:S = 0xe0s

.field public static final LONG_BLOCK:S = -0x8000s

.field public static final MHD_AV:S = 0x20s

.field public static final MHD_COMMENT:S = 0x2s

.field public static final MHD_ENCRYPTVER:S = 0x200s

.field public static final MHD_FIRSTVOLUME:S = 0x100s

.field public static final MHD_LOCK:S = 0x4s

.field public static final MHD_NEWNUMBERING:S = 0x10s

.field public static final MHD_PACK_COMMENT:S = 0x10s

.field public static final MHD_PASSWORD:S = 0x80s

.field public static final MHD_PROTECT:S = 0x40s

.field public static final MHD_SOLID:S = 0x8s

.field public static final MHD_VOLUME:S = 0x1s

.field public static final SKIP_IF_UNKNOWN:S = 0x4000s


# instance fields
.field protected flags:S

.field protected headCRC:S

.field protected headerSize:S

.field protected headerType:B

.field protected positionInFile:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    .line 81
    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    .line 82
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    .line 83
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    .line 90
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V
    .locals 2
    .param p1, "bb"    # Lde/innosystec/unrar/rarfile/BaseBlock;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    .line 81
    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    .line 82
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    .line 83
    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    .line 93
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BaseBlock;->getFlags()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    .line 94
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    .line 95
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->getHeaderByte()B

    move-result v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    .line 96
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    .line 97
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->positionInFile:J

    .line 98
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "baseBlockHeader"    # [B

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    .line 81
    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    .line 82
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    .line 83
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "pos":I
    invoke-static {p1, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    .line 104
    add-int/lit8 v0, v0, 0x2

    .line 105
    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    invoke-static {p1, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    .line 108
    add-int/lit8 v0, v0, 0x2

    .line 109
    invoke-static {p1, v0}, Lde/innosystec/unrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    iput-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    .line 110
    return-void
.end method


# virtual methods
.method public getFlags()S
    .locals 1

    .prologue
    .line 144
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    return v0
.end method

.method public getHeadCRC()S
    .locals 1

    .prologue
    .line 148
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headCRC:S

    return v0
.end method

.method public getHeaderSize()S
    .locals 1

    .prologue
    .line 152
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerSize:S

    return v0
.end method

.method public getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;
    .locals 1

    .prologue
    .line 156
    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->findType(B)Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInFile()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->positionInFile:J

    return-wide v0
.end method

.method public hasArchiveDataCRC()Z
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryptVersion()Z
    .locals 1

    .prologue
    .line 121
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVolumeNumber()Z
    .locals 1

    .prologue
    .line 117
    iget-short v0, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubBlock()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v2, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->headerType:B

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-short v1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->flags:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HeaderType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nHeadCRC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeadCRC()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nFlags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getFlags()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nHeaderSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderSize()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nPosition in file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getPositionInFile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    return-void
.end method

.method public setPositionInFile(J)V
    .locals 0
    .param p1, "positionInFile"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lde/innosystec/unrar/rarfile/BaseBlock;->positionInFile:J

    .line 161
    return-void
.end method
