.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$3;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    .line 99
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x1fd

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 142
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    .line 143
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    .line 144
    const/16 v2, 0x2a

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    .line 145
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    .line 1030
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 213
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 214
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 215
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 220
    .local v0, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    const/4 v1, 0x1

    .line 223
    if-nez v1, :cond_0

    .line 224
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 225
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    :cond_0
    return-void

    .line 223
    .end local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 224
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 225
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 181
    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0
    .param p0, "zipfile"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .prologue
    .line 258
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 259
    return-void
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v0, "noUTF8Flag":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 485
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 486
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 488
    .local v1, "sig":J
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    :cond_0
    :goto_0
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 494
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 495
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 496
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_0

    .line 498
    :cond_1
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x14

    .line 738
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "found":Z
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 742
    .local v1, "searchedForZip64EOCD":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 743
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 744
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 745
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 748
    :cond_0
    if-nez v0, :cond_3

    .line 750
    if-eqz v1, :cond_1

    .line 751
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 753
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    .line 757
    :goto_1
    return-void

    .line 740
    .end local v1    # "searchedForZip64EOCD":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 755
    .restart local v1    # "searchedForZip64EOCD":Z
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    goto :goto_1
.end method

.method private positionAtCentralDirectory32()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 795
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 796
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 797
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 772
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 773
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 774
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 775
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_0
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 781
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 782
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 783
    return-void
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v6

    .line 807
    .local v6, "found":Z
    if-nez v6, :cond_0

    .line 808
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    return-void
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "noUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 514
    const/4 v13, 0x0

    .line 515
    .local v13, "off":I
    new-instance v14, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 516
    .local v14, "offset":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    new-instance v18, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V

    .line 518
    .local v18, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v17

    .line 519
    .local v17, "versionMadeBy":I
    add-int/lit8 v13, v13, 0x2

    .line 520
    shr-int/lit8 v19, v17, 0x8

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setPlatform(I)V

    .line 522
    add-int/lit8 v13, v13, 0x2

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v11

    .line 525
    .local v11, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v12

    .line 526
    .local v12, "hasUTF8Flag":Z
    if-eqz v12, :cond_1

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 528
    .local v7, "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 530
    add-int/lit8 v13, v13, 0x2

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setMethod(I)V

    .line 533
    add-int/lit8 v13, v13, 0x2

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v15

    .line 536
    .local v15, "time":J
    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setTime(J)V

    .line 537
    add-int/lit8 v13, v13, 0x4

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCrc(J)V

    .line 540
    add-int/lit8 v13, v13, 0x4

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCompressedSize(J)V

    .line 543
    add-int/lit8 v13, v13, 0x4

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setSize(J)V

    .line 546
    add-int/lit8 v13, v13, 0x4

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v10

    .line 549
    .local v10, "fileNameLen":I
    add-int/lit8 v13, v13, 0x2

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    .line 552
    .local v8, "extraLen":I
    add-int/lit8 v13, v13, 0x2

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    .line 555
    .local v5, "commentLen":I
    add-int/lit8 v13, v13, 0x2

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v6

    .line 558
    .local v6, "diskStart":I
    add-int/lit8 v13, v13, 0x2

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setInternalAttributes(I)V

    .line 561
    add-int/lit8 v13, v13, 0x2

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExternalAttributes(J)V

    .line 564
    add-int/lit8 v13, v13, 0x4

    .line 566
    new-array v9, v10, [B

    .line 567
    .local v9, "fileName":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 568
    invoke-interface {v7, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v19

    move-wide/from16 v0, v19

    # setter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v14, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-array v3, v8, [B

    .line 576
    .local v3, "cdExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 577
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V

    .line 581
    new-array v4, v5, [B

    .line 582
    .local v4, "comment":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 583
    invoke-interface {v7, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    .line 585
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 586
    new-instance v19, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_0
    return-void

    .line 526
    .end local v3    # "cdExtraData":[B
    .end local v4    # "comment":[B
    .end local v5    # "commentLen":I
    .end local v6    # "diskStart":I
    .end local v7    # "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v8    # "extraLen":I
    .end local v9    # "fileName":[B
    .end local v10    # "fileNameLen":I
    .end local v15    # "time":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto/16 :goto_0
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    .local p1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .local v15, "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v14, v15

    .line 895
    check-cast v14, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 896
    .local v14, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v12

    .line 897
    .local v12, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v12}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v10

    .line 898
    .local v10, "offset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x1a

    add-long v17, v17, v10

    invoke-virtual/range {v16 .. v18}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v4

    .line 901
    .local v4, "fileNameLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v3

    .line 903
    .local v3, "extraFieldLen":I
    move v6, v4

    .line 904
    .local v6, "lenToSkip":I
    :goto_1
    if-lez v6, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v13

    .line 906
    .local v13, "skipped":I
    if-gtz v13, :cond_0

    .line 907
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "failed to skip file name in local file header"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 910
    :cond_0
    sub-int/2addr v6, v13

    .line 911
    goto :goto_1

    .line 912
    .end local v13    # "skipped":I
    :cond_1
    new-array v7, v3, [B

    .line 913
    .local v7, "localExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 914
    invoke-virtual {v14, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExtra([B)V

    .line 915
    const-wide/16 v16, 0x1a

    add-long v16, v16, v10

    const-wide/16 v18, 0x2

    add-long v16, v16, v18

    const-wide/16 v18, 0x2

    add-long v16, v16, v18

    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    # setter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v12, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 918
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 919
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 920
    .local v9, "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B
    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v16

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B
    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 924
    .end local v9    # "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    :cond_2
    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 926
    .local v2, "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-nez v2, :cond_3

    .line 927
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 928
    .restart local v2    # "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    :cond_3
    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 932
    .end local v2    # "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v3    # "extraFieldLen":I
    .end local v4    # "fileNameLen":I
    .end local v6    # "lenToSkip":I
    .end local v7    # "localExtraData":[B
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "offset":J
    .end local v12    # "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v14    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .end local v15    # "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_4
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V
    .locals 10
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "offset"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .param p3, "diskStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 606
    sget-object v6, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 609
    .local v3, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-eqz v3, :cond_2

    .line 610
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 611
    .local v2, "hasUncompressedSize":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    move v0, v4

    .line 612
    .local v0, "hasCompressedSize":Z
    :goto_1
    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    move v1, v4

    .line 614
    .local v1, "hasRelativeHeaderOffset":Z
    :goto_2
    const v6, 0xffff

    if-ne p3, v6, :cond_6

    :goto_3
    invoke-virtual {v3, v2, v0, v1, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 619
    if-eqz v2, :cond_7

    .line 620
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 625
    :cond_0
    :goto_4
    if-eqz v0, :cond_8

    .line 626
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 631
    :cond_1
    :goto_5
    if-eqz v1, :cond_2

    .line 632
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    # setter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 636
    .end local v0    # "hasCompressedSize":Z
    .end local v1    # "hasRelativeHeaderOffset":Z
    .end local v2    # "hasUncompressedSize":Z
    :cond_2
    return-void

    :cond_3
    move v2, v5

    .line 610
    goto :goto_0

    .restart local v2    # "hasUncompressedSize":Z
    :cond_4
    move v0, v5

    .line 611
    goto :goto_1

    .restart local v0    # "hasCompressedSize":Z
    :cond_5
    move v1, v5

    .line 612
    goto :goto_2

    .restart local v1    # "hasRelativeHeaderOffset":Z
    :cond_6
    move v4, v5

    .line 614
    goto :goto_3

    .line 621
    :cond_7
    if-eqz v0, :cond_0

    .line 622
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_4

    .line 627
    :cond_8
    if-eqz v2, :cond_1

    .line 628
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_5
.end method

.method private skipBytes(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, "totalSkipped":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 859
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    .line 860
    .local v0, "skippedNow":I
    if-gtz v0, :cond_0

    .line 861
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 863
    :cond_0
    add-int/2addr v1, v0

    .line 864
    goto :goto_0

    .line 865
    .end local v0    # "skippedNow":I
    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 940
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 941
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 10
    .param p1, "minDistanceFromEnd"    # J
    .param p3, "maxDistanceFromEnd"    # J
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "found":Z
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v2, v6, p1

    .line 822
    .local v2, "off":J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long/2addr v6, p3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 824
    .local v4, "stopSearching":J
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 825
    :goto_0
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 826
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 827
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 828
    .local v0, "curr":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 846
    .end local v0    # "curr":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 847
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 849
    :cond_1
    return v1

    .line 831
    .restart local v0    # "curr":I
    :cond_2
    const/4 v6, 0x0

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 832
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 833
    const/4 v6, 0x1

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 834
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 835
    const/4 v6, 0x2

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 836
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 837
    const/4 v6, 0x3

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 838
    const/4 v1, 0x1

    .line 839
    goto :goto_1

    .line 825
    :cond_3
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 347
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 250
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 432
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 433
    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 317
    .local v0, "entriesOfThatName":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v0, :cond_0

    .end local v0    # "entriesOfThatName":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    return-object v0

    .restart local v0    # "entriesOfThatName":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 332
    .local v0, "entriesOfThatName":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entriesOfThatName":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 334
    .restart local v0    # "entriesOfThatName":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 285
    .local v0, "allEntries":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 303
    .local v0, "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 9
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 360
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v1, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 380
    :goto_0
    :pswitch_0
    return-object v0

    :cond_0
    move-object v1, p1

    .line 364
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v7

    .line 365
    .local v7, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 366
    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 367
    .local v2, "start":J
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 369
    .local v0, "bis":Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 388
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :pswitch_1
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 375
    :pswitch_2
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result v5

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4, v5, v8}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 378
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 379
    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 380
    .local v6, "inflater":Ljava/util/zip/Inflater;
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    invoke-direct {v1, p0, v0, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    const/4 v0, 0x0

    .line 411
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 413
    .local v1, "symlinkBytes":[B
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 415
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 420
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "symlinkBytes":[B
    :cond_0
    :goto_0
    return-object v2

    .line 415
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2

    .line 420
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
