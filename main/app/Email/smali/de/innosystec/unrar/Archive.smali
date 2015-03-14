.class public Lde/innosystec/unrar/Archive;
.super Ljava/lang/Object;
.source "Archive.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

.field private static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private arcDataCRC:J

.field private currentHeaderIndex:I

.field private final dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

.field private encrypted:Z

.field private endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

.field private file:Ljava/io/File;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/BaseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

.field private newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

.field private pass:Z

.field private password:Ljava/lang/String;

.field private rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

.field private saltRead:Z

.field private sfxSize:I

.field private stop:Z

.field private totalPackedRead:J

.field private totalPackedSize:J

.field private unpack:Lde/innosystec/unrar/unpack/Unpack;

.field private final unrarCallback:Lde/innosystec/unrar/UnrarCallback;


# direct methods
.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->values()[Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->BEEA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->EA_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->MAC_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->NTACL_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->STREAM_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->UO_HEAD:Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->values()[Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->AvHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->CommHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->EndArcHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MainHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->MarkHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ProtectHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SignHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->SubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lde/innosystec/unrar/Archive;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/innosystec/unrar/Archive;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lde/innosystec/unrar/UnrarCallback;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "unrarCallback"    # Lde/innosystec/unrar/UnrarCallback;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "test"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    .line 72
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 74
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    .line 76
    iput-object v1, p0, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/innosystec/unrar/Archive;->arcDataCRC:J

    .line 85
    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->encrypted:Z

    .line 87
    iput v2, p0, Lde/innosystec/unrar/Archive;->sfxSize:I

    .line 90
    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 93
    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 95
    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->saltRead:Z

    .line 101
    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->stop:Z

    .line 116
    iput-object p3, p0, Lde/innosystec/unrar/Archive;->password:Ljava/lang/String;

    .line 117
    new-instance v0, Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-direct {v0, p0}, Lde/innosystec/unrar/unpack/ComprDataIO;-><init>(Lde/innosystec/unrar/Archive;)V

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    .line 118
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v0, p4}, Lde/innosystec/unrar/unpack/ComprDataIO;->setTestMode(Z)V

    .line 119
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/Archive;->setFile(Ljava/io/File;)V

    .line 120
    iput-object p2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "test"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lde/innosystec/unrar/Archive;-><init>(Ljava/io/File;Lde/innosystec/unrar/UnrarCallback;Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method private doExtractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "hd"    # Lde/innosystec/unrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v1, p2}, Lde/innosystec/unrar/unpack/ComprDataIO;->init(Ljava/io/OutputStream;)V

    .line 506
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v1, p1}, Lde/innosystec/unrar/unpack/ComprDataIO;->init(Lde/innosystec/unrar/rarfile/FileHeader;)V

    .line 507
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->isOldFormat()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lde/innosystec/unrar/unpack/ComprDataIO;->setUnpFileCRC(J)V

    .line 508
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    if-nez v1, :cond_0

    .line 509
    new-instance v1, Lde/innosystec/unrar/unpack/Unpack;

    iget-object v2, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-direct {v1, v2}, Lde/innosystec/unrar/unpack/Unpack;-><init>(Lde/innosystec/unrar/unpack/ComprDataIO;)V

    iput-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    .line 511
    :cond_0
    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->isSolid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->init([B)V

    .line 514
    :cond_1
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullUnpackSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->setDestSize(J)V

    .line 516
    :try_start_0
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpVersion()B

    move-result v2

    invoke-virtual {p1}, Lde/innosystec/unrar/rarfile/FileHeader;->isSolid()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->doUnpack(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    return-void

    .line 507
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/Unpack;->cleanUp()V

    .line 535
    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_3

    .line 537
    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 539
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private readHeaders()V
    .locals 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 218
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    .line 219
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->clear()V

    .line 221
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    .line 222
    const/16 v46, 0x0

    .line 224
    .local v46, "toRead":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->length()J

    move-result-wide v23

    .line 226
    .local v23, "fileLength":J
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/Archive;->stop:Z

    move/from16 v50, v0

    if-eqz v50, :cond_2

    .line 476
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    const/16 v42, 0x0

    .line 228
    .local v42, "size":I
    const-wide/16 v31, 0x0

    .line 229
    .local v31, "newpos":J
    const/16 v50, 0x7

    move/from16 v0, v50

    new-array v6, v0, [B

    .line 230
    .local v6, "baseBlockBuffer":[B
    const/16 v50, 0x8

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v38, v0

    .line 232
    .local v38, "salt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lde/innosystec/unrar/io/IReadOnlyAccess;->getPosition()J

    move-result-wide v35

    .line 234
    .local v35, "position":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    if-eqz v50, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v50

    if-eqz v50, :cond_3

    const-wide/16 v50, 0x14

    cmp-long v50, v35, v50

    if-lez v50, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lde/innosystec/unrar/io/IReadOnlyAccess;->paddedSize()I

    move-result v50

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v51, v0

    add-int v50, v50, v51

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    add-long v31, v35, v50

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lde/innosystec/unrar/io/IReadOnlyAccess;->getPosition()J

    move-result-wide v35

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lde/innosystec/unrar/io/IReadOnlyAccess;->resetData()V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setSalt([B)V

    .line 243
    :cond_3
    cmp-long v50, v35, v23

    if-gez v50, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    if-eqz v50, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v50

    if-eqz v50, :cond_4

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    const/16 v51, 0x8

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v42

    .line 250
    if-eqz v42, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setSalt([B)V

    .line 254
    const/16 v42, 0x0

    .line 259
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    const/16 v51, 0x7

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-interface {v0, v6, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v42

    .line 260
    if-eqz v42, :cond_1

    .line 264
    new-instance v8, Lde/innosystec/unrar/rarfile/BaseBlock;

    invoke-direct {v8, v6}, Lde/innosystec/unrar/rarfile/BaseBlock;-><init>([B)V

    .line 266
    .local v8, "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    move-wide/from16 v0, v35

    invoke-virtual {v8, v0, v1}, Lde/innosystec/unrar/rarfile/BaseBlock;->setPositionInFile(J)V

    .line 267
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I

    move-result-object v50

    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v51

    aget v50, v50, v51

    packed-switch v50, :pswitch_data_0

    .line 357
    :pswitch_1
    const/16 v50, 0x4

    move/from16 v0, v50

    new-array v10, v0, [B

    .line 358
    .local v10, "blockHeaderBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    .line 359
    const/16 v51, 0x4

    .line 358
    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-interface {v0, v10, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v7

    .line 360
    .local v7, "bhsize":I
    new-instance v9, Lde/innosystec/unrar/rarfile/BlockHeader;

    invoke-direct {v9, v8, v10}, Lde/innosystec/unrar/rarfile/BlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 363
    .local v9, "blockHead":Lde/innosystec/unrar/rarfile/BlockHeader;
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$UnrarHeadertype()[I

    move-result-object v50

    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->ordinal()I

    move-result v51

    aget v50, v50, v51

    packed-switch v50, :pswitch_data_1

    .line 464
    :pswitch_2
    sget-object v50, Lde/innosystec/unrar/Archive;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v51, "Unknown Header"

    invoke-virtual/range {v50 .. v51}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 465
    new-instance v50, Lde/innosystec/unrar/exception/RarException;

    sget-object v51, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->notRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct/range {v50 .. v51}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v50

    .line 270
    .end local v7    # "bhsize":I
    .end local v9    # "blockHead":Lde/innosystec/unrar/rarfile/BlockHeader;
    .end local v10    # "blockHeaderBuffer":[B
    :pswitch_3
    new-instance v50, Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v0, v50

    invoke-direct {v0, v8}, Lde/innosystec/unrar/rarfile/MarkHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/MarkHeader;->isSignature()Z

    move-result v50

    if-nez v50, :cond_5

    .line 272
    new-instance v50, Lde/innosystec/unrar/exception/RarException;

    .line 273
    sget-object v51, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->badRarArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    .line 272
    invoke-direct/range {v50 .. v51}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v50

    .line 275
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    move-object/from16 v51, v0

    invoke-interface/range {v50 .. v51}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 280
    :pswitch_4
    const/16 v28, 0x0

    .line 281
    .local v28, "mainHeaderSize":I
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    move-result v50

    if-eqz v50, :cond_6

    const/16 v46, 0x7

    .line 283
    :goto_2
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 284
    .local v29, "mainbuff":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v29

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v28

    .line 285
    new-instance v30, Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/MainHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 286
    .local v30, "mainhead":Lde/innosystec/unrar/rarfile/MainHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    goto/16 :goto_0

    .line 282
    .end local v29    # "mainbuff":[B
    .end local v30    # "mainhead":Lde/innosystec/unrar/rarfile/MainHeader;
    :cond_6
    const/16 v46, 0x6

    goto :goto_2

    .line 296
    .end local v28    # "mainHeaderSize":I
    :pswitch_5
    const/16 v41, 0x0

    .line 297
    .local v41, "signHeaderSize":I
    const/16 v46, 0x8

    .line 298
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v39, v0

    .line 299
    .local v39, "signBuff":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v39

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v41

    .line 300
    new-instance v40, Lde/innosystec/unrar/rarfile/SignHeader;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/SignHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 301
    .local v40, "signHead":Lde/innosystec/unrar/rarfile/SignHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 307
    .end local v39    # "signBuff":[B
    .end local v40    # "signHead":Lde/innosystec/unrar/rarfile/SignHeader;
    .end local v41    # "signHeaderSize":I
    :pswitch_6
    const/4 v5, 0x0

    .line 308
    .local v5, "avHeaderSize":I
    const/16 v46, 0x7

    .line 309
    move/from16 v0, v46

    new-array v3, v0, [B

    .line 310
    .local v3, "avBuff":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v46

    invoke-interface {v0, v3, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v5

    .line 311
    new-instance v4, Lde/innosystec/unrar/rarfile/AVHeader;

    invoke-direct {v4, v8, v3}, Lde/innosystec/unrar/rarfile/AVHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 312
    .local v4, "avHead":Lde/innosystec/unrar/rarfile/AVHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 317
    .end local v3    # "avBuff":[B
    .end local v4    # "avHead":Lde/innosystec/unrar/rarfile/AVHeader;
    .end local v5    # "avHeaderSize":I
    :pswitch_7
    const/4 v13, 0x0

    .line 318
    .local v13, "commHeaderSize":I
    const/16 v46, 0x6

    .line 319
    move/from16 v0, v46

    new-array v11, v0, [B

    .line 320
    .local v11, "commBuff":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v46

    invoke-interface {v0, v11, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v13

    .line 321
    new-instance v12, Lde/innosystec/unrar/rarfile/CommentHeader;

    invoke-direct {v12, v8, v11}, Lde/innosystec/unrar/rarfile/CommentHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 322
    .local v12, "commHead":Lde/innosystec/unrar/rarfile/CommentHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v12}, Lde/innosystec/unrar/rarfile/CommentHeader;->getPositionInFile()J

    move-result-wide v50

    .line 326
    invoke-virtual {v12}, Lde/innosystec/unrar/rarfile/CommentHeader;->getHeaderSize()S

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    .line 325
    add-long v31, v50, v52

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_0

    .line 332
    .end local v11    # "commBuff":[B
    .end local v12    # "commHead":Lde/innosystec/unrar/rarfile/CommentHeader;
    .end local v13    # "commHeaderSize":I
    :pswitch_8
    const/16 v46, 0x0

    .line 333
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasArchiveDataCRC()Z

    move-result v50

    if-eqz v50, :cond_7

    .line 334
    add-int/lit8 v46, v46, 0x4

    .line 336
    :cond_7
    invoke-virtual {v8}, Lde/innosystec/unrar/rarfile/BaseBlock;->hasVolumeNumber()Z

    move-result v50

    if-eqz v50, :cond_8

    .line 337
    add-int/lit8 v46, v46, 0x2

    .line 340
    :cond_8
    if-lez v46, :cond_9

    .line 341
    const/16 v18, 0x0

    .line 342
    .local v18, "endArcHeaderSize":I
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 343
    .local v19, "endArchBuff":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v19

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v18

    .line 344
    new-instance v17, Lde/innosystec/unrar/rarfile/EndArcHeader;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/EndArcHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .line 351
    .end local v18    # "endArcHeaderSize":I
    .end local v19    # "endArchBuff":[B
    .local v17, "endArcHead":Lde/innosystec/unrar/rarfile/EndArcHeader;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/Archive;->endHeader:Lde/innosystec/unrar/rarfile/EndArcHeader;

    goto/16 :goto_1

    .line 349
    .end local v17    # "endArcHead":Lde/innosystec/unrar/rarfile/EndArcHeader;
    :cond_9
    new-instance v17, Lde/innosystec/unrar/rarfile/EndArcHeader;

    const/16 v50, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    invoke-direct {v0, v8, v1}, Lde/innosystec/unrar/rarfile/EndArcHeader;-><init>(Lde/innosystec/unrar/rarfile/BaseBlock;[B)V

    .restart local v17    # "endArcHead":Lde/innosystec/unrar/rarfile/EndArcHeader;
    goto :goto_3

    .line 371
    .end local v17    # "endArcHead":Lde/innosystec/unrar/rarfile/EndArcHeader;
    .restart local v7    # "bhsize":I
    .restart local v9    # "blockHead":Lde/innosystec/unrar/rarfile/BlockHeader;
    .restart local v10    # "blockHeaderBuffer":[B
    :pswitch_9
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v50

    add-int/lit8 v50, v50, -0x7

    add-int/lit8 v46, v50, -0x4

    .line 374
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 375
    .local v22, "fileHeaderBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v22

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v21

    .line 377
    .local v21, "fhsize":I
    new-instance v20, Lde/innosystec/unrar/rarfile/FileHeader;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/FileHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 381
    .local v20, "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getPositionInFile()J

    move-result-wide v50

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getHeaderSize()S

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v50, v50, v52

    .line 383
    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v52

    .line 382
    add-long v31, v50, v52

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    if-eqz v50, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v50

    if-eqz v50, :cond_a

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lde/innosystec/unrar/io/IReadOnlyAccess;->paddedSize()I

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/rarfile/FileHeader;->setPaddingSize(I)V

    .line 388
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lde/innosystec/unrar/unpack/ComprDataIO;->isTestMode()Z

    move-result v50

    if-eqz v50, :cond_0

    .line 389
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/Archive;->stop:Z

    goto/16 :goto_0

    .line 394
    .end local v20    # "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    .end local v21    # "fhsize":I
    .end local v22    # "fileHeaderBuffer":[B
    :pswitch_a
    invoke-virtual {v9}, Lde/innosystec/unrar/rarfile/BlockHeader;->getHeaderSize()S

    move-result v50

    add-int/lit8 v50, v50, -0x7

    add-int/lit8 v46, v50, -0x4

    .line 397
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v37, v0

    .line 398
    .local v37, "protectHeaderBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v37

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v34

    .line 399
    .local v34, "phsize":I
    new-instance v33, Lde/innosystec/unrar/rarfile/ProtectHeader;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/ProtectHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 403
    .local v33, "ph":Lde/innosystec/unrar/rarfile/ProtectHeader;
    invoke-virtual/range {v33 .. v33}, Lde/innosystec/unrar/rarfile/ProtectHeader;->getPositionInFile()J

    move-result-wide v50

    invoke-virtual/range {v33 .. v33}, Lde/innosystec/unrar/rarfile/ProtectHeader;->getHeaderSize()S

    move-result v52

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    add-long v31, v50, v52

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v31

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->setPosition(J)V

    goto/16 :goto_0

    .line 408
    .end local v33    # "ph":Lde/innosystec/unrar/rarfile/ProtectHeader;
    .end local v34    # "phsize":I
    .end local v37    # "protectHeaderBuffer":[B
    :pswitch_b
    const/16 v50, 0x3

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v44, v0

    .line 409
    .local v44, "subHeadbuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    .line 410
    const/16 v51, 0x3

    .line 409
    move-object/from16 v0, v50

    move-object/from16 v1, v44

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v45

    .line 411
    .local v45, "subheadersize":I
    new-instance v43, Lde/innosystec/unrar/rarfile/SubBlockHeader;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v0, v9, v1}, Lde/innosystec/unrar/rarfile/SubBlockHeader;-><init>(Lde/innosystec/unrar/rarfile/BlockHeader;[B)V

    .line 413
    .local v43, "subHead":Lde/innosystec/unrar/rarfile/SubBlockHeader;
    invoke-virtual/range {v43 .. v43}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->print()V

    .line 414
    invoke-static {}, Lde/innosystec/unrar/Archive;->$SWITCH_TABLE$de$innosystec$unrar$rarfile$SubBlockHeaderType()[I

    move-result-object v50

    invoke-virtual/range {v43 .. v43}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getSubType()Lde/innosystec/unrar/rarfile/SubBlockHeaderType;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lde/innosystec/unrar/rarfile/SubBlockHeaderType;->ordinal()I

    move-result v51

    aget v50, v50, v51

    packed-switch v50, :pswitch_data_2

    goto/16 :goto_0

    .line 430
    :pswitch_c
    const/16 v50, 0xa

    move/from16 v0, v50

    new-array v15, v0, [B

    .line 431
    .local v15, "eaHeaderBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    .line 432
    const/16 v51, 0xa

    .line 431
    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-interface {v0, v15, v1}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v16

    .line 433
    .local v16, "eaheadersize":I
    new-instance v14, Lde/innosystec/unrar/rarfile/EAHeader;

    move-object/from16 v0, v43

    invoke-direct {v14, v0, v15}, Lde/innosystec/unrar/rarfile/EAHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 435
    .local v14, "eaHeader":Lde/innosystec/unrar/rarfile/EAHeader;
    invoke-virtual {v14}, Lde/innosystec/unrar/rarfile/EAHeader;->print()V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 416
    .end local v14    # "eaHeader":Lde/innosystec/unrar/rarfile/EAHeader;
    .end local v15    # "eaHeaderBuffer":[B
    .end local v16    # "eaheadersize":I
    :pswitch_d
    const/16 v50, 0x8

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 417
    .local v26, "macHeaderbuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    .line 418
    const/16 v51, 0x8

    .line 417
    move-object/from16 v0, v50

    move-object/from16 v1, v26

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v27

    .line 419
    .local v27, "macheadersize":I
    new-instance v25, Lde/innosystec/unrar/rarfile/MacInfoHeader;

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/rarfile/MacInfoHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 421
    .local v25, "macHeader":Lde/innosystec/unrar/rarfile/MacInfoHeader;
    invoke-virtual/range {v25 .. v25}, Lde/innosystec/unrar/rarfile/MacInfoHeader;->print()V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 445
    .end local v25    # "macHeader":Lde/innosystec/unrar/rarfile/MacInfoHeader;
    .end local v26    # "macHeaderbuffer":[B
    .end local v27    # "macheadersize":I
    :pswitch_e
    invoke-virtual/range {v43 .. v43}, Lde/innosystec/unrar/rarfile/SubBlockHeader;->getHeaderSize()S

    move-result v46

    .line 446
    add-int/lit8 v46, v46, -0x7

    .line 447
    add-int/lit8 v46, v46, -0x4

    .line 448
    add-int/lit8 v46, v46, -0x3

    .line 449
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v48, v0

    .line 450
    .local v48, "uoHeaderBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    move-object/from16 v50, v0

    .line 451
    move-object/from16 v0, v50

    move-object/from16 v1, v48

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lde/innosystec/unrar/io/IReadOnlyAccess;->readFully([BI)I

    move-result v49

    .line 452
    .local v49, "uoHeaderSize":I
    new-instance v47, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;-><init>(Lde/innosystec/unrar/rarfile/SubBlockHeader;[B)V

    .line 454
    .local v47, "uoHeader":Lde/innosystec/unrar/rarfile/UnixOwnersHeader;
    invoke-virtual/range {v47 .. v47}, Lde/innosystec/unrar/rarfile/UnixOwnersHeader;->print()V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 363
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_9
    .end packed-switch

    .line 414
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bytesReadRead(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 158
    if-lez p1, :cond_0

    .line 159
    iget-wide v0, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 160
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    iget-wide v1, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 162
    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 161
    invoke-interface {v0, v1, v2, v3, v4}, Lde/innosystec/unrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 165
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    invoke-interface {v0}, Lde/innosystec/unrar/io/IReadOnlyAccess;->close()V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 564
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unpack:Lde/innosystec/unrar/unpack/Unpack;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/Unpack;->cleanUp()V

    .line 567
    :cond_1
    return-void
.end method

.method public extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "hd"    # Lde/innosystec/unrar/rarfile/FileHeader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v1, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    sget-object v2, Lde/innosystec/unrar/exception/RarException$RarExceptionType;->headerNotInArchive:Lde/innosystec/unrar/exception/RarException$RarExceptionType;

    invoke-direct {v1, v2}, Lde/innosystec/unrar/exception/RarException;-><init>(Lde/innosystec/unrar/exception/RarException$RarExceptionType;)V

    throw v1

    .line 493
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lde/innosystec/unrar/Archive;->doExtractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lde/innosystec/unrar/exception/RarException;

    if-eqz v1, :cond_1

    .line 496
    check-cast v0, Lde/innosystec/unrar/exception/RarException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 498
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lde/innosystec/unrar/exception/RarException;

    invoke-direct {v1, v0}, Lde/innosystec/unrar/exception/RarException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/rarfile/FileHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lde/innosystec/unrar/rarfile/FileHeader;>;"
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    return-object v1

    .line 176
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 177
    .local v0, "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    invoke-virtual {v3, v4}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    .end local v0    # "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    return-object v0
.end method

.method public getRof()Lde/innosystec/unrar/io/IReadOnlyAccess;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    return-object v0
.end method

.method public getUnrarCallback()Lde/innosystec/unrar/UnrarCallback;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->newMhd:Lde/innosystec/unrar/rarfile/MainHeader;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v0

    return v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mainheader is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOldFormat()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lde/innosystec/unrar/Archive;->markHead:Lde/innosystec/unrar/rarfile/MarkHeader;

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/MarkHeader;->isOldFormat()Z

    move-result v0

    return v0
.end method

.method public isPass()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lde/innosystec/unrar/Archive;->pass:Z

    return v0
.end method

.method public nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;
    .locals 5

    .prologue
    .line 185
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, "n":I
    :cond_0
    iget v2, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    if-lt v2, v1, :cond_1

    .line 192
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 187
    :cond_1
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    iget v3, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lde/innosystec/unrar/Archive;->currentHeaderIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 188
    .local v0, "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v2

    sget-object v3, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v2, v3, :cond_0

    .line 189
    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    goto :goto_0
.end method

.method setFile(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 128
    iput-object p1, p0, Lde/innosystec/unrar/Archive;->file:Ljava/io/File;

    .line 129
    iput-wide v2, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 130
    iput-wide v2, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 131
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->close()V

    .line 132
    new-instance v2, Lde/innosystec/unrar/io/ReadOnlyAccessFile;

    iget-object v3, p0, Lde/innosystec/unrar/Archive;->password:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lde/innosystec/unrar/io/ReadOnlyAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lde/innosystec/unrar/Archive;->rof:Lde/innosystec/unrar/io/IReadOnlyAccess;

    .line 135
    :try_start_0
    invoke-direct {p0}, Lde/innosystec/unrar/Archive;->readHeaders()V

    .line 136
    const/4 v2, 0x1

    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->pass:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lde/innosystec/unrar/Archive;->unrarCallback:Lde/innosystec/unrar/UnrarCallback;

    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedRead:J

    .line 153
    iget-wide v5, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    .line 152
    invoke-interface {v2, v3, v4, v5, v6}, Lde/innosystec/unrar/UnrarCallback;->volumeProgressChanged(JJ)V

    .line 155
    :cond_1
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lde/innosystec/unrar/Archive;->pass:Z

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/innosystec/unrar/rarfile/BaseBlock;

    .line 147
    .local v0, "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/BaseBlock;->getHeaderType()Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    move-result-object v3

    sget-object v4, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    if-ne v3, v4, :cond_0

    .line 148
    iget-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    check-cast v0, Lde/innosystec/unrar/rarfile/FileHeader;

    .end local v0    # "block":Lde/innosystec/unrar/rarfile/BaseBlock;
    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getFullPackSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/Archive;->totalPackedSize:J

    goto :goto_1
.end method

.method public test()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 574
    iget-object v4, p0, Lde/innosystec/unrar/Archive;->dataIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ComprDataIO;->isTestMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->isPass()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 587
    :cond_1
    :goto_0
    return v2

    .line 577
    :cond_2
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->getMainHeader()Lde/innosystec/unrar/rarfile/MainHeader;

    move-result-object v4

    invoke-virtual {v4}, Lde/innosystec/unrar/rarfile/MainHeader;->isEncrypted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 578
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v1

    .line 580
    .local v1, "fh":Lde/innosystec/unrar/rarfile/FileHeader;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Lde/innosystec/unrar/Archive;->extractFile(Lde/innosystec/unrar/rarfile/FileHeader;Ljava/io/OutputStream;)V

    .line 581
    invoke-virtual {p0}, Lde/innosystec/unrar/Archive;->nextFileHeader()Lde/innosystec/unrar/rarfile/FileHeader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 584
    goto :goto_0
.end method
