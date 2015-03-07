.class public Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AttachmentDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/kingsoft/bitmap/DecodeAggregator$Callback;
.implements Lcom/kingsoft/bitmap/DecodeTask$BitmapView;
.implements Lcom/kingsoft/mail/bitmap/Parallaxable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;,
        Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final LIMIT_BITMAP_DENSITY:Z = true

.field private static final LOAD_STATE_FAILED:I = 0x4

.field private static final LOAD_STATE_LOADED:I = 0x3

.field private static final LOAD_STATE_LOADING:I = 0x2

.field private static final LOAD_STATE_NOT_YET_LOADED:I = 0x1

.field private static final LOAD_STATE_UNINITIALIZED:I = 0x0

.field private static final MAX_BITMAP_DENSITY:I = 0xf0

.field private static final SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

.field private final mCache:Lcom/kingsoft/bitmap/BitmapCache;

.field private final mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

.field private mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

.field private final mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

.field private mDecodeHeight:I

.field private mDecodeWidth:I

.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mLoadState:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mParallaxFraction:F

.field private mParallaxSpeedMultiplier:F

.field private mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

.field private mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

.field private final mProgressDelayMs:I

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTask:Lcom/kingsoft/bitmap/DecodeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 67
    sget-object v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/kingsoft/bitmap/BitmapCache;Lcom/kingsoft/bitmap/DecodeAggregator;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "cache"    # Lcom/kingsoft/bitmap/BitmapCache;
    .param p3, "decodeAggregator"    # Lcom/kingsoft/bitmap/DecodeAggregator;
    .param p4, "coordinates"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .param p5, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p6, "progress"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mLoadState:I

    .line 55
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    .line 86
    const-string/jumbo v0, "AttachPreview"

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->LOG_TAG:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .line 93
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDensity:F

    .line 94
    iput-object p2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    .line 95
    iput-object p3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 98
    const v0, 0x7f0e0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 99
    .local v4, "fadeOutDurationMs":I
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 100
    .local v5, "tileColor":I
    const v0, 0x7f0e0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgressDelayMs:I

    .line 102
    new-instance v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    new-instance v0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/bitmap/AttachmentDrawable;Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
    .param p1, "x1"    # Lcom/kingsoft/bitmap/DecodeTask$Request;
    .param p2, "x2"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->onDecodeCompleteImpl(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V

    return-void
.end method

.method private decode(Z)V
    .locals 9
    .param p1, "executeStateChange"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string/jumbo v0, "decode"

    invoke-static {v0}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 351
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x3fc00000

    iget v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDensity:F

    div-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 354
    .local v8, "scale":F
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    iget v0, v0, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->mDestW:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v2, v0

    .line 355
    .local v2, "w":I
    iget v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 356
    .local v4, "bufferW":I
    iget v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v3, v0

    .line 363
    .local v3, "bufferH":I
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 364
    :cond_1
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    invoke-virtual {v0}, Lcom/kingsoft/bitmap/DecodeTask;->cancel()V

    .line 370
    :cond_3
    if-eqz p1, :cond_4

    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 373
    :cond_4
    new-instance v0, Lcom/kingsoft/bitmap/DecodeTask;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    iget-object v7, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/bitmap/DecodeTask;-><init>(Lcom/kingsoft/bitmap/DecodeTask$Request;IIIILcom/kingsoft/bitmap/DecodeTask$BitmapView;Lcom/kingsoft/bitmap/BitmapCache;)V

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    .line 374
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    sget-object v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v5}, Lcom/kingsoft/bitmap/DecodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto :goto_0
.end method

.method private onDecodeCompleteImpl(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;
    .param p2, "result"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setBitmap(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-eqz p2, :cond_0

    .line 319
    invoke-virtual {p2}, Lcom/kingsoft/bitmap/ReusableBitmap;->releaseReference()V

    goto :goto_0
.end method

.method private setBitmap(Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 1
    .param p1, "bmp"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-eq v0, p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->releaseReference()V

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 336
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 337
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 338
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setImage(Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;)V
    .locals 8
    .param p1, "key"    # Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v4, p1}, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string/jumbo v4, "set image"

    invoke-static {v4}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v4, p1}, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;->matches(Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 150
    .local v1, "onlyRenditionChange":Z
    :goto_1
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 151
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v4}, Lcom/kingsoft/bitmap/ReusableBitmap;->releaseReference()V

    .line 152
    iput-object v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    iget-object v5, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v4, v5}, Lcom/kingsoft/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 157
    :cond_2
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    .line 159
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    if-eqz v4, :cond_3

    .line 160
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    invoke-virtual {v4}, Lcom/kingsoft/bitmap/DecodeTask;->cancel()V

    .line 161
    iput-object v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mTask:Lcom/kingsoft/bitmap/DecodeTask;

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 170
    if-nez p1, :cond_5

    .line 171
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto :goto_0

    .end local v1    # "onlyRenditionChange":Z
    :cond_4
    move v1, v3

    .line 148
    goto :goto_1

    .line 176
    .restart local v1    # "onlyRenditionChange":Z
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    invoke-interface {v4, p1, v2}, Lcom/kingsoft/bitmap/BitmapCache;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 177
    .local v0, "cached":Lcom/kingsoft/bitmap/ReusableBitmap;
    if-eqz v0, :cond_6

    .line 178
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setBitmap(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    .line 179
    const-string/jumbo v4, "AttachPreview"

    const-string/jumbo v5, "CACHE HIT key=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :goto_2
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 181
    :cond_6
    if-nez v1, :cond_7

    move v4, v2

    :goto_3
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->decode(Z)V

    .line 182
    const-string/jumbo v4, "AttachPreview"

    const-string/jumbo v5, "CACHE MISS key=%s\ncache=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    invoke-interface {v3}, Lcom/kingsoft/bitmap/BitmapCache;->toDebugString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_7
    move v4, v3

    .line 181
    goto :goto_3
.end method

.method private setLoadState(I)V
    .locals 8
    .param p1, "loadState"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    const-string/jumbo v0, "AttachPreview"

    const-string/jumbo v1, "IN AD.setState. old=%s new=%s key=%s this=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mLoadState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 381
    iget v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mLoadState:I

    if-ne v0, p1, :cond_0

    .line 382
    const-string/jumbo v0, "AttachPreview"

    const-string/jumbo v1, "OUT no-op AD.setState"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "set load state"

    invoke-static {v0}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 414
    :goto_1
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 416
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mLoadState:I

    .line 417
    const-string/jumbo v0, "AttachPreview"

    const-string/jumbo v1, "OUT stateful AD.setState. new=%s placeholder=%s progress=%s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v3}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->isVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v3}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->isVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->reset()V

    .line 393
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->reset()V

    goto :goto_1

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 398
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 401
    :pswitch_2
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 402
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 405
    :pswitch_3
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 406
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 409
    :pswitch_4
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setVisible(Z)Z

    .line 411
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setVisible(Z)Z

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bind(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Ljava/lang/String;
    .param p3, "rendition"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AttachmentDrawable must have bounds set before bind"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    new-instance v1, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setImage(Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;)V

    .line 138
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 196
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v1}, Lcom/kingsoft/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->attachmentPreviewsDecodeHeight:I

    const v5, 0x7fffffff

    iget v6, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    iget v8, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mParallaxSpeedMultiplier:F

    iget-object v9, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v9}, Lcom/kingsoft/bitmap/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFZFLandroid/graphics/Rect;)V

    .line 208
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->getOrientation()I

    move-result v11

    .line 212
    .local v11, "orientation":I
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v1}, Lcom/kingsoft/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    invoke-virtual {v2}, Lcom/kingsoft/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-static {v11, v0, v1}, Lcom/kingsoft/mail/utils/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 217
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 218
    .local v12, "rotatedBounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {v11, v0, v1, v12}, Lcom/kingsoft/mail/utils/RectUtils;->rotateRect(IIILandroid/graphics/Rect;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    int-to-float v0, v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 230
    .end local v11    # "orientation":I
    .end local v12    # "rotatedBounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->draw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getKey()Lcom/kingsoft/bitmap/DecodeTask$Request;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 424
    return-void
.end method

.method public onBecomeFirstExpected(Lcom/kingsoft/bitmap/DecodeTask$Request;)V
    .locals 3
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mCurrKey:Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgressDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onBecomeFirstExpected(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/kingsoft/bitmap/DecodeTask$Request;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->onBecomeFirstExpected(Lcom/kingsoft/bitmap/DecodeTask$Request;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 263
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setBounds(Landroid/graphics/Rect;)V

    .line 264
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setBounds(Landroid/graphics/Rect;)V

    .line 265
    return-void
.end method

.method public onDecodeBegin(Lcom/kingsoft/bitmap/DecodeTask$Request;)V
    .locals 1
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    invoke-virtual {v0, p1, p0}, Lcom/kingsoft/bitmap/DecodeAggregator;->expect(Ljava/lang/Object;Lcom/kingsoft/bitmap/ContiguousFIFOAggregator$Callback;)V

    .line 274
    return-void
.end method

.method public onDecodeCancel(Lcom/kingsoft/bitmap/DecodeTask$Request;)V
    .locals 1
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    invoke-virtual {v0, p1}, Lcom/kingsoft/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public onDecodeComplete(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 2
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;
    .param p2, "result"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeAggregator:Lcom/kingsoft/bitmap/DecodeAggregator;

    new-instance v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$1;-><init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable;Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/bitmap/DecodeAggregator;->execute(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mLoadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 428
    invoke-virtual {p0, p2, p3, p4}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 429
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 237
    .local v0, "old":I
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setAlpha(I)V

    .line 239
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setAlpha(I)V

    .line 240
    if-eq p1, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 243
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 248
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mPlaceholder:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mProgress:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method

.method public setDecodeDimensions(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeWidth:I

    .line 117
    iput p2, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mDecodeHeight:I

    .line 118
    return-void
.end method

.method public setParallaxFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 190
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mParallaxFraction:F

    .line 191
    return-void
.end method

.method public setParallaxSpeedMultiplier(F)V
    .locals 0
    .param p1, "parallaxSpeedMultiplier"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->mParallaxSpeedMultiplier:F

    .line 122
    return-void
.end method

.method public showStaticPlaceholder()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setLoadState(I)V

    .line 126
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->setImage(Lcom/kingsoft/mail/bitmap/ImageAttachmentRequest;)V

    .line 130
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 433
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method
