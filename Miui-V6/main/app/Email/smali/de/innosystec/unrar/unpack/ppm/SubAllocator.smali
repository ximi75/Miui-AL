.class public Lde/innosystec/unrar/unpack/ppm/SubAllocator;
.super Ljava/lang/Object;
.source "SubAllocator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FIXED_UNIT_SIZE:I = 0xc

.field public static final N1:I = 0x4

.field public static final N2:I = 0x4

.field public static final N3:I = 0x4

.field public static final N4:I = 0x1a

.field public static final N_INDEXES:I = 0x26

.field public static final UNIT_SIZE:I


# instance fields
.field private fakeUnitsStart:I

.field private final freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

.field private freeListPos:I

.field private glueCount:I

.field private heap:[B

.field private heapEnd:I

.field private heapStart:I

.field private hiUnit:I

.field private indx2Units:[I

.field private loUnit:I

.field private pText:I

.field private subAllocatorSize:I

.field private tempMemBlockPos:I

.field private tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

.field private tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

.field private units2Indx:[I

.field private unitsStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->$assertionsDisabled:Z

    .line 34
    sget v0, Lde/innosystec/unrar/unpack/ppm/PPMContext;->size:I

    .line 35
    const/16 v1, 0xc

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    .line 37
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x26

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v2, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    .line 43
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    .line 49
    new-array v0, v2, [Lde/innosystec/unrar/unpack/ppm/RarNode;

    iput-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 61
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 62
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 63
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 64
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 67
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->clean()V

    .line 68
    return-void
.end method

.method private MBPtr(II)I
    .locals 1
    .param p1, "BasePtr"    # I
    .param p2, "Items"    # I

    .prologue
    .line 99
    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private U2B(I)I
    .locals 1
    .param p1, "NU"    # I

    .prologue
    .line 94
    sget v0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private allocUnitsRare(I)I
    .locals 5
    .param p1, "indx"    # I

    .prologue
    .line 217
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    if-nez v3, :cond_0

    .line 218
    const/16 v3, 0xff

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 219
    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueFreeBlocks()V

    .line 220
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 240
    :goto_0
    return v2

    .line 224
    :cond_0
    move v0, p1

    .line 226
    .local v0, "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    .line 227
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    .line 228
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p1

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v0

    .line 229
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p1

    mul-int/lit8 v1, v3, 0xc

    .line 230
    .local v1, "j":I
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    iget v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    sub-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 231
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    sub-int/2addr v3, v1

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 232
    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    sub-int/2addr v3, v0

    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 233
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 237
    .end local v1    # "j":I
    :cond_3
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 239
    .local v2, "retVal":I
    invoke-direct {p0, v2, v0, p1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    goto :goto_0
.end method

.method private glueFreeBlocks()V
    .locals 11

    .prologue
    const v10, 0xffff

    const/16 v9, 0x80

    .line 171
    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 172
    .local v4, "s0":Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v4, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 173
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 174
    .local v2, "p":Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 176
    .local v3, "p1":Lde/innosystec/unrar/unpack/ppm/RarMemBlock;
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-eq v6, v7, :cond_0

    .line 177
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 179
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setPrev(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    invoke-virtual {v4, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNext(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    :goto_0
    const/16 v6, 0x26

    if-lt v0, v6, :cond_2

    .line 187
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    :goto_1
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 201
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 202
    :goto_2
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 214
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 182
    invoke-virtual {v2, v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->insertAt(Lde/innosystec/unrar/unpack/ppm/RarMemBlock;)V

    .line 183
    invoke-virtual {v2, v10}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setStamp(I)V

    .line 184
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v6, v6, v0

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 180
    :cond_2
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v6

    if-nez v6, :cond_1

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    .line 193
    :goto_3
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getStamp()I

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    add-int/2addr v6, v7

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_5

    .line 188
    :cond_4
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_1

    .line 194
    :cond_5
    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->remove()V

    .line 195
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v6

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setNU(I)V

    .line 196
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v3, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_3

    .line 203
    :cond_6
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->remove()V

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNU()I

    move-result v5

    .local v5, "sz":I
    :goto_4
    if-gt v5, v9, :cond_8

    .line 207
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v8, v5, -0x1

    aget v0, v7, v8

    aget v6, v6, v0

    if-eq v6, v5, :cond_7

    .line 208
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    sub-int v1, v5, v6

    .line 209
    .local v1, "k":I
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    sub-int v7, v5, v1

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    add-int/lit8 v7, v1, -0x1

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 211
    .end local v1    # "k":I
    :cond_7
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-direct {p0, v6, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 212
    invoke-virtual {v4}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getNext()I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto/16 :goto_2

    .line 205
    :cond_8
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    const/16 v7, 0x25

    invoke-direct {p0, v6, v7}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 203
    add-int/lit8 v5, v5, -0x80

    .line 204
    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->getAddress()I

    move-result v6

    invoke-direct {p0, v6, v9}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->MBPtr(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;->setAddress(I)V

    goto :goto_4
.end method

.method private insertNode(II)V
    .locals 2
    .param p1, "p"    # I
    .param p2, "indx"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 76
    .local v0, "temp":Lde/innosystec/unrar/unpack/ppm/RarNode;
    invoke-virtual {v0, p1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 77
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(I)V

    .line 78
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(Lde/innosystec/unrar/unpack/ppm/RarNode;)V

    .line 79
    return-void
.end method

.method private removeNode(I)I
    .locals 4
    .param p1, "indx"    # I

    .prologue
    .line 86
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    .line 87
    .local v0, "retVal":I
    iget-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 88
    .local v1, "temp":Lde/innosystec/unrar/unpack/ppm/RarNode;
    invoke-virtual {v1, v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 89
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, p1

    invoke-virtual {v1}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setNext(I)V

    .line 90
    return v0
.end method

.method private sizeOfFreeList()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private splitBlock(III)V
    .locals 6
    .param p1, "pv"    # I
    .param p2, "oldIndx"    # I
    .param p3, "newIndx"    # I

    .prologue
    .line 103
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p2

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v4, v4, p3

    sub-int v2, v3, v4

    .line 104
    .local v2, "uDiff":I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, p3

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int v1, p1, v3

    .line 105
    .local v1, "p":I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v5, v2, -0x1

    aget v0, v4, v5

    .local v0, "i":I
    aget v3, v3, v0

    if-eq v3, v2, :cond_0

    .line 106
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 107
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v0, v3, v0

    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 108
    sub-int/2addr v2, v0

    .line 110
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v1, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 111
    return-void
.end method


# virtual methods
.method public GetAllocatedMemory()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    return v0
.end method

.method public allocContext()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    if-eq v0, v1, :cond_0

    .line 259
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    sget v1, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v0

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0, v2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v0

    goto :goto_0
.end method

.method public allocUnits(I)I
    .locals 4
    .param p1, "NU"    # I

    .prologue
    .line 244
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v2, v3

    .line 245
    .local v0, "indx":I
    iget-object v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 249
    .local v1, "retVal":I
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 250
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    if-le v2, v3, :cond_0

    .line 253
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 254
    invoke-direct {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnitsRare(I)I

    move-result v1

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 72
    return-void
.end method

.method public decPText(I)V
    .locals 1
    .param p1, "dPText"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->getPText()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->setPText(I)V

    .line 330
    return-void
.end method

.method public expandUnits(II)I
    .locals 6
    .param p1, "oldPtr"    # I
    .param p2, "OldNU"    # I

    .prologue
    .line 267
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    aget v0, v3, v4

    .line 268
    .local v0, "i0":I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v4, v4, 0x1

    aget v1, v3, v4

    .line 269
    .local v1, "i1":I
    if-ne v0, v1, :cond_0

    .line 278
    .end local p1    # "oldPtr":I
    :goto_0
    return p1

    .line 272
    .restart local p1    # "oldPtr":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->allocUnits(I)I

    move-result v2

    .line 273
    .local v2, "ptr":I
    if-eqz v2, :cond_1

    .line 275
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p2}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    :cond_1
    move p1, v2

    .line 278
    goto :goto_0
.end method

.method public freeUnits(II)V
    .locals 2
    .param p1, "ptr"    # I
    .param p2, "OldNU"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    .line 306
    return-void
.end method

.method public getFakeUnitsStart()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    return v0
.end method

.method public getHeap()[B
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    return-object v0
.end method

.method public getHeapEnd()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapEnd:I

    return v0
.end method

.method public getPText()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    return v0
.end method

.method public getUnitsStart()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    return v0
.end method

.method public incPText()V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 83
    return-void
.end method

.method public initSubAllocator()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 342
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    iget v9, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    invoke-direct {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->sizeOfFreeList()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6, v8, v9, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 344
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 347
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    div-int/lit8 v6, v6, 0x8

    div-int/lit8 v6, v6, 0xc

    mul-int/lit8 v6, v6, 0x7

    .line 346
    mul-int/lit8 v5, v6, 0xc

    .line 348
    .local v5, "size2":I
    div-int/lit8 v6, v5, 0xc

    sget v8, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int v3, v6, v8

    .line 349
    .local v3, "realSize2":I
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    sub-int v4, v6, v5

    .line 350
    .local v4, "size1":I
    div-int/lit8 v6, v4, 0xc

    sget v8, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v6, v8

    .line 351
    rem-int/lit8 v8, v4, 0xc

    .line 350
    add-int v2, v6, v8

    .line 352
    .local v2, "realSize1":I
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    iget v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    add-int/2addr v6, v8

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 353
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v6, v2

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    .line 354
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v6, v4

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 355
    iget v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    add-int/2addr v6, v3

    iput v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x1

    .local v1, "k":I
    :goto_0
    const/4 v6, 0x4

    if-lt v0, v6, :cond_0

    .line 360
    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/16 v6, 0x8

    if-lt v0, v6, :cond_1

    .line 363
    add-int/lit8 v1, v1, 0x1

    :goto_2
    const/16 v6, 0xc

    if-lt v0, v6, :cond_2

    .line 366
    add-int/lit8 v1, v1, 0x1

    :goto_3
    const/16 v6, 0x26

    if-lt v0, v6, :cond_3

    .line 370
    iput v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    const/16 v6, 0x80

    if-lt v1, v6, :cond_4

    .line 375
    return-void

    .line 358
    :cond_0
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 364
    :cond_2
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 367
    :cond_3
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    and-int/lit16 v8, v1, 0xff

    aput v8, v6, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 371
    :cond_4
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->indx2Units:[I

    aget v6, v6, v0

    add-int/lit8 v8, v1, 0x1

    if-ge v6, v8, :cond_5

    const/4 v6, 0x1

    :goto_5
    add-int/2addr v0, v6

    .line 372
    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    and-int/lit16 v8, v0, 0xff

    aput v8, v6, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v6, v7

    .line 371
    goto :goto_5
.end method

.method public setFakeUnitsStart(I)V
    .locals 0
    .param p1, "fakeUnitsStart"    # I

    .prologue
    .line 313
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->fakeUnitsStart:I

    .line 314
    return-void
.end method

.method public setPText(I)V
    .locals 0
    .param p1, "text"    # I

    .prologue
    .line 325
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    .line 326
    return-void
.end method

.method public setUnitsStart(I)V
    .locals 0
    .param p1, "unitsStart"    # I

    .prologue
    .line 337
    iput p1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    .line 338
    return-void
.end method

.method public shrinkUnits(III)I
    .locals 6
    .param p1, "oldPtr"    # I
    .param p2, "oldNU"    # I
    .param p3, "newNU"    # I

    .prologue
    .line 284
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p2, -0x1

    aget v0, v3, v4

    .line 285
    .local v0, "i0":I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->units2Indx:[I

    add-int/lit8 v4, p3, -0x1

    aget v1, v3, v4

    .line 286
    .local v1, "i1":I
    if-ne v0, v1, :cond_0

    .line 300
    .end local p1    # "oldPtr":I
    :goto_0
    return p1

    .line 289
    .restart local p1    # "oldPtr":I
    :cond_0
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lde/innosystec/unrar/unpack/ppm/RarNode;->getNext()I

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-direct {p0, v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->removeNode(I)I

    move-result v2

    .line 295
    .local v2, "ptr":I
    iget-object v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    iget-object v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {p0, p3}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->U2B(I)I

    move-result v5

    invoke-static {v3, p1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-direct {p0, p1, v0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->insertNode(II)V

    move p1, v2

    .line 297
    goto :goto_0

    .line 299
    .end local v2    # "ptr":I
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->splitBlock(III)V

    goto :goto_0
.end method

.method public startSubAllocator(I)Z
    .locals 10
    .param p1, "SASize"    # I

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    .line 132
    shl-int/lit8 v4, p1, 0xa

    .line 133
    .local v4, "t":I
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-ne v5, v4, :cond_0

    .line 167
    :goto_0
    return v8

    .line 136
    :cond_0
    invoke-virtual {p0}, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 137
    div-int/lit8 v5, v4, 0xc

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    mul-int/2addr v5, v6

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    add-int v0, v5, v6

    .line 141
    .local v0, "allocSize":I
    add-int/lit8 v5, v0, 0x1

    add-int/lit16 v3, v5, 0x98

    .line 143
    .local v3, "realAllocSize":I
    iput v3, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    .line 144
    add-int/lit8 v3, v3, 0xc

    .line 146
    new-array v5, v3, [B

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    .line 147
    iput v8, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 148
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v0

    sget v6, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->UNIT_SIZE:I

    sub-int/2addr v5, v6

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapEnd:I

    .line 149
    iput v4, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 151
    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    add-int/2addr v5, v0

    iput v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    .line 152
    sget-boolean v5, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    sub-int v5, v3, v5

    if-eq v5, v9, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempMemBlockPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 156
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeListPos:I

    .local v2, "pos":I
    :goto_1
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 162
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarNode;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarNode;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 163
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 164
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 165
    new-instance v5, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    iget-object v6, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v5, v6}, Lde/innosystec/unrar/unpack/ppm/RarMemBlock;-><init>([B)V

    iput-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    goto/16 :goto_0

    .line 157
    :cond_2
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    new-instance v6, Lde/innosystec/unrar/unpack/ppm/RarNode;

    iget-object v7, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    invoke-direct {v6, v7}, Lde/innosystec/unrar/unpack/ppm/RarNode;-><init>([B)V

    aput-object v6, v5, v1

    .line 158
    iget-object v5, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->freeList:[Lde/innosystec/unrar/unpack/ppm/RarNode;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lde/innosystec/unrar/unpack/ppm/RarNode;->setAddress(I)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1
.end method

.method public stopSubAllocator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    .line 116
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heap:[B

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    .line 120
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarNode:Lde/innosystec/unrar/unpack/ppm/RarNode;

    .line 121
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock1:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 122
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock2:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 123
    iput-object v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->tempRarMemBlock3:Lde/innosystec/unrar/unpack/ppm/RarMemBlock;

    .line 125
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SubAllocator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v1, "\n  subAllocatorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->subAllocatorSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->glueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->heapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string/jumbo v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->loUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->hiUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->pText:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string/jumbo v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget v1, p0, Lde/innosystec/unrar/unpack/ppm/SubAllocator;->unitsStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
