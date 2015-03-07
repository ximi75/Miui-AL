.class Lcom/kingsoft/email/provider/ContentCache$Statistics;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private hitTimes:J

.field private hits:J

.field private final mCache:Lcom/kingsoft/email/provider/ContentCache;

.field private mCursorCount:I

.field private mHitCount:I

.field private mInvalidateCount:I

.field private mMissCount:I

.field private final mName:Ljava/lang/String;

.field private mOpCount:I

.field private mProjectionMissCount:I

.field private mStaleCount:I

.field private mTokenCount:I

.field private miss:J

.field private missTimes:J


# direct methods
.method constructor <init>(Lcom/kingsoft/email/provider/ContentCache;)V
    .locals 3
    .param p1, "cache"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    .line 741
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    .line 743
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    .line 746
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    .line 748
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    .line 750
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I

    .line 752
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    .line 753
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    .line 754
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    .line 755
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    .line 758
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCursorCount:I

    .line 759
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mTokenCount:I

    .line 762
    iput-object p1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    .line 763
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContentCache;->access$1300(Lcom/kingsoft/email/provider/ContentCache;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    .line 764
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    .line 741
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    .line 743
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    .line 746
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    .line 748
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    .line 750
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I

    .line 752
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    .line 753
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    .line 754
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    .line 755
    iput-wide v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    .line 758
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCursorCount:I

    .line 759
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mTokenCount:I

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    .line 768
    iput-object p1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    .line 769
    return-void
.end method

.method static synthetic access$1008(Lcom/kingsoft/email/provider/ContentCache$Statistics;)J
    .locals 4
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    return-wide v0
.end method

.method static synthetic access$1114(Lcom/kingsoft/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;
    .param p1, "x1"    # J

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    return-wide v0
.end method

.method static synthetic access$1208(Lcom/kingsoft/email/provider/ContentCache$Statistics;)J
    .locals 4
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/provider/ContentCache$Statistics;Lcom/kingsoft/email/provider/ContentCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;
    .param p1, "x1"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->addCacheStatistics(Lcom/kingsoft/email/provider/ContentCache;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/kingsoft/email/provider/ContentCache$Statistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$208(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/kingsoft/email/provider/ContentCache$Statistics;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;

    .prologue
    .line 733
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mOpCount:I

    return v0
.end method

.method static synthetic access$914(Lcom/kingsoft/email/provider/ContentCache$Statistics;J)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/email/provider/ContentCache$Statistics;
    .param p1, "x1"    # J

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    return-wide v0
.end method

.method private addCacheStatistics(Lcom/kingsoft/email/provider/ContentCache;)V
    .locals 4
    .param p1, "cache"    # Lcom/kingsoft/email/provider/ContentCache;

    .prologue
    .line 772
    if-eqz p1, :cond_0

    .line 773
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v1

    iget v1, v1, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    .line 774
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v1

    iget v1, v1, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    .line 775
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v1

    iget v1, v1, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    .line 776
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v1

    iget v1, v1, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mStaleCount:I

    .line 777
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    .line 778
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    .line 779
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    .line 780
    iget-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mStats:Lcom/kingsoft/email/provider/ContentCache$Statistics;
    invoke-static {p1}, Lcom/kingsoft/email/provider/ContentCache;->access$1400(Lcom/kingsoft/email/provider/ContentCache;)Lcom/kingsoft/email/provider/ContentCache$Statistics;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    .line 781
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCursorCount:I

    invoke-virtual {p1}, Lcom/kingsoft/email/provider/ContentCache;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCursorCount:I

    .line 782
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mTokenCount:I

    iget-object v1, p1, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v1}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mTokenCount:I

    .line 784
    :cond_0
    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 787
    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 795
    iget v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string/jumbo v2, "No cache"

    .line 807
    :goto_0
    return-object v2

    .line 796
    :cond_0
    iget v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    add-int v1, v2, v3

    .line 797
    .local v1, "totalTries":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string/jumbo v3, "Cursors"

    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCursorCount:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string/jumbo v2, "Hits"

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string/jumbo v2, "Misses"

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mMissCount:I

    iget v4, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mProjectionMissCount:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string/jumbo v2, "Inval"

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mInvalidateCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string/jumbo v3, "Tokens"

    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mTokenCount:I

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string/jumbo v2, "Hit%"

    iget v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mHitCount:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string/jumbo v2, "\nHit time"

    iget-wide v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hitTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->hits:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    const-string/jumbo v2, "Miss time"

    iget-wide v3, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->missTimes:J

    long-to-double v3, v3

    div-double/2addr v3, v7

    iget-wide v5, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->miss:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/kingsoft/email/provider/ContentCache$Statistics;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    invoke-virtual {v2}, Lcom/kingsoft/email/provider/ContentCache;->size()I

    move-result v2

    goto :goto_1

    .line 803
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache$Statistics;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    iget-object v2, v2, Lcom/kingsoft/email/provider/ContentCache;->mTokenList:Lcom/kingsoft/email/provider/ContentCache$TokenList;

    invoke-virtual {v2}, Lcom/kingsoft/email/provider/ContentCache$TokenList;->size()I

    move-result v2

    goto :goto_2
.end method
