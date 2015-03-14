.class public Lcom/kingsoft/email/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# static fields
.field public static final UNDEFINED_RESOURCE_ID:I = -0x1

.field private static sInstance:Lcom/kingsoft/email/ResourceHelper;


# instance fields
.field private final mAccountColorArray:Landroid/content/res/TypedArray;

.field private final mAccountColorPaints:[Landroid/graphics/Paint;

.field private final mAccountColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f09000d

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mContext:Landroid/content/Context;

    .line 42
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    .line 44
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    .line 45
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    .line 46
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kingsoft/email/ResourceHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-class v1, Lcom/kingsoft/email/ResourceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/ResourceHelper;->sInstance:Lcom/kingsoft/email/ResourceHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/kingsoft/email/ResourceHelper;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/ResourceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/ResourceHelper;->sInstance:Lcom/kingsoft/email/ResourceHelper;

    .line 58
    :cond_0
    sget-object v0, Lcom/kingsoft/email/ResourceHelper;->sInstance:Lcom/kingsoft/email/ResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAccountColor(J)I
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getAccountColorId(J)I
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method getAccountColorIndex(J)I
    .locals 4
    .param p1, "accountId"    # J

    .prologue
    .line 64
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColors:[I

    array-length v2, v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getAccountColorPaint(J)Landroid/graphics/Paint;
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/email/ResourceHelper;->mAccountColorPaints:[Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
