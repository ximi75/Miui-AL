.class public Lnet/lingala/zip4j/core/HeaderWriter;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# instance fields
.field private final ZIP64_EXTRA_BUF:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lnet/lingala/zip4j/core/HeaderWriter;->ZIP64_EXTRA_BUF:I

    return-void
.end method

.method private byteArrayListToByteArray(Ljava/util/List;)[B
    .locals 4
    .param p1, "arrayList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v3, "input byte array list is null, cannot conver to byte array"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 948
    const/4 v1, 0x0

    .line 957
    :cond_1
    return-object v1

    .line 951
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    .line 953
    .local v1, "retBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 954
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v1, v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private copyByteArrayToArrayList([BLjava/util/List;)V
    .locals 3
    .param p1, "byteArray"    # [B
    .param p2, "arrayList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 933
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 934
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v2, "one of the input parameters is null, cannot copy byte array to array list"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 937
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 938
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_2
    return-void
.end method

.method private countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I
    .locals 5
    .param p1, "fileHeaders"    # Ljava/util/ArrayList;
    .param p2, "numOfDisk"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 962
    if-nez p1, :cond_0

    .line 963
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v4, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 966
    :cond_0
    const/4 v2, 0x0

    .line 967
    .local v2, "noEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 968
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 969
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 970
    add-int/lit8 v2, v2, 0x1

    .line 967
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    return v2
.end method

.method private processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "currSplitFileCounter":I
    :try_start_0
    instance-of v3, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v3, v0

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 373
    check-cast p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    .end local p2    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v3

    if-nez v3, :cond_1

    .line 379
    new-instance v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 381
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    if-nez v3, :cond_2

    .line 382
    new-instance v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 385
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 386
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 388
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 389
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    return-void

    .line 390
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private updateCompressedSizeInLocalFileHeader(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/LocalFileHeader;JJ[BZ)V
    .locals 7
    .param p1, "outputStream"    # Lnet/lingala/zip4j/io/SplitOutputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "offset"    # J
    .param p5, "toUpdate"    # J
    .param p7, "bytesToWrite"    # [B
    .param p8, "isZip64Format"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 896
    if-nez p1, :cond_0

    .line 897
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v4, "invalid output stream, cannot update compressed size for local file header"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isWriteComprSizeInZip64ExtraRecord()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 902
    array-length v3, p7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 903
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v4, "attempting to write a non 8-byte compressed size block for a zip64 file"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 916
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    add-long v3, p3, p5

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    :try_start_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long v1, v3, v5

    .line 917
    .local v1, "zip64CompressedSizeOffset":J
    const-wide/16 v3, 0x16

    cmp-long v3, p5, v3

    if-nez v3, :cond_2

    .line 918
    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    .line 920
    :cond_2
    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 921
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 930
    .end local v1    # "zip64CompressedSizeOffset":J
    :goto_0
    return-void

    .line 923
    :cond_3
    add-long v3, p3, p5

    invoke-virtual {p1, v3, v4}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 924
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "headerBytesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 405
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 406
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v5, "input parameters is null, cannot write central directory"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 412
    :cond_2
    const/4 v2, 0x0

    .line 421
    :cond_3
    return v2

    .line 415
    :cond_4
    const/4 v2, 0x0

    .line 416
    .local v2, "sizeOfCentralDir":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 417
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 418
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v3

    .line 419
    .local v3, "sizeOfFileHeader":I
    add-int/2addr v2, v3

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 12
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "sizeOfCentralDir"    # I
    .param p4, "offsetCentralDir"    # J
    .param p6, "headrBytesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 758
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 759
    :cond_0
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v10, "zip model or output stream is null, cannot write end of central directory record"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 764
    :cond_1
    const/4 v9, 0x2

    :try_start_0
    new-array v8, v9, [B

    .line 765
    .local v8, "shortByte":[B
    const/4 v9, 0x4

    new-array v4, v9, [B

    .line 766
    .local v4, "intByte":[B
    const/16 v9, 0x8

    new-array v5, v9, [B

    .line 769
    .local v5, "longByte":[B
    const/4 v9, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getSignature()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v4, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 770
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 773
    const/4 v9, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 774
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 777
    const/4 v9, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 778
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 781
    const/4 v6, 0x0

    .line 782
    .local v6, "numEntries":I
    const/4 v7, 0x0

    .line 783
    .local v7, "numEntriesOnThisDisk":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_3

    .line 785
    :cond_2
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v10, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v4    # "intByte":[B
    .end local v5    # "longByte":[B
    .end local v6    # "numEntries":I
    .end local v7    # "numEntriesOnThisDisk":I
    .end local v8    # "shortByte":[B
    :catch_0
    move-exception v3

    .line 833
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v9, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 788
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "intByte":[B
    .restart local v5    # "longByte":[B
    .restart local v6    # "numEntries":I
    .restart local v7    # "numEntriesOnThisDisk":I
    .restart local v8    # "shortByte":[B
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 789
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 790
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    move-result v7

    .line 796
    :goto_0
    const/4 v9, 0x0

    int-to-short v10, v7

    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 797
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 800
    const/4 v9, 0x0

    int-to-short v10, v6

    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 801
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 804
    const/4 v9, 0x0

    invoke-static {v4, v9, p3}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 805
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 808
    const-wide v9, 0xffffffffL

    cmp-long v9, p4, v9

    if-lez v9, :cond_7

    .line 809
    const/4 v9, 0x0

    const-wide v10, 0xffffffffL

    invoke-static {v5, v9, v10, v11}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 810
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v5, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 820
    :goto_1
    const/4 v2, 0x0

    .line 821
    .local v2, "commentLength":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getComment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 822
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentLength()I

    move-result v2

    .line 824
    :cond_4
    const/4 v9, 0x0

    int-to-short v10, v2

    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 825
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 828
    if-lez v2, :cond_5

    .line 829
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v9

    move-object/from16 v0, p6

    invoke-direct {p0, v9, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 835
    :cond_5
    return-void

    .line 793
    .end local v2    # "commentLength":I
    :cond_6
    move v7, v6

    goto :goto_0

    .line 813
    :cond_7
    const/4 v9, 0x0

    move-wide/from16 v0, p4

    invoke-static {v5, v9, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 814
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v5, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 23
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .param p4, "headerBytesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 427
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 428
    :cond_0
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v20, "input parameters is null, cannot write local file header"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 432
    :cond_1
    const/16 v16, 0x0

    .line 434
    .local v16, "sizeOfFileHeader":I
    const/16 v19, 0x2

    :try_start_0
    move/from16 v0, v19

    new-array v15, v0, [B

    .line 435
    .local v15, "shortByte":[B
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 436
    .local v12, "intByte":[B
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 437
    .local v13, "longByte":[B
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [B

    fill-array-data v9, :array_0

    .line 438
    .local v9, "emptyShortByte":[B
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v8, v0, [B

    fill-array-data v8, :array_1

    .line 440
    .local v8, "emptyIntByte":[B
    const/16 v17, 0x0

    .line 441
    .local v17, "writeZip64FileSize":Z
    const/16 v18, 0x0

    .line 443
    .local v18, "writeZip64OffsetLocalHeader":Z
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getSignature()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 445
    add-int/lit8 v16, v16, 0x4

    .line 447
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 449
    add-int/lit8 v16, v16, 0x2

    .line 451
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 453
    add-int/lit8 v16, v16, 0x2

    .line 455
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 456
    add-int/lit8 v16, v16, 0x2

    .line 458
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 460
    add-int/lit8 v16, v16, 0x2

    .line 462
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v6

    .line 463
    .local v6, "dateTime":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v12, v0, v6}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 465
    add-int/lit8 v16, v16, 0x4

    .line 467
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 469
    add-int/lit8 v16, v16, 0x4

    .line 471
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v19

    const-wide v21, 0xffffffffL

    cmp-long v19, v19, v21

    if-gez v19, :cond_2

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v19

    const-wide/16 v21, 0x32

    add-long v19, v19, v21

    const-wide v21, 0xffffffffL

    cmp-long v19, v19, v21

    if-ltz v19, :cond_d

    .line 473
    :cond_2
    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 474
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 477
    add-int/lit8 v16, v16, 0x4

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 480
    add-int/lit8 v16, v16, 0x4

    .line 482
    const/16 v17, 0x1

    .line 497
    :goto_0
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 499
    add-int/lit8 v16, v16, 0x2

    .line 503
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v14, v0, [B

    .line 504
    .local v14, "offsetLocalHeaderBytes":[B
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v19

    const-wide v21, 0xffffffffL

    cmp-long v19, v19, v21

    if-lez v19, :cond_e

    .line 505
    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 506
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    const/16 v18, 0x1

    .line 514
    :goto_1
    const/4 v10, 0x0

    .line 515
    .local v10, "extraFieldLength":I
    if-nez v17, :cond_3

    if-eqz v18, :cond_5

    .line 516
    :cond_3
    add-int/lit8 v10, v10, 0x4

    .line 517
    if-eqz v17, :cond_4

    .line 518
    add-int/lit8 v10, v10, 0x10

    .line 519
    :cond_4
    if-eqz v18, :cond_5

    .line 520
    add-int/lit8 v10, v10, 0x8

    .line 522
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 523
    add-int/lit8 v10, v10, 0xb

    .line 525
    :cond_6
    const/16 v19, 0x0

    int-to-short v0, v10

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 527
    add-int/lit8 v16, v16, 0x2

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v9, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 531
    add-int/lit8 v16, v16, 0x2

    .line 534
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 536
    add-int/lit8 v16, v16, 0x2

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v9, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 540
    add-int/lit8 v16, v16, 0x2

    .line 543
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v19

    if-eqz v19, :cond_f

    .line 544
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 548
    :goto_2
    add-int/lit8 v16, v16, 0x4

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v14, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 553
    add-int/lit8 v16, v16, 0x4

    .line 555
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 556
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 557
    .local v11, "fileNameBytes":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 558
    array-length v0, v11

    move/from16 v19, v0

    add-int/lit8 v16, v19, 0x2e

    .line 564
    .end local v11    # "fileNameBytes":[B
    :goto_3
    if-nez v17, :cond_7

    if-eqz v18, :cond_b

    .line 565
    :cond_7
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 568
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 570
    add-int/lit8 v16, v16, 0x2

    .line 573
    const/4 v5, 0x0

    .line 575
    .local v5, "dataSize":I
    if-eqz v17, :cond_8

    .line 576
    add-int/lit8 v5, v5, 0x10

    .line 578
    :cond_8
    if-eqz v18, :cond_9

    .line 579
    add-int/lit8 v5, v5, 0x8

    .line 582
    :cond_9
    const/16 v19, 0x0

    int-to-short v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 584
    add-int/lit8 v16, v16, 0x2

    .line 586
    if-eqz v17, :cond_a

    .line 587
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 589
    add-int/lit8 v16, v16, 0x8

    .line 591
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 593
    add-int/lit8 v16, v16, 0x8

    .line 596
    :cond_a
    if-eqz v18, :cond_b

    .line 597
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 599
    add-int/lit8 v16, v16, 0x8

    .line 603
    .end local v5    # "dataSize":I
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 604
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    .line 606
    .local v3, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 609
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 612
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 615
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 617
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 618
    .local v4, "aesStrengthBytes":[B
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v19

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 621
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 624
    add-int/lit8 v16, v16, 0xb

    .line 629
    .end local v3    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v4    # "aesStrengthBytes":[B
    :cond_c
    return v16

    .line 484
    .end local v10    # "extraFieldLength":I
    .end local v14    # "offsetLocalHeaderBytes":[B
    :cond_d
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 485
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 488
    add-int/lit8 v16, v16, 0x4

    .line 490
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 491
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 494
    add-int/lit8 v16, v16, 0x4

    goto/16 :goto_0

    .line 509
    .restart local v14    # "offsetLocalHeaderBytes":[B
    :cond_e
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v13, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 510
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 630
    .end local v6    # "dateTime":I
    .end local v8    # "emptyIntByte":[B
    .end local v9    # "emptyShortByte":[B
    .end local v12    # "intByte":[B
    .end local v13    # "longByte":[B
    .end local v14    # "offsetLocalHeaderBytes":[B
    .end local v15    # "shortByte":[B
    .end local v17    # "writeZip64FileSize":Z
    .end local v18    # "writeZip64OffsetLocalHeader":Z
    :catch_0
    move-exception v7

    .line 631
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 546
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dateTime":I
    .restart local v8    # "emptyIntByte":[B
    .restart local v9    # "emptyShortByte":[B
    .restart local v10    # "extraFieldLength":I
    .restart local v12    # "intByte":[B
    .restart local v13    # "longByte":[B
    .restart local v14    # "offsetLocalHeaderBytes":[B
    .restart local v15    # "shortByte":[B
    .restart local v17    # "writeZip64FileSize":Z
    .restart local v18    # "writeZip64OffsetLocalHeader":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    goto/16 :goto_2

    .line 560
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    add-int/lit8 v16, v19, 0x2e

    goto/16 :goto_3

    .line 437
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 438
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "headerBytesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 722
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 723
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v5, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_1
    const/4 v4, 0x4

    :try_start_0
    new-array v1, v4, [B

    .line 729
    .local v1, "intByte":[B
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 732
    .local v2, "longByte":[B
    const/4 v4, 0x0

    const v5, 0x7064b50

    invoke-static {v1, v4, v5}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 733
    invoke-direct {p0, v1, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 736
    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getNoOfDiskStartOfZip64EndOfCentralDirRec()I

    move-result v5

    invoke-static {v1, v4, v5}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 737
    invoke-direct {p0, v1, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 740
    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v5

    invoke-static {v2, v4, v5, v6}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 741
    invoke-direct {p0, v2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 744
    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getTotNumberOfDiscs()I

    move-result v5

    invoke-static {v1, v4, v5}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 745
    invoke-direct {p0, v1, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 751
    return-void

    .line 746
    .end local v1    # "intByte":[B
    .end local v2    # "longByte":[B
    :catch_0
    move-exception v3

    .line 747
    .local v3, "zipException":Lnet/lingala/zip4j/exception/ZipException;
    throw v3

    .line 748
    .end local v3    # "zipException":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 13
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "sizeOfCentralDir"    # I
    .param p4, "offsetCentralDir"    # J
    .param p6, "headerBytesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 638
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 639
    :cond_0
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v11, "zip model or output stream is null, cannot write zip64 end of central directory record"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 644
    :cond_1
    const/4 v10, 0x2

    :try_start_0
    new-array v8, v10, [B

    .line 645
    .local v8, "shortByte":[B
    const/4 v10, 0x2

    new-array v3, v10, [B

    fill-array-data v3, :array_0

    .line 646
    .local v3, "emptyShortByte":[B
    const/4 v10, 0x4

    new-array v4, v10, [B

    .line 647
    .local v4, "intByte":[B
    const/16 v10, 0x8

    new-array v5, v10, [B

    .line 650
    .local v5, "longByte":[B
    const/4 v10, 0x0

    const v11, 0x6064b50

    invoke-static {v4, v10, v11}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 651
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 654
    const/4 v10, 0x0

    const-wide/16 v11, 0x2c

    invoke-static {v5, v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 655
    move-object/from16 v0, p6

    invoke-direct {p0, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 659
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 662
    const/4 v11, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v8, v11, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 664
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 666
    const/4 v11, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v8, v11, v10}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 668
    move-object/from16 v0, p6

    invoke-direct {p0, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 675
    :goto_0
    const/4 v10, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v11

    invoke-static {v4, v10, v11}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 676
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 679
    const/4 v10, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v11

    invoke-static {v4, v10, v11}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 680
    move-object/from16 v0, p6

    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 683
    const/4 v6, 0x0

    .line 684
    .local v6, "numEntries":I
    const/4 v7, 0x0

    .line 685
    .local v7, "numEntriesOnThisDisk":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_4

    .line 687
    :cond_2
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v11, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    .end local v3    # "emptyShortByte":[B
    .end local v4    # "intByte":[B
    .end local v5    # "longByte":[B
    .end local v6    # "numEntries":I
    .end local v7    # "numEntriesOnThisDisk":I
    .end local v8    # "shortByte":[B
    :catch_0
    move-exception v9

    .line 714
    .local v9, "zipException":Lnet/lingala/zip4j/exception/ZipException;
    throw v9

    .line 670
    .end local v9    # "zipException":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v3    # "emptyShortByte":[B
    .restart local v4    # "intByte":[B
    .restart local v5    # "longByte":[B
    .restart local v8    # "shortByte":[B
    :cond_3
    :try_start_1
    move-object/from16 v0, p6

    invoke-direct {p0, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 671
    move-object/from16 v0, p6

    invoke-direct {p0, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 715
    .end local v3    # "emptyShortByte":[B
    .end local v4    # "intByte":[B
    .end local v5    # "longByte":[B
    .end local v8    # "shortByte":[B
    :catch_1
    move-exception v2

    .line 716
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v10, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 690
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "emptyShortByte":[B
    .restart local v4    # "intByte":[B
    .restart local v5    # "longByte":[B
    .restart local v6    # "numEntries":I
    .restart local v7    # "numEntriesOnThisDisk":I
    .restart local v8    # "shortByte":[B
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 691
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 692
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    .line 698
    :goto_1
    const/4 v10, 0x0

    int-to-long v11, v7

    invoke-static {v5, v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 699
    move-object/from16 v0, p6

    invoke-direct {p0, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 702
    const/4 v10, 0x0

    int-to-long v11, v6

    invoke-static {v5, v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 703
    move-object/from16 v0, p6

    invoke-direct {p0, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 706
    const/4 v10, 0x0

    move/from16 v0, p3

    int-to-long v11, v0

    invoke-static {v5, v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 707
    move-object/from16 v0, p6

    invoke-direct {p0, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 710
    const/4 v10, 0x0

    move-wide/from16 v0, p4

    invoke-static {v5, v10, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 711
    move-object/from16 v0, p6

    invoke-direct {p0, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 718
    return-void

    .line 695
    :cond_5
    move v7, v6

    goto :goto_1

    .line 645
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    .locals 4
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p3, :cond_0

    .line 344
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v3, "invalid buff to write as zip headers"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    :try_start_0
    instance-of v2, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v2, :cond_1

    .line 349
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v2, v0

    array-length v3, p3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->checkBuffSizeAndStartNextSplitFile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 246
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v2, "input parameters is null, cannot finalize zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/core/HeaderWriter;->processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 252
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v5

    .line 254
    .local v5, "offsetCentralDir":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v7, "headerBytesList":Ljava/util/List;
    invoke-direct {p0, p1, p2, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v4

    .line 258
    .local v4, "sizeOfCentralDir":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 262
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    if-nez v1, :cond_3

    .line 263
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 266
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    int-to-long v2, v4

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 267
    instance-of v1, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v1, :cond_5

    .line 268
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v1

    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 269
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 275
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 277
    invoke-direct {p0, p1, p2, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 280
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 282
    invoke-direct {p0, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V

    .line 288
    return-void

    .line 271
    :cond_5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 272
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 283
    .end local v4    # "sizeOfCentralDir":I
    .end local v5    # "offsetCentralDir":J
    .end local v7    # "headerBytesList":Ljava/util/List;
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v8

    .line 285
    .end local v8    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v8

    .line 286
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 301
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v1, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v6, "headerBytesList":Ljava/util/List;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v4

    .line 310
    .local v4, "offsetCentralDir":J
    invoke-direct {p0, p1, p2, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v3

    .line 312
    .local v3, "sizeOfCentralDir":I
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_2

    .line 314
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 316
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-nez v0, :cond_3

    .line 317
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 320
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    int-to-long v1, v3

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 322
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 323
    invoke-direct {p0, p1, p2, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 326
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 328
    invoke-direct {p0, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    return-void

    .line 329
    .end local v3    # "sizeOfCentralDir":I
    .end local v4    # "offsetCentralDir":J
    .end local v6    # "headerBytesList":Ljava/util/List;
    :catch_0
    move-exception v7

    .line 330
    .local v7, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v7

    .line 331
    .end local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v7

    .line 332
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public updateLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;JILnet/lingala/zip4j/model/ZipModel;[BILnet/lingala/zip4j/io/SplitOutputStream;)V
    .locals 19
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "offset"    # J
    .param p4, "toUpdate"    # I
    .param p5, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p6, "bytesToWrite"    # [B
    .param p7, "noOfDisk"    # I
    .param p8, "outputStream"    # Lnet/lingala/zip4j/io/SplitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 839
    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_0

    if-nez p5, :cond_1

    .line 840
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v3, "invalid input parameters, cannot update local file header"

    invoke-direct {v1, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    :cond_1
    const/4 v10, 0x0

    .line 845
    .local v10, "closeFlag":Z
    const/4 v2, 0x0

    .line 847
    .local v2, "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v1

    move/from16 v0, p7

    if-eq v0, v1, :cond_3

    .line 848
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p5 .. p5}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    .local v18, "zipFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    .line 850
    .local v17, "parentFile":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 851
    .local v16, "fileNameWithoutExt":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 852
    .local v15, "fileName":Ljava/lang/String;
    const/16 v1, 0x9

    move/from16 v0, p7

    if-ge v0, v1, :cond_2

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".z0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p7, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 857
    :goto_0
    new-instance v13, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    .line 858
    .end local v2    # "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .local v13, "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    const/4 v10, 0x1

    move-object v2, v13

    .line 863
    .end local v13    # "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v17    # "parentFile":Ljava/lang/String;
    .end local v18    # "zipFile":Ljava/io/File;
    .restart local v2    # "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_1
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v11

    .line 865
    .local v11, "currOffset":J
    if-nez v2, :cond_4

    .line 866
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v3, "invalid output stream handler, cannot update local file header"

    invoke-direct {v1, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v11    # "currOffset":J
    :catch_0
    move-exception v14

    .line 889
    .local v14, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 855
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "fileNameWithoutExt":Ljava/lang/String;
    .restart local v17    # "parentFile":Ljava/lang/String;
    .restart local v18    # "zipFile":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".z"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p7, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 860
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v17    # "parentFile":Ljava/lang/String;
    .end local v18    # "zipFile":Ljava/io/File;
    :cond_3
    move-object/from16 v2, p8

    goto :goto_1

    .line 869
    .restart local v11    # "currOffset":J
    :cond_4
    sparse-switch p4, :sswitch_data_0

    .line 882
    :goto_2
    if-eqz v10, :cond_5

    .line 883
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V

    .line 891
    :goto_3
    return-void

    .line 871
    :sswitch_0
    move/from16 v0, p4

    int-to-long v3, v0

    add-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 872
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    goto :goto_2

    .line 876
    :sswitch_1
    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual/range {p5 .. p5}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v9

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderWriter;->updateCompressedSizeInLocalFileHeader(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/LocalFileHeader;JJ[BZ)V

    goto :goto_2

    .line 885
    :cond_5
    move-object/from16 v0, p8

    invoke-virtual {v0, v11, v12}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 869
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 12
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v9, 0x0

    .line 201
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 202
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v8, "input parameters is null, cannot write extended local header"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 205
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "byteArrayList":Ljava/util/ArrayList;
    const/4 v7, 0x4

    new-array v4, v7, [B

    .line 209
    .local v4, "intByte":[B
    const v7, 0x8074b50

    invoke-static {v4, v9, v7}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 210
    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 213
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v4, v9, v7}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 214
    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 217
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v1

    .line 218
    .local v1, "compressedSize":J
    cmp-long v7, v1, v10

    if-ltz v7, :cond_2

    .line 219
    const-wide/32 v1, 0x7fffffff

    .line 221
    :cond_2
    long-to-int v7, v1

    invoke-static {v4, v9, v7}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 222
    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 225
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v5

    .line 226
    .local v5, "uncompressedSize":J
    cmp-long v7, v5, v10

    if-ltz v7, :cond_3

    .line 227
    const-wide/32 v5, 0x7fffffff

    .line 229
    :cond_3
    long-to-int v7, v5

    invoke-static {v4, v9, v7}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 230
    invoke-direct {p0, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 232
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v3

    .line 233
    .local v3, "extLocHdrBytes":[B
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 234
    array-length v7, v3

    return v7
.end method

.method public writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 23
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    const-string/jumbo v20, "input parameters are null, cannot write local file header"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 48
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v5, "byteArrayList":Ljava/util/ArrayList;
    const/4 v11, 0x0

    .line 52
    .local v11, "headerLength":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [B

    .line 53
    .local v15, "shortByte":[B
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 54
    .local v12, "intByte":[B
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v14, v0, [B

    .line 55
    .local v14, "longByte":[B
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v8, v0, [B

    fill-array-data v8, :array_0

    .line 57
    .local v8, "emptyLongByte":[B
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getSignature()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 58
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 59
    add-int/lit8 v11, v11, 0x4

    .line 61
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getVersionNeededToExtract()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 62
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 63
    add-int/lit8 v11, v11, 0x2

    .line 66
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 67
    add-int/lit8 v11, v11, 0x2

    .line 70
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 71
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 72
    add-int/lit8 v11, v11, 0x2

    .line 75
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v6

    .line 76
    .local v6, "dateTime":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v12, v0, v6}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 78
    add-int/lit8 v11, v11, 0x4

    .line 81
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 83
    add-int/lit8 v11, v11, 0x4

    .line 85
    const/16 v18, 0x0

    .line 88
    .local v18, "writingZip64Rec":Z
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v16

    .line 89
    .local v16, "uncompressedSize":J
    const-wide/16 v19, 0x32

    add-long v19, v19, v16

    const-wide v21, 0xffffffffL

    cmp-long v19, v19, v21

    if-ltz v19, :cond_5

    .line 90
    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v14, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 91
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v14, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 98
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 99
    const/16 v18, 0x1

    .line 100
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V

    .line 113
    :goto_0
    add-int/lit8 v11, v11, 0x8

    .line 115
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 117
    add-int/lit8 v11, v11, 0x2

    .line 120
    const/4 v9, 0x0

    .line 121
    .local v9, "extraFieldLength":I
    if-eqz v18, :cond_1

    .line 122
    add-int/lit8 v9, v9, 0x14

    .line 124
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 125
    add-int/lit8 v9, v9, 0xb

    .line 127
    :cond_2
    const/16 v19, 0x0

    int-to-short v0, v9

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 129
    add-int/lit8 v11, v11, 0x2

    .line 131
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 132
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 133
    .local v10, "fileNameBytes":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 134
    array-length v0, v10

    move/from16 v19, v0

    add-int/lit8 v11, v19, 0x1e

    .line 143
    .end local v10    # "fileNameBytes":[B
    :goto_1
    if-eqz v18, :cond_3

    .line 147
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 148
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 149
    add-int/lit8 v11, v11, 0x2

    .line 154
    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 156
    add-int/lit8 v11, v11, 0x2

    .line 159
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v14, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 160
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 161
    add-int/lit8 v11, v11, 0x8

    .line 164
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 165
    add-int/lit8 v11, v11, 0x8

    .line 168
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 169
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    .line 171
    .local v3, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 174
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 177
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 180
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 182
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 183
    .local v4, "aesStrengthBytes":[B
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v19

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 186
    const/16 v19, 0x0

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 187
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 189
    .end local v3    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v4    # "aesStrengthBytes":[B
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v13

    .line 190
    .local v13, "lhBytes":[B
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 191
    array-length v0, v13

    move/from16 v19, v0

    return v19

    .line 102
    .end local v9    # "extraFieldLength":I
    .end local v13    # "lhBytes":[B
    :cond_5
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v14, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 103
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v14, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 106
    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v14, v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 107
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v14, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 111
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 192
    .end local v5    # "byteArrayList":Ljava/util/ArrayList;
    .end local v6    # "dateTime":I
    .end local v8    # "emptyLongByte":[B
    .end local v11    # "headerLength":I
    .end local v12    # "intByte":[B
    .end local v14    # "longByte":[B
    .end local v15    # "shortByte":[B
    .end local v16    # "uncompressedSize":J
    .end local v18    # "writingZip64Rec":Z
    :catch_0
    move-exception v7

    .line 193
    .local v7, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v7

    .line 136
    .end local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v5    # "byteArrayList":Ljava/util/ArrayList;
    .restart local v6    # "dateTime":I
    .restart local v8    # "emptyLongByte":[B
    .restart local v9    # "extraFieldLength":I
    .restart local v11    # "headerLength":I
    .restart local v12    # "intByte":[B
    .restart local v14    # "longByte":[B
    .restart local v15    # "shortByte":[B
    .restart local v16    # "uncompressedSize":J
    .restart local v18    # "writingZip64Rec":Z
    :cond_6
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    add-int/lit8 v11, v19, 0x1e

    goto/16 :goto_1

    .line 194
    .end local v5    # "byteArrayList":Ljava/util/ArrayList;
    .end local v6    # "dateTime":I
    .end local v8    # "emptyLongByte":[B
    .end local v9    # "extraFieldLength":I
    .end local v11    # "headerLength":I
    .end local v12    # "intByte":[B
    .end local v14    # "longByte":[B
    .end local v15    # "shortByte":[B
    .end local v16    # "uncompressedSize":J
    .end local v18    # "writingZip64Rec":Z
    :catch_1
    move-exception v7

    .line 195
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 55
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
