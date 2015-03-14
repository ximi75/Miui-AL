.class public final Lde/innosystec/unrar/unpack/Unpack;
.super Lde/innosystec/unrar/unpack/Unpack20;
.source "Unpack.java"


# static fields
.field public static DBitLengthCounts:[I


# instance fields
.field private externalWindow:Z

.field private fileExtracted:Z

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lastFilter:I

.field private lowDistRepCount:I

.field private oldFilterLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

.field private ppmError:Z

.field private ppmEscChar:I

.field private prevLowDist:I

.field private prgStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/innosystec/unrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

.field private tablesRead:Z

.field private unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

.field private unpOldTable:[B

.field private writtenFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 81
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    aput v2, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 82
    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0xd

    aput v2, v0, v1

    aput v2, v0, v5

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    .line 81
    sput-object v0, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    .line 82
    return-void
.end method

.method public constructor <init>(Lde/innosystec/unrar/unpack/ComprDataIO;)V
    .locals 2
    .param p1, "DataIO"    # Lde/innosystec/unrar/unpack/ComprDataIO;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack20;-><init>()V

    .line 43
    new-instance v0, Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    .line 47
    new-instance v0, Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-direct {v0}, Lde/innosystec/unrar/unpack/vm/RarVM;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 65
    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    .line 85
    iput-object p1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 87
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->externalWindow:Z

    .line 88
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    .line 89
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpAllBuf:Z

    .line 90
    iput-boolean v1, p0, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 91
    return-void
.end method

.method private ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V
    .locals 6
    .param p1, "Prg"    # Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    .prologue
    .line 988
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 990
    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v2, v2

    aput v2, v0, v1

    .line 993
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x24

    .line 994
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    long-to-int v3, v3

    .line 993
    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 997
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {p1}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v1

    const/16 v2, 0x28

    .line 998
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    .line 997
    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 999
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/vm/RarVM;->execute(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 1001
    :cond_0
    return-void
.end method

.method private UnpWriteArea(II)V
    .locals 4
    .param p1, "startPtr"    # I
    .param p2, "endPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 539
    if-eq p2, p1, :cond_0

    .line 540
    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 542
    :cond_0
    if-ge p2, p1, :cond_1

    .line 543
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    neg-int v1, p1

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 544
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 545
    iput-boolean v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpAllBuf:Z

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteData([BII)V

    goto :goto_0
.end method

.method private UnpWriteBuf()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v17, v0

    .line 366
    .local v17, "WrittenBorder":I
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    .line 367
    .local v16, "WriteSize":I
    const/4 v10, 0x0

    .local v10, "I":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v10, v0, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    .line 536
    :goto_1
    return-void

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 369
    .local v19, "flt":Lde/innosystec/unrar/unpack/UnpackFilter;
    if-nez v19, :cond_2

    .line 367
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 373
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    goto :goto_2

    .line 376
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v5

    .line 377
    .local v5, "BlockStart":I
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v4

    .line 378
    .local v4, "BlockLength":I
    sub-int v22, v5, v17

    const v23, 0x3fffff

    and-int v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 379
    move/from16 v0, v17

    if-eq v0, v5, :cond_4

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 381
    move/from16 v17, v5

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    .line 384
    :cond_4
    move/from16 v0, v16

    if-gt v4, v0, :cond_15

    .line 385
    add-int v22, v5, v4

    .line 386
    const v23, 0x3fffff

    .line 385
    and-int v3, v22, v23

    .line 387
    .local v3, "BlockEnd":I
    if-lt v5, v3, :cond_5

    if-nez v3, :cond_9

    .line 389
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5, v4}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 399
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v22, v0

    .line 400
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v23

    .line 399
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 400
    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v14

    .line 401
    .local v14, "ParentPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual/range {v19 .. v19}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v15

    .line 403
    .local v15, "Prg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 408
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 409
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 408
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 410
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 411
    add-int/lit8 v22, v22, -0x40

    .line 410
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 419
    .end local v20    # "i":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lde/innosystec/unrar/unpack/Unpack;->ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 421
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 423
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 424
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 425
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 426
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 425
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 429
    :cond_7
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_5
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 430
    add-int/lit8 v22, v22, -0x40

    .line 429
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 440
    .end local v20    # "i":I
    :goto_6
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v7

    .line 441
    .local v7, "FilteredDataOffset":I
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v8

    .line 442
    .local v8, "FilteredDataSize":I
    new-array v6, v8, [B

    .line 444
    .local v6, "FilteredData":[B
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_7
    move/from16 v0, v20

    if-lt v0, v8, :cond_d

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 451
    :goto_8
    add-int/lit8 v22, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 515
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v8}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 516
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpSomeRead:Z

    .line 517
    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    move-wide/from16 v22, v0

    int-to-long v0, v8

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    .line 518
    move/from16 v17, v3

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v22, v0

    sub-int v22, v22, v17

    const v23, 0x3fffff

    and-int v16, v22, v23

    .line 520
    goto/16 :goto_2

    .line 391
    .end local v6    # "FilteredData":[B
    .end local v7    # "FilteredDataOffset":I
    .end local v8    # "FilteredDataSize":I
    .end local v14    # "ParentPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v15    # "Prg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v20    # "i":I
    :cond_9
    const/high16 v22, 0x400000

    sub-int v9, v22, v5

    .line 393
    .local v9, "FirstPartLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5, v9}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    goto/16 :goto_3

    .line 412
    .end local v9    # "FirstPartLength":I
    .restart local v14    # "ParentPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .restart local v15    # "Prg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .restart local v20    # "i":I
    :cond_a
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 413
    add-int/lit8 v24, v20, 0x40

    .line 414
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 415
    add-int/lit8 v25, v20, 0x40

    .line 414
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 412
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 431
    :cond_b
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 432
    add-int/lit8 v24, v20, 0x40

    .line 433
    invoke-virtual {v15}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 434
    add-int/lit8 v25, v20, 0x40

    .line 433
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 431
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 437
    .end local v20    # "i":I
    :cond_c
    invoke-virtual {v14}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->clear()V

    goto/16 :goto_6

    .line 445
    .restart local v6    # "FilteredData":[B
    .restart local v7    # "FilteredDataOffset":I
    .restart local v8    # "FilteredDataSize":I
    .restart local v20    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/vm/RarVM;->getMem()[B

    move-result-object v22

    add-int v23, v7, v20

    aget-byte v22, v22, v23

    aput-byte v22, v6, v20

    .line 444
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 452
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 453
    .local v12, "NextFilter":Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v12, :cond_8

    .line 454
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockStart()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v5, :cond_8

    .line 455
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v8, :cond_8

    .line 456
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-nez v22, :cond_8

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2, v8}, Lde/innosystec/unrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v22, v0

    .line 464
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getParentFilter()I

    move-result v23

    .line 463
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 464
    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    .line 465
    .local v21, "pPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual {v12}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v13

    .line 467
    .local v13, "NextPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 471
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 472
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 471
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 474
    const/16 v20, 0x0

    :goto_9
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 475
    add-int/lit8 v22, v22, -0x40

    .line 474
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    .line 483
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/innosystec/unrar/unpack/Unpack;->ExecuteCode(Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 485
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 487
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 488
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 489
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 490
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    .line 489
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->setSize(I)V

    .line 493
    :cond_10
    const/16 v20, 0x0

    :goto_a
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    .line 494
    add-int/lit8 v22, v22, -0x40

    .line 493
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    .line 503
    :goto_b
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    move-result v7

    .line 504
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    move-result v8

    .line 506
    new-array v6, v8, [B

    .line 507
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-lt v0, v8, :cond_14

    .line 512
    add-int/lit8 v10, v10, 0x1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 476
    :cond_11
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 477
    add-int/lit8 v24, v20, 0x40

    .line 478
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 479
    add-int/lit8 v25, v20, 0x40

    .line 478
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 476
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 495
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v23

    .line 496
    add-int/lit8 v24, v20, 0x40

    .line 497
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 498
    add-int/lit8 v25, v20, 0x40

    .line 497
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    .line 495
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 501
    :cond_13
    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->clear()V

    goto :goto_b

    .line 508
    :cond_14
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v22

    .line 509
    add-int v23, v7, v20

    .line 508
    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Byte;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Byte;->byteValue()B

    move-result v22

    aput-byte v22, v6, v20

    .line 507
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 521
    .end local v3    # "BlockEnd":I
    .end local v6    # "FilteredData":[B
    .end local v7    # "FilteredDataOffset":I
    .end local v8    # "FilteredDataSize":I
    .end local v12    # "NextFilter":Lde/innosystec/unrar/unpack/UnpackFilter;
    .end local v13    # "NextPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v14    # "ParentPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v15    # "Prg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    .end local v20    # "i":I
    .end local v21    # "pPrg":Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;
    :cond_15
    move v11, v10

    .local v11, "J":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v11, v0, :cond_16

    .line 527
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    goto/16 :goto_1

    .line 522
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 523
    .local v18, "filt":Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Lde/innosystec/unrar/unpack/UnpackFilter;->isNextWindow()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 524
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 521
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_d
.end method

.method private UnpWriteData([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 565
    :goto_0
    return-void

    .line 556
    :cond_0
    move v2, p3

    .line 557
    .local v2, "writeSize":I
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    sub-long v0, v3, v5

    .line 558
    .local v0, "leftToWrite":J
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 559
    long-to-int v2, v0

    .line 561
    :cond_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v3, p1, p2, v2}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 563
    iget-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    goto :goto_0
.end method

.method private addVMCode(ILjava/util/List;I)Z
    .locals 23
    .param p1, "firstByte"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 809
    .local p2, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    new-instance v11, Lde/innosystec/unrar/unpack/vm/BitInput;

    invoke-direct {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;-><init>()V

    .line 810
    .local v11, "Inp":Lde/innosystec/unrar/unpack/vm/BitInput;
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->InitBitInput()V

    .line 812
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    const v20, 0x8000

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/RarVM;->init()V

    .line 818
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 819
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v7

    .line 820
    .local v7, "FiltPos":I
    if-nez v7, :cond_2

    .line 821
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->initFilters()V

    .line 828
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-gt v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-le v7, v0, :cond_4

    .line 829
    :cond_0
    const/16 v20, 0x0

    .line 984
    :goto_2
    return v20

    .line 813
    .end local v7    # "FiltPos":I
    :cond_1
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->getInBuf()[B

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v20

    aput-byte v20, v21, v18

    .line 812
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 823
    .restart local v7    # "FiltPos":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 825
    goto :goto_1

    .line 826
    .end local v7    # "FiltPos":I
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .restart local v7    # "FiltPos":I
    goto :goto_1

    .line 831
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 834
    .local v12, "NewFilter":Z
    :goto_3
    new-instance v13, Lde/innosystec/unrar/unpack/UnpackFilter;

    invoke-direct {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;-><init>()V

    .line 838
    .local v13, "StackFilter":Lde/innosystec/unrar/unpack/UnpackFilter;
    if-eqz v12, :cond_a

    .line 841
    const/16 v20, 0x400

    move/from16 v0, v20

    if-le v7, v0, :cond_6

    .line 842
    const/16 v20, 0x0

    goto :goto_2

    .line 832
    .end local v12    # "NewFilter":Z
    .end local v13    # "StackFilter":Lde/innosystec/unrar/unpack/UnpackFilter;
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 846
    .restart local v12    # "NewFilter":Z
    .restart local v13    # "StackFilter":Lde/innosystec/unrar/unpack/UnpackFilter;
    :cond_6
    new-instance v8, Lde/innosystec/unrar/unpack/UnpackFilter;

    invoke-direct {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;-><init>()V

    .line 847
    .local v8, "Filter":Lde/innosystec/unrar/unpack/UnpackFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 858
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 861
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v4

    .line 862
    .local v4, "BlockStart":I
    and-int/lit8 v20, p1, 0x40

    if-eqz v20, :cond_7

    .line 863
    add-int/lit16 v4, v4, 0x102

    .line 865
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v20, v0

    add-int v20, v20, v4

    const v21, 0x3fffff

    and-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockStart(I)V

    .line 866
    and-int/lit8 v20, p1, 0x20

    if-eqz v20, :cond_b

    .line 867
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockLength(I)V

    .line 874
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    const v21, 0x3fffff

    and-int v20, v20, v21

    move/from16 v0, v20

    if-gt v0, v4, :cond_d

    const/16 v20, 0x1

    .line 874
    :goto_6
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([II)V

    .line 884
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x3

    const v22, 0x3c000

    aput v22, v20, v21

    .line 885
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    aput v22, v20, v21

    .line 886
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    const/16 v21, 0x5

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v22

    aput v22, v20, v21

    .line 888
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_8

    .line 891
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v20

    ushr-int/lit8 v10, v20, 0x9

    .line 892
    .local v10, "InitMask":I
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 893
    const/4 v9, 0x0

    .local v9, "I":I
    :goto_7
    const/16 v20, 0x7

    move/from16 v0, v20

    if-lt v9, v0, :cond_e

    .line 901
    .end local v9    # "I":I
    .end local v10    # "InitMask":I
    :cond_8
    if-eqz v12, :cond_11

    .line 902
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v16

    .line 903
    .local v16, "VMCodeSize":I
    const/high16 v20, 0x10000

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    if-nez v16, :cond_10

    .line 904
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 853
    .end local v4    # "BlockStart":I
    .end local v8    # "Filter":Lde/innosystec/unrar/unpack/UnpackFilter;
    .end local v16    # "VMCodeSize":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/innosystec/unrar/unpack/UnpackFilter;

    .line 854
    .restart local v8    # "Filter":Lde/innosystec/unrar/unpack/UnpackFilter;
    invoke-virtual {v13, v7}, Lde/innosystec/unrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 855
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setExecCount(I)V

    goto/16 :goto_4

    .line 870
    .restart local v4    # "BlockStart":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    move-object/from16 v20, v0

    .line 871
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 870
    :goto_8
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lde/innosystec/unrar/unpack/UnpackFilter;->setBlockLength(I)V

    goto/16 :goto_5

    .line 872
    :cond_c
    const/16 v20, 0x0

    goto :goto_8

    .line 875
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 894
    .restart local v9    # "I":I
    .restart local v10    # "InitMask":I
    :cond_e
    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v10

    if-eqz v20, :cond_f

    .line 896
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v20

    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v21

    aput v21, v20, v9

    .line 893
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 906
    .end local v9    # "I":I
    .end local v10    # "InitMask":I
    .restart local v16    # "VMCodeSize":I
    :cond_10
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 907
    .local v15, "VMCode":[B
    const/4 v9, 0x0

    .restart local v9    # "I":I
    :goto_9
    move/from16 v0, v16

    if-lt v9, v0, :cond_14

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Lde/innosystec/unrar/unpack/vm/RarVM;->prepare([BILde/innosystec/unrar/unpack/vm/VMPreparedProgram;)V

    .line 917
    .end local v9    # "I":I
    .end local v15    # "VMCode":[B
    .end local v16    # "VMCodeSize":I
    :cond_11
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setAltCmd(Ljava/util/List;)V

    .line 918
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 920
    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v14

    .line 921
    .local v14, "StaticDataSize":I
    if-lez v14, :cond_12

    const/16 v20, 0x2000

    move/from16 v0, v20

    if-ge v14, v0, :cond_12

    .line 924
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->setStaticData(Ljava/util/Vector;)V

    .line 928
    :cond_12
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 931
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->clear()V

    .line 932
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    .line 933
    const/16 v21, 0x40

    .line 932
    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 937
    :cond_13
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v17

    .line 938
    .local v17, "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    const/4 v9, 0x0

    .restart local v9    # "I":I
    :goto_a
    const/16 v20, 0x7

    move/from16 v0, v20

    if-lt v9, v0, :cond_16

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getBlockLength()I

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x24

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x28

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getExecCount()I

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 955
    const/16 v18, 0x0

    :goto_b
    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_17

    .line 958
    and-int/lit8 v20, p1, 0x8

    if-eqz v20, :cond_1b

    .line 960
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 961
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 908
    .end local v14    # "StaticDataSize":I
    .end local v17    # "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    .restart local v15    # "VMCode":[B
    .restart local v16    # "VMCodeSize":I
    :cond_14
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 909
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 911
    :cond_15
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v20

    shr-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v15, v9

    .line 912
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 907
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 939
    .end local v15    # "VMCode":[B
    .end local v16    # "VMCodeSize":I
    .restart local v14    # "StaticDataSize":I
    .restart local v17    # "globalData":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Byte;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->rarVM:Lde/innosystec/unrar/unpack/vm/RarVM;

    move-object/from16 v20, v0

    mul-int/lit8 v21, v9, 0x4

    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v22

    .line 940
    invoke-virtual/range {v22 .. v22}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    move-result-object v22

    aget v22, v22, v9

    .line 939
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lde/innosystec/unrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 938
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 956
    :cond_17
    add-int/lit8 v20, v18, 0x30

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 955
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 963
    :cond_18
    invoke-static {v11}, Lde/innosystec/unrar/unpack/vm/RarVM;->ReadData(Lde/innosystec/unrar/unpack/vm/BitInput;)I

    move-result v6

    .line 964
    .local v6, "DataSize":I
    const/16 v20, 0x1fc0

    move/from16 v0, v20

    if-le v6, v0, :cond_19

    .line 965
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 967
    :cond_19
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v5

    .line 968
    .local v5, "CurSize":I
    add-int/lit8 v20, v6, 0x40

    move/from16 v0, v20

    if-ge v5, v0, :cond_1a

    .line 970
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v20

    .line 971
    add-int/lit8 v21, v6, 0x40

    sub-int v21, v21, v5

    .line 970
    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->setSize(I)V

    .line 973
    :cond_1a
    const/16 v19, 0x40

    .line 974
    .local v19, "offset":I
    invoke-virtual {v13}, Lde/innosystec/unrar/unpack/UnpackFilter;->getPrg()Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lde/innosystec/unrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    move-result-object v17

    .line 975
    const/4 v9, 0x0

    :goto_c
    if-lt v9, v6, :cond_1c

    .line 984
    .end local v5    # "CurSize":I
    .end local v6    # "DataSize":I
    .end local v19    # "offset":I
    :cond_1b
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 976
    .restart local v5    # "CurSize":I
    .restart local v6    # "DataSize":I
    .restart local v19    # "offset":I
    :cond_1c
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->Overflow(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 977
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 979
    :cond_1d
    add-int v20, v19, v9

    .line 980
    invoke-virtual {v11}, Lde/innosystec/unrar/unpack/vm/BitInput;->fgetbits()I

    move-result v21

    ushr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    .line 979
    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lde/innosystec/unrar/unpack/vm/BitInput;->faddbits(I)V

    .line 975
    add-int/lit8 v9, v9, 0x1

    goto :goto_c
.end method

.method private copyString(II)V
    .locals 8
    .param p1, "length"    # I
    .param p2, "distance"    # I

    .prologue
    const v7, 0x3fffff

    const v4, 0x3ffefc

    .line 582
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    sub-int v0, v3, p2

    .line 584
    .local v0, "destPtr":I
    if-ltz v0, :cond_2

    if-ge v0, v4, :cond_2

    .line 585
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    if-ge v3, v4, :cond_2

    .line 587
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "destPtr":I
    .local v1, "destPtr":I
    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    .line 589
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    move v0, v1

    .line 597
    .end local v1    # "destPtr":I
    .restart local v0    # "destPtr":I
    :goto_1
    return-void

    .line 591
    .end local v0    # "destPtr":I
    .restart local v1    # "destPtr":I
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "destPtr":I
    .restart local v0    # "destPtr":I
    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    move v1, v0

    .end local v0    # "destPtr":I
    .restart local v1    # "destPtr":I
    goto :goto_0

    .line 594
    :cond_1
    iget-object v3, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    iget-object v5, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "destPtr":I
    .restart local v0    # "destPtr":I
    and-int v6, v1, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 595
    iget v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v7

    iput v3, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    :cond_2
    move v1, v0

    .end local v0    # "destPtr":I
    .restart local v1    # "destPtr":I
    move v2, p1

    .line 593
    .end local p1    # "length":I
    .local v2, "length":I
    add-int/lit8 p1, v2, -0x1

    .end local v2    # "length":I
    .restart local p1    # "length":I
    if-nez v2, :cond_1

    move v0, v1

    .end local v1    # "destPtr":I
    .restart local v0    # "destPtr":I
    goto :goto_1
.end method

.method private initFilters()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack;->lastFilter:I

    .line 628
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->prgStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    return-void
.end method

.method private insertLastMatch(II)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "distance"    # I

    .prologue
    .line 575
    iput p2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    .line 576
    iput p1, p0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    .line 577
    return-void
.end method

.method private insertOldDist(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v2, v2, v5

    aput v2, v0, v1

    .line 569
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v1, v1, v4

    aput v1, v0, v5

    .line 570
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aget v1, v1, v3

    aput v1, v0, v4

    .line 571
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    aput p1, v0, v3

    .line 572
    return-void
.end method

.method private readEndOfBlock()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 634
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v0

    .line 635
    .local v0, "BitField":I
    const/4 v1, 0x0

    .line 636
    .local v1, "NewFile":Z
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    .line 637
    const/4 v2, 0x1

    .line 638
    .local v2, "NewTable":Z
    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 644
    :goto_0
    if-eqz v2, :cond_4

    move v5, v4

    :goto_1
    iput-boolean v5, p0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 645
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .line 640
    .end local v2    # "NewTable":Z
    :cond_2
    const/4 v1, 0x1

    .line 641
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_3

    move v2, v3

    .line 642
    .restart local v2    # "NewTable":Z
    :goto_2
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_0

    .end local v2    # "NewTable":Z
    :cond_3
    move v2, v4

    .line 641
    goto :goto_2

    .restart local v2    # "NewTable":Z
    :cond_4
    move v5, v3

    .line 644
    goto :goto_1
.end method

.method private readTables()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 649
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 651
    .local v10, "bitLength":[B
    const/16 v17, 0x194

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 652
    .local v14, "table":[B
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 653
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v17

    if-nez v17, :cond_0

    .line 654
    const/16 v17, 0x0

    .line 748
    :goto_0
    return v17

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inBit:I

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x8

    and-int/lit8 v17, v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    and-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-long v8, v0

    .line 659
    .local v8, "bitField":J
    const-wide/32 v17, 0x8000

    and-long v17, v17, v8

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1

    .line 660
    sget-object v17, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeInit(Lde/innosystec/unrar/unpack/Unpack;I)Z

    move-result v17

    goto :goto_0

    .line 663
    :cond_1
    sget-object v17, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    .line 665
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    .line 666
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 668
    const-wide/16 v17, 0x4000

    and-long v17, v17, v8

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([BB)V

    .line 671
    :cond_2
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 673
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v17, 0x14

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 693
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 695
    const/16 v7, 0x194

    .line 697
    .local v7, "TableSize":I
    const/4 v11, 0x0

    :cond_3
    :goto_2
    if-lt v11, v7, :cond_9

    .line 734
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 736
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 674
    .end local v7    # "TableSize":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 675
    .local v13, "length":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 676
    const/16 v17, 0xf

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 677
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 678
    .local v15, "zeroCount":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    .line 679
    if-nez v15, :cond_5

    .line 680
    const/16 v17, 0xf

    aput-byte v17, v10, v11

    .line 673
    .end local v15    # "zeroCount":I
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 682
    .restart local v15    # "zeroCount":I
    :cond_5
    add-int/lit8 v15, v15, 0x2

    move/from16 v16, v15

    .end local v15    # "zeroCount":I
    .local v16, "zeroCount":I
    move v12, v11

    .line 683
    .end local v11    # "i":I
    .local v12, "i":I
    :goto_4
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "zeroCount":I
    .restart local v15    # "zeroCount":I
    if-lez v16, :cond_6

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_7

    .line 686
    :cond_6
    add-int/lit8 v11, v12, -0x1

    .line 688
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_3

    .line 684
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_7
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    const/16 v17, 0x0

    aput-byte v17, v10, v12

    move/from16 v16, v15

    .end local v15    # "zeroCount":I
    .restart local v16    # "zeroCount":I
    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_4

    .line 689
    .end local v12    # "i":I
    .end local v16    # "zeroCount":I
    .restart local v11    # "i":I
    :cond_8
    int-to-byte v0, v13

    move/from16 v17, v0

    aput-byte v17, v10, v11

    goto :goto_3

    .line 698
    .end local v13    # "length":I
    .restart local v7    # "TableSize":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 699
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v17

    if-nez v17, :cond_a

    .line 700
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 703
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->BD:Lde/innosystec/unrar/unpack/decode/BitDecode;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v6

    .line 704
    .local v6, "Number":I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v11

    add-int v17, v17, v6

    and-int/lit8 v17, v17, 0xf

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v14, v11

    .line 706
    add-int/lit8 v11, v11, 0x1

    .line 707
    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ge v6, v0, :cond_d

    .line 709
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ne v6, v0, :cond_c

    .line 710
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xd

    add-int/lit8 v4, v17, 0x3

    .line 711
    .local v4, "N":I
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .line 716
    .end local v4    # "N":I
    .local v5, "N":I
    :goto_5
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "N":I
    .restart local v4    # "N":I
    if-lez v5, :cond_3

    if-ge v11, v7, :cond_3

    .line 717
    add-int/lit8 v17, v11, -0x1

    aget-byte v17, v14, v17

    aput-byte v17, v14, v11

    .line 718
    add-int/lit8 v11, v11, 0x1

    move v5, v4

    .end local v4    # "N":I
    .restart local v5    # "N":I
    goto :goto_5

    .line 713
    .end local v5    # "N":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0x9

    add-int/lit8 v4, v17, 0xb

    .line 714
    .restart local v4    # "N":I
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .line 716
    .end local v4    # "N":I
    .restart local v5    # "N":I
    goto :goto_5

    .line 722
    .end local v5    # "N":I
    :cond_d
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ne v6, v0, :cond_f

    .line 723
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0xd

    add-int/lit8 v4, v17, 0x3

    .line 724
    .restart local v4    # "N":I
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .end local v4    # "N":I
    .restart local v5    # "N":I
    move v12, v11

    .line 729
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :goto_6
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "N":I
    .restart local v4    # "N":I
    if-lez v5, :cond_e

    if-lt v12, v7, :cond_10

    :cond_e
    move v11, v12

    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_2

    .line 726
    .end local v4    # "N":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->fgetbits()I

    move-result v17

    ushr-int/lit8 v17, v17, 0x9

    add-int/lit8 v4, v17, 0xb

    .line 727
    .restart local v4    # "N":I
    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->faddbits(I)V

    move v5, v4

    .end local v4    # "N":I
    .restart local v5    # "N":I
    move v12, v11

    .line 729
    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_6

    .line 730
    .end local v5    # "N":I
    .restart local v4    # "N":I
    :cond_10
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    const/16 v17, 0x0

    aput-byte v17, v14, v12

    move v5, v4

    .end local v4    # "N":I
    .restart local v5    # "N":I
    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_6

    .line 738
    .end local v5    # "N":I
    .end local v6    # "Number":I
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x12b

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 739
    const/16 v17, 0x12b

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 740
    const/16 v17, 0x167

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 741
    const/16 v17, 0x178

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    move-object/from16 v18, v0

    .line 742
    const/16 v19, 0x1c

    .line 741
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lde/innosystec/unrar/unpack/Unpack;->makeDecodeTables([BILde/innosystec/unrar/unpack/decode/Decode;I)V

    .line 745
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v11, v0, :cond_12

    .line 748
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 746
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    move-object/from16 v17, v0

    aget-byte v18, v14, v11

    aput-byte v18, v17, v11

    .line 745
    add-int/lit8 v11, v11, 0x1

    goto :goto_7
.end method

.method private readVMCode()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 753
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v0, v4, 0x8

    .line 754
    .local v0, "FirstByte":I
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 755
    and-int/lit8 v4, v0, 0x7

    add-int/lit8 v2, v4, 0x1

    .line 756
    .local v2, "Length":I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_1

    .line 757
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v4, 0x7

    .line 758
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 763
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v3, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "I":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 771
    invoke-direct {p0, v0, v3, v2}, Lde/innosystec/unrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v4

    :goto_2
    return v4

    .line 759
    .end local v1    # "I":I
    .end local v3    # "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_1
    if-ne v2, v6, :cond_0

    .line 760
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v2

    .line 761
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_0

    .line 765
    .restart local v1    # "I":I
    .restart local v3    # "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_2
    iget v4, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    iget v5, p0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_3

    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_3

    .line 766
    const/4 v4, 0x0

    goto :goto_2

    .line 768
    :cond_3
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p0, v6}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private readVMCodePPM()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 775
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v3

    .line 776
    .local v3, "FirstByte":I
    if-ne v3, v9, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v7

    .line 779
    :cond_1
    and-int/lit8 v8, v3, 0x7

    add-int/lit8 v5, v8, 0x1

    .line 780
    .local v5, "Length":I
    const/4 v8, 0x7

    if-ne v5, v8, :cond_3

    .line 781
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    .line 782
    .local v0, "B1":I
    if-eq v0, v9, :cond_0

    .line 785
    add-int/lit8 v5, v0, 0x7

    .line 797
    .end local v0    # "B1":I
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v6, "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "I":I
    :goto_2
    if-lt v4, v5, :cond_4

    .line 805
    invoke-direct {p0, v3, v6, v5}, Lde/innosystec/unrar/unpack/Unpack;->addVMCode(ILjava/util/List;I)Z

    move-result v7

    goto :goto_0

    .line 786
    .end local v4    # "I":I
    .end local v6    # "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_3
    const/16 v8, 0x8

    if-ne v5, v8, :cond_2

    .line 787
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v0

    .line 788
    .restart local v0    # "B1":I
    if-eq v0, v9, :cond_0

    .line 791
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v1

    .line 792
    .local v1, "B2":I
    if-eq v1, v9, :cond_0

    .line 795
    mul-int/lit16 v8, v0, 0x100

    add-int v5, v8, v1

    goto :goto_1

    .line 799
    .end local v0    # "B1":I
    .end local v1    # "B2":I
    .restart local v4    # "I":I
    .restart local v6    # "vmCode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    iget-object v8, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v8}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v2

    .line 800
    .local v2, "Ch":I
    if-eq v2, v9, :cond_0

    .line 803
    int-to-byte v8, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private unpack29(Z)V
    .locals 27
    .param p1, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 141
    const/16 v23, 0x3c

    move/from16 v0, v23

    new-array v7, v0, [I

    .line 142
    .local v7, "DDecode":[I
    const/16 v23, 0x3c

    move/from16 v0, v23

    new-array v6, v0, [B

    .line 146
    .local v6, "DBits":[B
    const/16 v23, 0x1

    aget v23, v7, v23

    if-nez v23, :cond_0

    .line 147
    const/4 v8, 0x0

    .local v8, "Dist":I
    const/4 v3, 0x0

    .local v3, "BitLength":I
    const/16 v19, 0x0

    .line 148
    .local v19, "Slot":I
    const/4 v12, 0x0

    .local v12, "I":I
    :goto_0
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_2

    .line 157
    .end local v3    # "BitLength":I
    .end local v8    # "Dist":I
    .end local v12    # "I":I
    .end local v19    # "Slot":I
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    .line 159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 160
    invoke-virtual/range {p0 .. p1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData(Z)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v23

    if-nez v23, :cond_4

    .line 362
    :cond_1
    :goto_1
    return-void

    .line 149
    .restart local v3    # "BitLength":I
    .restart local v8    # "Dist":I
    .restart local v12    # "I":I
    .restart local v19    # "Slot":I
    :cond_2
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->DBitLengthCounts:[I

    aget v21, v23, v12

    .line 150
    .local v21, "count":I
    const/4 v13, 0x0

    .local v13, "J":I
    :goto_2
    move/from16 v0, v21

    if-lt v13, v0, :cond_3

    .line 148
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_3
    aput v8, v7, v19

    .line 152
    int-to-byte v0, v3

    move/from16 v23, v0

    aput-byte v23, v6, v19

    .line 150
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v19, v19, 0x1

    const/16 v23, 0x1

    shl-int v23, v23, v3

    add-int v8, v8, v23

    goto :goto_2

    .line 164
    .end local v3    # "BitLength":I
    .end local v8    # "Dist":I
    .end local v12    # "I":I
    .end local v13    # "J":I
    .end local v19    # "Slot":I
    .end local v21    # "count":I
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 174
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v23, v0

    const v24, 0x3fffff

    and-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->readBorder:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 177
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    move-result v23

    if-nez v23, :cond_9

    .line 360
    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteBuf()V

    goto :goto_1

    .line 183
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    const v24, 0x3fffff

    and-int v23, v23, v24

    const/16 v24, 0x104

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 186
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->UnpWriteBuf()V

    .line 187
    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gtz v23, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 191
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    goto/16 :goto_1

    .line 195
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpBlockType:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v23, v0

    sget-object v24, Lde/innosystec/unrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lde/innosystec/unrar/unpack/ppm/BlockTypes;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v5

    .line 197
    .local v5, "Ch":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_b

    .line 198
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    goto :goto_4

    .line 201
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_13

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v17

    .line 203
    .local v17, "NextCh":I
    if-nez v17, :cond_c

    .line 204
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readTables()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 209
    :cond_c
    const/16 v23, 0x2

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 212
    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 213
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readVMCodePPM()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 218
    :cond_d
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 219
    const/4 v11, 0x0

    .local v11, "Distance":I
    const/4 v14, 0x0

    .line 220
    .local v14, "Length":I
    const/16 v22, 0x0

    .line 221
    .local v22, "failed":Z
    const/4 v12, 0x0

    .restart local v12    # "I":I
    :goto_5
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v12, v0, :cond_e

    if-eqz v22, :cond_f

    .line 235
    :cond_e
    if-nez v22, :cond_8

    .line 238
    add-int/lit8 v23, v14, 0x20

    add-int/lit8 v24, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 222
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v20

    .line 223
    .local v20, "ch":I
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 224
    const/16 v22, 0x1

    .line 221
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 226
    :cond_10
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v12, v0, :cond_11

    .line 228
    move/from16 v0, v20

    and-int/lit16 v14, v0, 0xff

    .line 229
    goto :goto_6

    .line 231
    :cond_11
    shl-int/lit8 v23, v11, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int v11, v23, v24

    goto :goto_6

    .line 241
    .end local v11    # "Distance":I
    .end local v12    # "I":I
    .end local v14    # "Length":I
    .end local v20    # "ch":I
    .end local v22    # "failed":Z
    :cond_12
    const/16 v23, 0x5

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->decodeChar()I

    move-result v14

    .line 243
    .restart local v14    # "Length":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_8

    .line 246
    add-int/lit8 v23, v14, 0x4

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 250
    .end local v14    # "Length":I
    .end local v17    # "NextCh":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_14

    .line 251
    const/high16 v23, 0x400000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 253
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_3

    .line 257
    .end local v5    # "Ch":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LD:Lde/innosystec/unrar/unpack/decode/LitDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v18

    .line 258
    .local v18, "Number":I
    const/16 v23, 0x100

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_16

    .line 260
    const/high16 v23, 0x400000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 262
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    goto/16 :goto_3

    .line 265
    :cond_17
    const/16 v23, 0x10f

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_1f

    .line 266
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LDecode:[I

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x10f

    move/from16 v18, v0

    aget v23, v23, v18

    add-int/lit8 v14, v23, 0x3

    .line 267
    .restart local v14    # "Length":I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LBits:[B

    aget-byte v4, v23, v18

    .local v4, "Bits":I
    if-lez v4, :cond_18

    .line 268
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v14, v14, v23

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 272
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->DD:Lde/innosystec/unrar/unpack/decode/DistDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v10

    .line 273
    .local v10, "DistNumber":I
    aget v23, v7, v10

    add-int/lit8 v11, v23, 0x1

    .line 274
    .restart local v11    # "Distance":I
    aget-byte v4, v6, v10

    if-lez v4, :cond_1a

    .line 275
    const/16 v23, 0x9

    move/from16 v0, v23

    if-le v10, v0, :cond_1e

    .line 276
    const/16 v23, 0x4

    move/from16 v0, v23

    if-le v4, v0, :cond_19

    .line 277
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x14

    ushr-int v23, v23, v24

    shl-int/lit8 v23, v23, 0x4

    add-int v11, v11, v23

    .line 278
    add-int/lit8 v23, v4, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 280
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    move/from16 v23, v0

    if-lez v23, :cond_1c

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 299
    :cond_1a
    :goto_7
    const/16 v23, 0x2000

    move/from16 v0, v23

    if-lt v11, v0, :cond_1b

    .line 300
    add-int/lit8 v14, v14, 0x1

    .line 301
    int-to-long v0, v11

    move-wide/from16 v23, v0

    const-wide/32 v25, 0x40000

    cmp-long v23, v23, v25

    if-ltz v23, :cond_1b

    .line 302
    add-int/lit8 v14, v14, 0x1

    .line 306
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertOldDist(I)V

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 284
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->LDD:Lde/innosystec/unrar/unpack/decode/LowDistDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v16

    .line 285
    .local v16, "LowDist":I
    const/16 v23, 0x10

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 286
    const/16 v23, 0xf

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->lowDistRepCount:I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 288
    goto :goto_7

    .line 289
    :cond_1d
    add-int v11, v11, v16

    .line 290
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lde/innosystec/unrar/unpack/Unpack;->prevLowDist:I

    goto :goto_7

    .line 294
    .end local v16    # "LowDist":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v11, v11, v23

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    goto :goto_7

    .line 312
    .end local v4    # "Bits":I
    .end local v10    # "DistNumber":I
    .end local v11    # "Distance":I
    .end local v14    # "Length":I
    :cond_1f
    const/16 v23, 0x100

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 313
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readEndOfBlock()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 318
    :cond_20
    const/16 v23, 0x101

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_21

    .line 319
    invoke-direct/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->readVMCode()Z

    move-result v23

    if-nez v23, :cond_7

    goto/16 :goto_4

    .line 324
    :cond_21
    const/16 v23, 0x102

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 330
    :cond_22
    const/16 v23, 0x107

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_25

    .line 331
    move/from16 v0, v18

    add-int/lit16 v9, v0, -0x103

    .line 332
    .local v9, "DistNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    aget v11, v23, v9

    .line 333
    .restart local v11    # "Distance":I
    move v12, v9

    .restart local v12    # "I":I
    :goto_8
    if-gtz v12, :cond_24

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v11, v23, v24

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->RD:Lde/innosystec/unrar/unpack/decode/RepDecode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/Unpack;->decodeNumber(Lde/innosystec/unrar/unpack/decode/Decode;)I

    move-result v15

    .line 339
    .local v15, "LengthNumber":I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LDecode:[I

    aget v23, v23, v15

    add-int/lit8 v14, v23, 0x2

    .line 340
    .restart local v14    # "Length":I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->LBits:[B

    aget-byte v4, v23, v15

    .restart local v4    # "Bits":I
    if-lez v4, :cond_23

    .line 341
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v14, v14, v23

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 344
    :cond_23
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3

    .line 334
    .end local v4    # "Bits":I
    .end local v14    # "Length":I
    .end local v15    # "LengthNumber":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    aget v24, v24, v25

    aput v24, v23, v12

    .line 333
    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 348
    .end local v9    # "DistNum":I
    .end local v11    # "Distance":I
    .end local v12    # "I":I
    :cond_25
    const/16 v23, 0x110

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 349
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->SDDecode:[I

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x107

    move/from16 v18, v0

    aget v23, v23, v18

    add-int/lit8 v11, v23, 0x1

    .line 350
    .restart local v11    # "Distance":I
    sget-object v23, Lde/innosystec/unrar/unpack/Unpack;->SDBits:[I

    aget v4, v23, v18

    .restart local v4    # "Bits":I
    if-lez v4, :cond_26

    .line 351
    invoke-virtual/range {p0 .. p0}, Lde/innosystec/unrar/unpack/Unpack;->getbits()I

    move-result v23

    rsub-int/lit8 v24, v4, 0x10

    ushr-int v23, v23, v24

    add-int v11, v11, v23

    .line 352
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lde/innosystec/unrar/unpack/Unpack;->addbits(I)V

    .line 354
    :cond_26
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertOldDist(I)V

    .line 355
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lde/innosystec/unrar/unpack/Unpack;->insertLastMatch(II)V

    .line 356
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lde/innosystec/unrar/unpack/Unpack;->copyString(II)V

    goto/16 :goto_3
.end method

.method private unstoreFile()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 125
    const/high16 v2, 0x10000

    new-array v0, v2, [B

    .line 127
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    array-length v3, v0

    int-to-long v3, v3

    .line 128
    iget-wide v5, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    .line 127
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v0, v7, v3}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpRead([BII)I

    move-result v1

    .line 129
    .local v1, "code":I
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 137
    :cond_1
    return-void

    .line 131
    :cond_2
    int-to-long v2, v1

    iget-wide v4, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 132
    :goto_1
    iget-object v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v2, v0, v7, v1}, Lde/innosystec/unrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 133
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 134
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    goto :goto_0

    .line 131
    :cond_3
    iget-wide v2, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    long-to-int v1, v2

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 1049
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppm:Lde/innosystec/unrar/unpack/ppm/ModelPPM;

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/ModelPPM;->getSubAlloc()Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    move-result-object v0

    .line 1051
    .local v0, "allocator":Lde/innosystec/unrar/unpack/ppm/SubAllocator;
    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 1055
    .end local v0    # "allocator":Lde/innosystec/unrar/unpack/ppm/SubAllocator;
    :cond_0
    return-void
.end method

.method public doUnpack(IZ)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "solid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpIO:Lde/innosystec/unrar/unpack/ComprDataIO;

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ComprDataIO;->getSubHeader()Lde/innosystec/unrar/rarfile/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lde/innosystec/unrar/rarfile/FileHeader;->getUnpMethod()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->unstoreFile()V

    .line 109
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 111
    :sswitch_0
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack15(Z)V

    goto :goto_0

    .line 115
    :sswitch_1
    invoke-virtual {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack20(Z)V

    goto :goto_0

    .line 119
    :sswitch_2
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/Unpack;->unpack29(Z)V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public getChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lde/innosystec/unrar/exception/RarException;
        }
    .end annotation

    .prologue
    .line 1034
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_0

    .line 1035
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->unpReadBuf()Z

    .line 1037
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->inBuf:[B

    iget v1, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getPpmEscChar()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    return v0
.end method

.method public init([B)V
    .locals 2
    .param p1, "window"    # [B

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/high16 v0, 0x400000

    new-array v0, v0, [B

    iput-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 100
    :goto_0
    iput v1, p0, Lde/innosystec/unrar/unpack/Unpack;->inAddr:I

    .line 101
    invoke-virtual {p0, v1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData(Z)V

    .line 102
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Lde/innosystec/unrar/unpack/Unpack;->window:[B

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->externalWindow:Z

    goto :goto_0
.end method

.method public isFileExtracted()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    return v0
.end method

.method public setDestSize(J)V
    .locals 1
    .param p1, "destSize"    # J

    .prologue
    .line 1025
    iput-wide p1, p0, Lde/innosystec/unrar/unpack/Unpack;->destUnpSize:J

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/innosystec/unrar/unpack/Unpack;->fileExtracted:Z

    .line 1027
    return-void
.end method

.method public setPpmEscChar(I)V
    .locals 0
    .param p1, "ppmEscChar"    # I

    .prologue
    .line 1045
    iput p1, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    .line 1046
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspended"    # Z

    .prologue
    .line 1030
    iput-boolean p1, p0, Lde/innosystec/unrar/unpack/Unpack;->suspended:Z

    .line 1031
    return-void
.end method

.method protected unpInitData(Z)V
    .locals 3
    .param p1, "solid"    # Z

    .prologue
    const/4 v2, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 601
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/Unpack;->tablesRead:Z

    .line 602
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDist:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 604
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->oldDistPtr:I

    .line 605
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastDist:I

    .line 606
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->lastLength:I

    .line 608
    iget-object v0, p0, Lde/innosystec/unrar/unpack/Unpack;->unpOldTable:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 610
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->unpPtr:I

    .line 611
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->wrPtr:I

    .line 612
    const/4 v0, 0x2

    iput v0, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmEscChar:I

    .line 614
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/Unpack;->initFilters()V

    .line 616
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/Unpack;->InitBitInput()V

    .line 617
    iput-boolean v2, p0, Lde/innosystec/unrar/unpack/Unpack;->ppmError:Z

    .line 618
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/innosystec/unrar/unpack/Unpack;->writtenFileSize:J

    .line 619
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->readTop:I

    .line 620
    iput v2, p0, Lde/innosystec/unrar/unpack/Unpack;->readBorder:I

    .line 621
    invoke-virtual {p0, p1}, Lde/innosystec/unrar/unpack/Unpack;->unpInitData20(Z)V

    .line 622
    return-void
.end method
