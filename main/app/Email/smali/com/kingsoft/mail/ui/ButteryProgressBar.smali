.class public Lcom/kingsoft/mail/ui/ButteryProgressBar;
.super Landroid/view/View;
.source "ButteryProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ButteryProgressBar$ExponentialInterpolator;
    }
.end annotation


# static fields
.field private static final BASE_DURATION_MS:I = 0x1f4

.field private static final BASE_SEGMENT_COUNT:I = 0x5

.field private static final BASE_WIDTH_DP:I = 0x12c

.field private static final DEFAULT_BAR_HEIGHT_DP:I = 0x4

.field private static final DEFAULT_DETENT_WIDTH_DP:I = 0x3


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private final mBarColor:I

.field private final mDensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSegmentCount:I

.field private final mShadow:Landroid/graphics/drawable/GradientDrawable;

.field private final mSolidBarDetentWidth:I

.field private final mSolidBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mDensity:F

    .line 71
    sget-object v1, Lcom/android/email/R$styleable;->ButteryProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mBarColor:I

    .line 75
    const/4 v1, 0x1

    const/high16 v2, 0x40800000

    iget v3, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mDensity:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    .line 78
    const/4 v1, 0x2

    const/high16 v2, 0x40400000

    iget v3, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mDensity:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarDetentWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 86
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 87
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 88
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/kingsoft/mail/ui/ButteryProgressBar$ExponentialInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/kingsoft/mail/ui/ButteryProgressBar$ExponentialInterpolator;-><init>(Lcom/kingsoft/mail/ui/ButteryProgressBar$1;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/kingsoft/mail/ui/ButteryProgressBar$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar$1;-><init>(Lcom/kingsoft/mail/ui/ButteryProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mBarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v4, [I

    iget v4, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mBarColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, 0x22000000

    or-int/2addr v4, v5

    aput v4, v3, v6

    aput v6, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 102
    return-void

    .line 82
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 86
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x40000000
    .end array-data
.end method

.method private start()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 130
    .local v10, "val":F
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v11

    .line 135
    .local v11, "w":I
    iget v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSegmentCount:I

    add-int/lit8 v0, v0, -0x1

    shr-int v8, v11, v0

    .line 138
    .local v8, "offset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSegmentCount:I

    if-ge v6, v0, :cond_0

    .line 139
    add-int/lit8 v0, v6, 0x1

    shr-int v0, v11, v0

    int-to-float v0, v0

    mul-float v7, v10, v0

    .line 140
    .local v7, "l":F
    if-nez v6, :cond_2

    add-int v0, v11, v8

    int-to-float v9, v0

    .line 141
    .local v9, "r":F
    :goto_1
    iget v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarDetentWidth:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    int-to-float v1, v8

    sub-float v1, v0, v1

    const/4 v2, 0x0

    int-to-float v0, v8

    sub-float v3, v9, v0

    iget v0, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v9    # "r":F
    :cond_2
    const/high16 v0, 0x40000000

    mul-float v9, v7, v0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v9, 0x3f800000

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v2

    .line 109
    .local v2, "w":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSolidBarHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 111
    int-to-float v4, v2

    iget v5, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mDensity:F

    div-float/2addr v4, v5

    const/high16 v5, 0x43960000

    div-float v3, v4, v5

    .line 113
    .local v3, "widthMultiplier":F
    const v4, 0x3e99999a

    sub-float v5, v3, v9

    mul-float/2addr v4, v5

    add-float v0, v4, v9

    .line 114
    .local v0, "durationMult":F
    const v4, 0x3dcccccd

    sub-float v5, v3, v9

    mul-float/2addr v4, v5

    add-float v1, v4, v9

    .line 115
    .local v1, "segmentMult":F
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    const/high16 v5, 0x43fa0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    const/high16 v4, 0x40a00000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/kingsoft/mail/ui/ButteryProgressBar;->mSegmentCount:I

    .line 118
    .end local v0    # "durationMult":F
    .end local v1    # "segmentMult":F
    .end local v2    # "w":I
    .end local v3    # "widthMultiplier":F
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->start()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ButteryProgressBar;->stop()V

    goto :goto_0
.end method
