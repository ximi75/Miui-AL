.class public Lde/innosystec/unrar/unpack/ComprDataIO;
.super Ljava/lang/Object;
.source "ComprDataIO.java"


# instance fields
.field private final archive:Lde/innosystec/unrar/Archive;

.field private curPackRead:J

.field private curPackWrite:J

.field private curUnpRead:J

.field private curUnpWrite:J

.field private currentCommand:C

.field private decryption:I

.field private encryption:I

.field private inputStream:Ljava/io/InputStream;

.field private lastPercent:I

.field private nextVolumeMissing:Z

.field private outputStream:Ljava/io/OutputStream;

.field private packFileCRC:J

.field private packVolume:Z

.field private packedCRC:J

.field private processedArcSize:J

.field private skipUnpCRC:Z

.field private subHead:Lde/innosystec/unrar/rarfile/FileHeader;

.field private testMode:Z

.field private totalArcSize:J

.field private totalPackRead:J

.field private unpArcSize:J

.field private unpFileCRC:J

.field private unpPackedSize:J

.field private unpVolume:Z


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/Archive;)V
    .locals 0
    .param p1, "arc"    # Lde/innosystec/unrar/Archive;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    .line 82
    return-void
.end method


# virtual methods
.method public getCurPackRead()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    return-wide v0
.end method

.method public getCurPackWrite()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    return-wide v0
.end method

.method public getCurUnpRead()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    return-wide v0
.end method

.method public getCurUnpWrite()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    return-wide v0
.end method

.method public getDecryption()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    return v0
.end method

.method public getEncryption()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    return v0
.end method

.method public getPackFileCRC()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    return-wide v0
.end method

.method public getPackedCRC()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    return-wide v0
.end method

.method public getProcessedArcSize()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    return-wide v0
.end method

.method public getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    return-object v0
.end method

.method public getTotalArcSize()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    return-wide v0
.end method

.method public getTotalPackRead()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    return-wide v0
.end method

.method public getUnpArcSize()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpArcSize:J

    return-wide v0
.end method

.method public getUnpFileCRC()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    return-wide v0
.end method

.method public init(Lde/innosystec/unrar/rarfile/FileHeader;)V
    .locals 9
    .param p1, "hd"    # Lde/innosystec/unrar/rarfile/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 106
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v0

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v2

    int-to-long v5, v2

    add-long v3, v0, v5

    .line 107
    .local v3, "startPos":J
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getPaddedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 111
    new-instance v0, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;

    .line 112
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v1}, Lde/innosystec/unrar/Archive;->getRof()Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-result-object v1

    .line 115
    iget-wide v5, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    add-long/2addr v5, v3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lde/innosystec/unrar/io/ReadOnlyAccessInputStream;-><init>(Lde/innosystec/unrar/io/IReadOnlyAccess;Lde/innosystec/unrar/rarfile/FileHeader;JJ)V

    .line 111
    iput-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    .line 116
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 117
    iput-wide v7, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 118
    iput-wide v7, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 120
    return-void
.end method

.method public init(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    .line 86
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 87
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    .line 88
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 89
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    .line 90
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    .line 91
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 93
    iput v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    .line 94
    iput v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    .line 95
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    .line 96
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->lastPercent:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 101
    iput-char v2, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->currentCommand:C

    .line 102
    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    .line 103
    return-void
.end method

.method public isNextVolumeMissing()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    return v0
.end method

.method public isPackVolume()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    return v0
.end method

.method public isUnpVolume()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    return v0
.end method

.method public setCurPackRead(J)V
    .locals 0
    .param p1, "curPackRead"    # J

    .prologue
    .line 217
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackRead:J

    .line 218
    return-void
.end method

.method public setCurPackWrite(J)V
    .locals 0
    .param p1, "curPackWrite"    # J

    .prologue
    .line 227
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curPackWrite:J

    .line 228
    return-void
.end method

.method public setCurUnpRead(J)V
    .locals 0
    .param p1, "curUnpRead"    # J

    .prologue
    .line 237
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 238
    return-void
.end method

.method public setCurUnpWrite(J)V
    .locals 0
    .param p1, "curUnpWrite"    # J

    .prologue
    .line 247
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 248
    return-void
.end method

.method public setDecryption(I)V
    .locals 0
    .param p1, "decryption"    # I

    .prologue
    .line 257
    iput p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->decryption:I

    .line 258
    return-void
.end method

.method public setEncryption(I)V
    .locals 0
    .param p1, "encryption"    # I

    .prologue
    .line 267
    iput p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->encryption:I

    .line 268
    return-void
.end method

.method public setNextVolumeMissing(Z)V
    .locals 0
    .param p1, "nextVolumeMissing"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    .line 278
    return-void
.end method

.method public setPackFileCRC(J)V
    .locals 0
    .param p1, "packFileCRC"    # J

    .prologue
    .line 295
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packFileCRC:J

    .line 296
    return-void
.end method

.method public setPackVolume(Z)V
    .locals 0
    .param p1, "packVolume"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packVolume:Z

    .line 306
    return-void
.end method

.method public setPackedCRC(J)V
    .locals 0
    .param p1, "packedCRC"    # J

    .prologue
    .line 285
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 286
    return-void
.end method

.method public setPackedSizeToRead(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 187
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 188
    return-void
.end method

.method public setProcessedArcSize(J)V
    .locals 0
    .param p1, "processedArcSize"    # J

    .prologue
    .line 315
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->processedArcSize:J

    .line 316
    return-void
.end method

.method public setSkipUnpCRC(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    .line 202
    return-void
.end method

.method public setSubHeader(Lde/innosystec/unrar/rarfile/FileHeader;)V
    .locals 0
    .param p1, "hd"    # Lde/innosystec/unrar/rarfile/FileHeader;

    .prologue
    .line 206
    iput-object p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    .line 208
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    .line 193
    return-void
.end method

.method public setTotalArcSize(J)V
    .locals 0
    .param p1, "totalArcSize"    # J

    .prologue
    .line 325
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalArcSize:J

    .line 326
    return-void
.end method

.method public setTotalPackRead(J)V
    .locals 0
    .param p1, "totalPackRead"    # J

    .prologue
    .line 335
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->totalPackRead:J

    .line 336
    return-void
.end method

.method public setUnpArcSize(J)V
    .locals 0
    .param p1, "unpArcSize"    # J

    .prologue
    .line 345
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpArcSize:J

    .line 346
    return-void
.end method

.method public setUnpFileCRC(J)V
    .locals 0
    .param p1, "unpFileCRC"    # J

    .prologue
    .line 355
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 356
    return-void
.end method

.method public setUnpVolume(Z)V
    .locals 0
    .param p1, "unpVolume"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpVolume:Z

    .line 366
    return-void
.end method

.method public unpRead([BII)I
    .locals 8
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 124
    const/4 v1, 0x0

    .local v1, "retCode":I
    const/4 v2, 0x0

    .line 125
    .local v2, "totalRead":I
    :cond_0
    if-gtz p3, :cond_3

    .line 153
    :cond_1
    if-eq v1, v3, :cond_2

    .line 154
    move v1, v2

    :cond_2
    move v3, v1

    .line 156
    :goto_0
    return v3

    .line 126
    :cond_3
    int-to-long v4, p3

    iget-wide v6, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    long-to-int v0, v4

    .line 127
    .local v0, "readSize":I
    :goto_1
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 128
    if-gez v1, :cond_5

    .line 129
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .end local v0    # "readSize":I
    :cond_4
    move v0, p3

    .line 126
    goto :goto_1

    .line 131
    .restart local v0    # "readSize":I
    :cond_5
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    long-to-int v4, v4

    .line 132
    invoke-static {v4, p1, p2, v1}, Lde/innosystec/unrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->packedCRC:J

    .line 136
    :cond_6
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpRead:J

    .line 137
    add-int/2addr v2, v1

    .line 138
    add-int/2addr p2, v1

    .line 139
    sub-int/2addr p3, v1

    .line 140
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    .line 141
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v4, v1}, Lde/innosystec/unrar/Archive;->bytesReadRead(I)V

    .line 142
    iget-wide v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpPackedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->subHead:Lde/innosystec/unrar/rarfile/FileHeader;

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/FileHeader;->isSplitAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-static {v4, p0}, Lde/innosystec/unrar/Volume;->mergeArchive(Lde/innosystec/unrar/Archive;Lde/innosystec/unrar/unpack/ComprDataIO;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const/4 v4, 0x1

    iput-boolean v4, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->nextVolumeMissing:Z

    goto :goto_0
.end method

.method public unpWrite([BII)V
    .locals 4
    .param p1, "addr"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->testMode:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    :cond_0
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->curUnpWrite:J

    .line 170
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->skipUnpCRC:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->archive:Lde/innosystec/unrar/Archive;

    invoke-virtual {v0}, Lde/innosystec/unrar/Archive;->isOldFormat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    int-to-short v0, v0

    .line 172
    invoke-static {v0, p1, p3}, Lde/innosystec/unrar/crc/RarCRC;->checkOldCrc(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    long-to-int v0, v0

    .line 176
    invoke-static {v0, p1, p2, p3}, Lde/innosystec/unrar/crc/RarCRC;->checkCrc(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/ComprDataIO;->unpFileCRC:J

    goto :goto_0
.end method
