.class public final Lcom/kingsoft/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/ContentCache$Statistics;,
        Lcom/kingsoft/email/provider/ContentCache$CachedCursor;,
        Lcom/kingsoft/email/provider/ContentCache$CacheToken;,
        Lcom/kingsoft/email/provider/ContentCache$TokenList;,
        Lcom/kingsoft/email/provider/ContentCache$CounterMap;
    }
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z = false

.field private static final DEBUG_NOT_CACHEABLE:Z = false

.field private static final DEBUG_STATISTICS:Z = false

.field private static final DEBUG_TOKENS:Z = false

.field private static final READ_CACHE_ENABLED:Z = true

.field static final sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/email/provider/ContentCache$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/ContentCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sLockCache:Z

.field private static sNotCacheable:I

.field private static final sNotCacheableMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/email/provider/ContentCache$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseProjection:[Ljava/lang/String;

.field private final mLockMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/email/provider/ContentCache$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

.field mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/email/provider/ContentCache;->sNotCacheable:I

    .line 89
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-direct {v0}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;-><init>()V

    sput-object v0, Lcom/kingsoft/email/provider/ContentCache;->sNotCacheableMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;-><init>(I)V

    sput-object v0, Lcom/kingsoft/email/provider/ContentCache;->sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseProjection"    # [Ljava/lang/String;
    .param p3, "maxSize"    # I

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLockMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    .line 412
    iput-object p1, p0, Lcom/kingsoft/email/provider/ContentCache;->mName:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$1;

    invoke-direct {v0, p0, p3}, Lcom/kingsoft/email/provider/ContentCache$1;-><init>(Lcom/kingsoft/email/provider/ContentCache;I)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    .line 423
    iput-object p2, p0, Lcom/kingsoft/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContentCache-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLogTag:Ljava/lang/String;

    .line 425
    sget-object v0, Lcom/kingsoft/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$TokenList;

    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/ContentCache$TokenList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    .line 427
    new-instance v0, Lcom/kingsoft/email/provider/ContentCache$Statistics;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;-><init>(Lcom/kingsoft/email/provider/ContentCache;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .line 428
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/email/provider/ContentCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/provider/ContentCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    return-object v0
.end method

.method private dumpOnCount(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$808(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 693
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # getter for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$800(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    move-result v0

    rem-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lcom/kingsoft/email/provider/ContentCache;->dumpStats()V

    .line 696
    :cond_0
    return-void
.end method

.method public static dumpStats()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 812
    new-instance v2, Lcom/kingsoft/email/provider/ContentCache$Statistics;

    const-string/jumbo v3, "Totals"

    invoke-direct {v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;-><init>(Ljava/lang/String;)V

    .line 814
    .local v2, "totals":Lcom/kingsoft/email/provider/ContentCache$Statistics;
    sget-object v3, Lcom/kingsoft/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/ContentCache;

    .line 815
    .local v0, "cache":Lcom/kingsoft/email/provider/ContentCache;
    if-eqz v0, :cond_0

    .line 816
    iget-object v3, v0, Lcom/kingsoft/email/provider/ContentCache;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    invoke-virtual {v4}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 817
    # invokes: Lcom/kingsoft/email/provider/ContentCache$Statistics;->addCacheStatistics(Lcom/kingsoft/email/provider/ContentCache;)V
    invoke-static {v2, v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$1500(Lcom/kingsoft/email/provider/ContentCache$Statistics;Lcom/kingsoft/email/provider/ContentCache;)V

    goto :goto_0

    .line 820
    .end local v0    # "cache":Lcom/kingsoft/email/provider/ContentCache;
    :cond_1
    # getter for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$1600(Lcom/kingsoft/email/provider/ContentCache$Statistics;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 821
    return-void
.end method

.method private getCachedCursorImpl(Ljava/lang/String;)Lcom/kingsoft/email/provider/ContentCache$CachedCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 530
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I
    invoke-static {v1}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$308(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 532
    new-instance v1, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;

    invoke-direct {v1, v0, p0, p1}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/kingsoft/email/provider/ContentCache;Ljava/lang/String;)V

    .line 535
    :goto_0
    return-object v1

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I
    invoke-static {v1}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$408(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 535
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;
    .locals 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 544
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 545
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_8

    .line 547
    new-instance v9, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v14}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 548
    .local v9, "mc":Landroid/database/MatrixCursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_0

    .line 586
    .end local v9    # "mc":Landroid/database/MatrixCursor;
    :goto_0
    return-object v9

    .line 551
    .restart local v9    # "mc":Landroid/database/MatrixCursor;
    :cond_0
    move-object/from16 v0, p2

    array-length v14, v0

    new-array v10, v14, [Ljava/lang/Object;

    .line 552
    .local v10, "row":[Ljava/lang/Object;
    if-eqz p3, :cond_1

    .line 554
    new-instance v13, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .end local p3    # "values":Landroid/content/ContentValues;
    .local v13, "values":Landroid/content/ContentValues;
    move-object/from16 p3, v13

    .line 556
    .end local v13    # "values":Landroid/content/ContentValues;
    .restart local p3    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v5, 0x0

    .line 557
    .local v5, "i":I
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v1, v7

    .line 558
    .local v3, "column":Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 559
    .local v4, "columnIndex":I
    if-gez v4, :cond_2

    .line 560
    iget-object v14, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I
    invoke-static {v14}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$508(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 561
    const/4 v9, 0x0

    goto :goto_0

    .line 564
    :cond_2
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 565
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 566
    .local v11, "val":Ljava/lang/Object;
    instance-of v14, v11, Ljava/lang/Boolean;

    if-eqz v14, :cond_4

    .line 567
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v11, v14, :cond_3

    const-string/jumbo v12, "1"

    .line 571
    .local v12, "value":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 575
    .end local v11    # "val":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aput-object v12, v10, v6

    .line 557
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 567
    .end local v12    # "value":Ljava/lang/String;
    .restart local v11    # "val":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v12, "0"

    goto :goto_2

    .line 569
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/String;
    goto :goto_2

    .line 573
    .end local v11    # "val":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/String;
    goto :goto_3

    .line 578
    .end local v3    # "column":Ljava/lang/String;
    .end local v4    # "columnIndex":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-eqz v14, :cond_7

    .line 579
    const/4 v9, 0x0

    goto :goto_0

    .line 581
    :cond_7
    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 582
    iget-object v14, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I
    invoke-static {v14}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$308(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    goto :goto_0

    .line 585
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mc":Landroid/database/MatrixCursor;
    .end local v10    # "row":[Ljava/lang/Object;
    :cond_8
    iget-object v14, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I
    invoke-static {v14}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$408(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 586
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static invalidateAllCaches()V
    .locals 3

    .prologue
    .line 720
    sget-object v2, Lcom/kingsoft/email/provider/ContentCache;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/ContentCache;

    .line 721
    .local v0, "cache":Lcom/kingsoft/email/provider/ContentCache;
    invoke-virtual {v0}, Lcom/kingsoft/email/provider/ContentCache;->invalidate()V

    goto :goto_0

    .line 723
    .end local v0    # "cache":Lcom/kingsoft/email/provider/ContentCache;
    :cond_0
    return-void
.end method

.method public static declared-synchronized notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 716
    const-class v0, Lcom/kingsoft/email/provider/ContentCache;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static setLockCacheForTest(Z)V
    .locals 1
    .param p0, "lock"    # Z

    .prologue
    .line 727
    sput-boolean p0, Lcom/kingsoft/email/provider/ContentCache;->sLockCache:Z

    .line 728
    sget-boolean v0, Lcom/kingsoft/email/provider/ContentCache;->sLockCache:Z

    if-eqz v0, :cond_0

    .line 729
    invoke-static {}, Lcom/kingsoft/email/provider/ContentCache;->invalidateAllCaches()V

    .line 731
    :cond_0
    return-void
.end method

.method private unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "wasLocked"    # Z

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 634
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 635
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 638
    :cond_0
    if-eqz p2, :cond_5

    sget-boolean v2, Lcom/kingsoft/email/provider/ContentCache;->sLockCache:Z

    if-nez v2, :cond_5

    .line 639
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/kingsoft/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 640
    .local v1, "cursor":Landroid/database/MatrixCursor;
    if-eqz v1, :cond_4

    .line 641
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 644
    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 645
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :goto_0
    sget-object v2, Lcom/kingsoft/email/provider/ContentCache;->sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_2
    if-eqz p3, :cond_3

    .line 658
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mLockMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v2, p1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    .line 660
    :cond_3
    return-void

    .line 647
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 650
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public declared-synchronized getCacheToken(Ljava/lang/String;)Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->add(Ljava/lang/String;)Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    move-result-object v0

    .line 448
    .local v0, "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mLockMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_0
    monitor-exit p0

    return-object v0

    .line 447
    .end local v0    # "token":Lcom/kingsoft/email/provider/ContentCache$CacheToken;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    if-ne p2, v0, :cond_1

    .line 522
    invoke-direct {p0, p1}, Lcom/kingsoft/email/provider/ContentCache;->getCachedCursorImpl(Ljava/lang/String;)Lcom/kingsoft/email/provider/ContentCache$CachedCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 524
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/provider/ContentCache;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    return-object v0
.end method

.method protected getSnapshot()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    .prologue
    .line 666
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/kingsoft/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$708(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I

    .line 684
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 686
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v0}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mLockMap:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->add(Ljava/lang/Object;)V

    .line 597
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->invalidateTokens(Ljava/lang/String;)I

    move-result v0

    .line 598
    .local v0, "count":I
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 602
    :cond_0
    monitor-exit p0

    return-void

    .line 595
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "token"    # Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 480
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/provider/ContentCache;->putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "token"    # Lcom/kingsoft/email/provider/ContentCache$CacheToken;

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/kingsoft/email/provider/ContentCache$CacheToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I
    invoke-static {v1}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$208(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p4}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "c":Landroid/database/Cursor;
    :goto_0
    monitor-exit p0

    return-object p1

    .line 492
    .restart local p1    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mBaseProjection:[Ljava/lang/String;

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/kingsoft/email/provider/ContentCache;->sLockCache:Z

    if-nez v1, :cond_4

    .line 493
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 497
    :cond_2
    invoke-virtual {p0, p2}, Lcom/kingsoft/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 498
    .local v0, "existingCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 499
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/kingsoft/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;

    invoke-direct {v1, p1, p0, p2}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/kingsoft/email/provider/ContentCache;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    :try_start_3
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v2, p4}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z

    move-object p1, v1

    goto :goto_0

    .end local v0    # "existingCursor":Landroid/database/Cursor;
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v1, p4}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 506
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v2, p4}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->remove(Lcom/kingsoft/email/provider/ContentCache$CacheToken;)Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method recordQueryTime(Landroid/database/Cursor;J)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "nanoTime"    # J

    .prologue
    .line 699
    instance-of v0, p1, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # += operator for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J
    invoke-static {v0, p2, p3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$914(Lcom/kingsoft/email/provider/ContentCache$Statistics;J)J

    .line 701
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$1008(Lcom/kingsoft/email/provider/ContentCache$Statistics;)J

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # += operator for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J
    invoke-static {v0, p2, p3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$1114(Lcom/kingsoft/email/provider/ContentCache$Statistics;J)J

    .line 705
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;

    # operator++ for: Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->access$1208(Lcom/kingsoft/email/provider/ContentCache$Statistics;)J

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 609
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 620
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/provider/ContentCache;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
