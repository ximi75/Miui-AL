.class public Lcom/kingsoft/mail/photomanager/LetterTileProvider;
.super Ljava/lang/Object;
.source "LetterTileProvider.java"

# interfaces
.implements Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x400000

.field private static final NUM_OF_TILE_COLORS:I = 0x6

.field private static final POSSIBLE_BITMAP_SIZES:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static mBitmapBackgroundCache:[Landroid/graphics/Bitmap;

.field private static mBounds:Landroid/graphics/Rect;

.field private static mDefaultBitmap:Landroid/graphics/Bitmap;

.field private static mDefaultBitmapCache:[Landroid/graphics/Bitmap;

.field private static mHeaderIcon:[Landroid/graphics/Bitmap;

.field private static mPaint:Landroid/text/TextPaint;

.field private static mSansSerifLight:Landroid/graphics/Typeface;

.field private static mTileFontColor:I

.field private static mTileLetterFontSize:I

.field private static mTileLetterFontSizeMiddle:I

.field private static mTileLetterFontSizeSmall:I

.field private static sBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private final mDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

.field private final mFirstChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->TAG:Ljava/lang/String;

    .line 63
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    .line 74
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Lcom/kingsoft/mail/photomanager/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v2

    const-wide/32 v4, 0x28000000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/high16 v1, 0x3f800000

    .line 85
    .local v1, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v2, 0x4a800000

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 86
    .local v0, "bitmapCacheSize":I
    new-instance v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider$1;

    invoke-direct {v2, v0}, Lcom/kingsoft/mail/photomanager/LetterTileProvider$1;-><init>(I)V

    sput-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->sBitmapCache:Landroid/util/LruCache;

    .line 96
    return-void

    .line 82
    .end local v0    # "bitmapCacheSize":I
    .end local v1    # "cacheSizeAdjustment":F
    :cond_0
    const/high16 v1, 0x3f000000

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    .line 67
    new-instance v1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    .line 68
    new-array v1, v4, [C

    iput-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    .line 99
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mContext:Landroid/content/Context;

    .line 100
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020206

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-array v1, v5, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmapCache:[Landroid/graphics/Bitmap;

    .line 105
    new-array v1, v5, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBitmapBackgroundCache:[Landroid/graphics/Bitmap;

    .line 106
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const v2, 0x7f020174

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    .line 107
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const v2, 0x7f020173

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    .line 108
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    const v3, 0x7f02016a

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const v2, 0x7f020172

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    .line 110
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    const v3, 0x7f020176

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    const v3, 0x7f020177

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSize:I

    .line 114
    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSizeSmall:I

    .line 116
    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSizeMiddle:I

    .line 118
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileFontColor:I

    .line 119
    const-string/jumbo v1, "sans-serif-light"

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mSansSerifLight:Landroid/graphics/Typeface;

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    .line 121
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mSansSerifLight:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileFontColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 123
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 126
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "d"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "which"    # I

    .prologue
    .line 321
    iget v0, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    if-gtz v0, :cond_1

    .line 322
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 326
    :goto_0
    return-object v0

    .line 324
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 325
    sget-object v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    sget-object v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mHeaderIcon:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    iget v1, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "d"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "getDefault"    # Z

    .prologue
    .line 342
    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    if-lez v4, :cond_0

    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    if-gtz v4, :cond_2

    .line 343
    :cond_0
    sget-object v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "LetterTileProvider width(%d) or height(%d) is 0."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    const/4 v0, 0x0

    .line 371
    :cond_1
    :goto_0
    return-object v0

    .line 348
    :cond_2
    iget v3, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    .line 349
    .local v3, "scale":F
    const/high16 v4, 0x3f800000

    cmpl-float v4, v3, v4

    if-nez v4, :cond_4

    .line 350
    const/4 v2, 0x0

    .line 357
    .local v2, "pos":I
    :goto_1
    if-eqz p2, :cond_6

    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmapCache:[Landroid/graphics/Bitmap;

    .line 359
    .local v1, "cache":[Landroid/graphics/Bitmap;
    :goto_2
    aget-object v0, v1, v2

    .line 362
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    if-eq v4, v5, :cond_1

    .line 364
    :cond_3
    if-eqz p2, :cond_7

    .line 365
    sget-object v4, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    iget v6, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    :goto_3
    aput-object v0, v1, v2

    goto :goto_0

    .line 351
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cache":[Landroid/graphics/Bitmap;
    .end local v2    # "pos":I
    :cond_4
    const/high16 v4, 0x3f000000

    cmpl-float v4, v3, v4

    if-nez v4, :cond_5

    .line 352
    const/4 v2, 0x1

    .restart local v2    # "pos":I
    goto :goto_1

    .line 354
    .end local v2    # "pos":I
    :cond_5
    const/4 v2, 0x2

    .restart local v2    # "pos":I
    goto :goto_1

    .line 357
    :cond_6
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBitmapBackgroundCache:[Landroid/graphics/Bitmap;

    goto :goto_2

    .line 367
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cache":[Landroid/graphics/Bitmap;
    :cond_7
    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method private getBitmapInCache(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "d"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "firstChar"    # C

    .prologue
    .line 331
    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    if-lez v2, :cond_0

    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    if-gtz v2, :cond_1

    .line 332
    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    return-object v1

    .line 335
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmapKey(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 337
    .local v1, "retMap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getBitmapKey(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Ljava/lang/String;
    .locals 2
    .param p1, "d"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "firstChar"    # C

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFontSize(F)I
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 375
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 376
    sget v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSize:I

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_0
    const/high16 v0, 0x3f400000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 378
    sget v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSizeMiddle:I

    goto :goto_0

    .line 380
    :cond_1
    sget v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mTileLetterFontSizeSmall:I

    goto :goto_0
.end method

.method private static isEnglishLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 313
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickBitmap(C)I
    .locals 2
    .param p1, "firstUpChar"    # C

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    const/4 v1, -0x1

    .line 395
    :goto_0
    return v1

    .line 394
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "displayname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x6

    goto :goto_0
.end method

.method private pickBitmap(Ljava/lang/String;)I
    .locals 1
    .param p1, "displayname"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyDefaultImage(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;I)V
    .locals 7
    .param p1, "id"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p2, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p3, "extent"    # I

    .prologue
    .line 130
    move-object v1, p1

    check-cast v1, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .local v1, "contactIdentifier":Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    move-object v2, p2

    .line 131
    check-cast v2, Lcom/kingsoft/mail/ui/DividedImageCanvas;

    .line 133
    .local v2, "dividedImageView":Lcom/kingsoft/mail/ui/DividedImageCanvas;
    invoke-virtual {v1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 135
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    .line 136
    iget-object v4, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    .line 138
    iget-object v4, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mDims:Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {v2, v0, v3}, Lcom/kingsoft/mail/ui/DividedImageCanvas;->addDivisionImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCachedLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100289

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const/4 v3, -0x1

    invoke-direct {p0, p1, v3}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    :goto_0
    return-object v3

    .line 152
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, p2

    .line 153
    .local v0, "display":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/kingsoft/mail/photomanager/LetterUtil;->getRightChar(Ljava/lang/String;)C

    move-result v1

    .line 154
    .local v1, "firstChar":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 155
    .local v2, "upFirstChar":C
    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmapInCache(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .end local v0    # "display":Ljava/lang/String;
    .end local v1    # "firstChar":C
    .end local v2    # "upFirstChar":C
    :cond_1
    move-object v0, p3

    .line 152
    goto :goto_1
.end method

.method public getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 222
    :cond_0
    :goto_0
    return-object v8

    .line 164
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v9, p2

    .line 165
    .local v9, "display":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Lcom/kingsoft/mail/photomanager/LetterUtil;->getRightChar(Ljava/lang/String;)C

    move-result v10

    .line 166
    .local v10, "firstChar":C
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 167
    .local v12, "upFirstChar":C
    invoke-direct {p0, p1, v12}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmapInCache(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 168
    .local v8, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_0

    .line 200
    invoke-direct {p0, v12}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->pickBitmap(C)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 201
    .local v11, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2

    .line 202
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v2, v3

    .line 205
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getFontSize(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 207
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 208
    const/16 v2, 0xff

    if-le v12, v2, :cond_4

    .line 210
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget v6, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v6, v6, 0x2

    sget-object v7, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget-object v13, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x5

    int-to-float v6, v6

    sget-object v7, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 221
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_2
    :goto_2
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->sBitmapCache:Landroid/util/LruCache;

    invoke-direct {p0, p1, v12}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmapKey(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    .line 222
    goto :goto_0

    .end local v8    # "cacheBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "display":Ljava/lang/String;
    .end local v10    # "firstChar":C
    .end local v11    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "upFirstChar":C
    :cond_3
    move-object/from16 v9, p3

    .line 164
    goto :goto_1

    .line 216
    .restart local v1    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "cacheBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "display":Ljava/lang/String;
    .restart local v10    # "firstChar":C
    .restart local v11    # "mBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "upFirstChar":C
    :cond_4
    sget-object v2, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 217
    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget v6, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    sget-object v7, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget-object v13, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getLetterTileSmall(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v8, p2

    .line 228
    .local v8, "display":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/kingsoft/mail/photomanager/LetterUtil;->getRightChar(Ljava/lang/String;)C

    move-result v9

    .line 231
    .local v9, "firstChar":C
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 232
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 235
    const/4 v7, 0x0

    .line 266
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v7

    .end local v8    # "display":Ljava/lang/String;
    .end local v9    # "firstChar":C
    :cond_0
    move-object/from16 v8, p3

    .line 227
    goto :goto_0

    .line 238
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "display":Ljava/lang/String;
    .restart local v9    # "firstChar":C
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    .line 239
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 242
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->pickColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    if-eqz v9, :cond_3

    .line 250
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v2

    .line 251
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getFontSize(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 252
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    .line 253
    .local v10, "orisize":F
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41880000

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 254
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 255
    const/16 v1, 0xff

    if-le v9, v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sget-object v12, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 261
    :goto_2
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/16 :goto_1

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sget-object v12, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 263
    .end local v10    # "orisize":F
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public getLetterTileSmallSmall(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v8, p2

    .line 271
    .local v8, "display":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/kingsoft/mail/photomanager/LetterUtil;->getRightChar(Ljava/lang/String;)C

    move-result v9

    .line 274
    .local v9, "firstChar":C
    invoke-direct {p0, p1, v9}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 275
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 278
    const/4 v7, 0x0

    .line 310
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v7

    .end local v8    # "display":Ljava/lang/String;
    .end local v9    # "firstChar":C
    :cond_0
    move-object/from16 v8, p3

    .line 270
    goto :goto_0

    .line 281
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "display":Ljava/lang/String;
    .restart local v9    # "firstChar":C
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    .line 282
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 285
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    if-eqz v9, :cond_3

    .line 292
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v2

    .line 293
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget v2, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->scale:F

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getFontSize(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    .line 295
    .local v10, "orisize":F
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x40400000

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 296
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 297
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->pickBitmap(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    const/16 v1, 0xff

    if-le v9, v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sget-object v12, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 304
    :goto_2
    sget-object v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_1

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mFirstChar:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sget-object v12, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 307
    .end local v10    # "orisize":F
    :cond_3
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getBitmap(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method
