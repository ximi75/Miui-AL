.class public Lcom/kingsoft/ex/photo/views/PhotoView;
.super Landroid/view/View;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment$HorizontallyScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;,
        Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;,
        Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;,
        Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;
    }
.end annotation


# static fields
.field private static final CROPPED_SIZE:F = 256.0f

.field private static final DOUBLE_TAP_SCALE_FACTOR:F = 1.5f

.field private static final ROTATE_ANIMATION_DURATION:J = 0x1f4L

.field private static final SNAP_DELAY:J = 0xfaL

.field private static final SNAP_DURATION:J = 0x64L

.field private static final SNAP_THRESHOLD:F = 20.0f

.field private static final ZOOM_ANIMATION_DURATION:J = 0x12cL

.field private static sCropDimPaint:Landroid/graphics/Paint;

.field private static sCropPaint:Landroid/graphics/Paint;

.field private static sCropSize:I

.field private static sInitialized:Z

.field private static sTouchSlopSquare:I

.field private static sVideoImage:Landroid/graphics/Bitmap;

.field private static sVideoNotReadyImage:Landroid/graphics/Bitmap;


# instance fields
.field private mAllowCrop:Z

.field private mCropRect:Landroid/graphics/Rect;

.field private mCropSize:I

.field private mDoubleTapDebounce:Z

.field private mDoubleTapOccurred:Z

.field private mDoubleTapToZoomEnabled:Z

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mExternalClickListener:Landroid/view/View$OnClickListener;

.field private mFixedHeight:I

.field private mFullScreen:Z

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mHaveLayout:Z

.field private mIsDoubleTouch:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxInitialScaleFactor:F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOriginalMatrix:Landroid/graphics/Matrix;

.field private mQuickScaleEnabled:Z

.field private mRotateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

.field private mRotation:F

.field private mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

.field private mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mTransformsEnabled:Z

.field private mTranslateRect:Landroid/graphics/RectF;

.field private mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

.field private mValues:[F

.field private mVideoBlob:[B

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    .line 185
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->initialize()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    .line 190
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->initialize()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    .line 163
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    .line 195
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->initialize()V

    .line 196
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/ex/photo/views/PhotoView;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/views/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/ex/photo/views/PhotoView;->scale(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/ex/photo/views/PhotoView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/views/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/photo/views/PhotoView;->translate(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/kingsoft/ex/photo/views/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/views/PhotoView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->snap()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/ex/photo/views/PhotoView;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/views/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/photo/views/PhotoView;->rotate(FZ)V

    return-void
.end method

.method private configureBounds(Z)V
    .locals 7
    .param p1, "changed"    # Z

    .prologue
    const/4 v5, 0x0

    .line 712
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mHaveLayout:Z

    if-nez v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 716
    .local v1, "dwidth":I
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 718
    .local v0, "dheight":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    .line 719
    .local v4, "vwidth":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    .line 721
    .local v3, "vheight":I
    if-ltz v1, :cond_2

    if-ne v4, v1, :cond_7

    :cond_2
    if-ltz v0, :cond_3

    if-ne v3, v0, :cond_7

    :cond_3
    const/4 v2, 0x1

    .line 725
    .local v2, "fits":Z
    :goto_1
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v5, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 728
    if-nez p1, :cond_4

    iget v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mHaveLayout:Z

    if-eqz v5, :cond_5

    .line 729
    :cond_4
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->generateMatrix()V

    .line 730
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->generateScale()V

    .line 733
    :cond_5
    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 735
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .end local v2    # "fits":Z
    :cond_7
    move v2, v5

    .line 721
    goto :goto_1

    .line 737
    .restart local v2    # "fits":Z
    :cond_8
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method private generateMatrix()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000

    const/4 v9, 0x0

    .line 746
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 747
    .local v1, "dwidth":I
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 749
    .local v0, "dheight":I
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v6, :cond_2

    sget v5, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropSize:I

    .line 750
    .local v5, "vwidth":I
    :goto_0
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v6, :cond_3

    sget v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropSize:I

    .line 752
    .local v4, "vheight":I
    :goto_1
    if-ltz v1, :cond_0

    if-ne v5, v1, :cond_4

    :cond_0
    if-ltz v0, :cond_1

    if-ne v4, v0, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 755
    .local v2, "fits":Z
    :goto_2
    if-eqz v2, :cond_5

    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-nez v6, :cond_5

    .line 756
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 776
    :goto_3
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 777
    return-void

    .line 749
    .end local v2    # "fits":Z
    .end local v4    # "vheight":I
    .end local v5    # "vwidth":I
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    goto :goto_0

    .line 750
    .restart local v5    # "vwidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    goto :goto_1

    .line 752
    .restart local v4    # "vheight":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 759
    .restart local v2    # "fits":Z
    :cond_5
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 760
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v6, :cond_6

    .line 761
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 765
    :goto_4
    new-instance v3, Landroid/graphics/RectF;

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    int-to-float v7, v1

    iget v8, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v12

    sub-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    int-to-float v8, v0

    iget v9, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    int-to-float v9, v1

    iget v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v12

    add-float/2addr v8, v9

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    int-to-float v10, v0

    iget v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 770
    .local v3, "scaledDestination":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    invoke-virtual {v6, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 771
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v3, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3

    .line 763
    .end local v3    # "scaledDestination":Landroid/graphics/RectF;
    :cond_6
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v4

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 773
    .restart local v3    # "scaledDestination":Landroid/graphics/RectF;
    :cond_7
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempDst:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3
.end method

.method private generateScale()V
    .locals 6

    .prologue
    const/high16 v5, 0x41000000

    .line 780
    iget-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 781
    .local v1, "dwidth":I
    iget-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 783
    .local v0, "dheight":I
    iget-boolean v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getCropSize()I

    move-result v3

    .line 784
    .local v3, "vwidth":I
    :goto_0
    iget-boolean v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getCropSize()I

    move-result v2

    .line 786
    .local v2, "vheight":I
    :goto_1
    if-ge v1, v3, :cond_2

    if-ge v0, v2, :cond_2

    iget-boolean v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-nez v4, :cond_2

    .line 787
    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    .line 791
    :goto_2
    iget v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    mul-float/2addr v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxScale:F

    .line 792
    return-void

    .line 783
    .end local v2    # "vheight":I
    .end local v3    # "vwidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v3

    goto :goto_0

    .line 784
    .restart local v3    # "vwidth":I
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    goto :goto_1

    .line 789
    .restart local v2    # "vheight":I
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getScale()F

    move-result v4

    iput v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    goto :goto_2
.end method

.method private getCropSize()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropSize:I

    goto :goto_0
.end method

.method private getScale()F
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 808
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 982
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 984
    .local v1, "context":Landroid/content/Context;
    sget-boolean v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sInitialized:Z

    if-nez v4, :cond_0

    .line 985
    sput-boolean v6, Lcom/kingsoft/ex/photo/views/PhotoView;->sInitialized:Z

    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 989
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0d00f3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropSize:I

    .line 991
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    .line 992
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 993
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    const v5, 0x7f0b0079

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 994
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 996
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sput-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    .line 997
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 998
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    const v5, 0x7f0b007a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 999
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1000
    sget-object v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    const v5, 0x7f0d00f2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1002
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1003
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 1004
    .local v3, "touchSlop":I
    mul-int v4, v3, v3

    sput v4, Lcom/kingsoft/ex/photo/views/PhotoView;->sTouchSlopSquare:I

    .line 1007
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "touchSlop":I
    :cond_0
    new-instance v4, Landroid/support/v4/view/GestureDetectorCompat;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p0, v5}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 1008
    new-instance v4, Landroid/view/ScaleGestureDetector;

    invoke-direct {v4, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 1009
    iget-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-static {v4}, Landroid/support/v4/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    .line 1010
    new-instance v4, Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    invoke-direct {v4, p0}, Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;-><init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    .line 1011
    new-instance v4, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-direct {v4, p0}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;-><init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    .line 1012
    new-instance v4, Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    invoke-direct {v4, p0}, Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;-><init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    .line 1013
    new-instance v4, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

    invoke-direct {v4, p0}, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;-><init>(Lcom/kingsoft/ex/photo/views/PhotoView;)V

    iput-object v4, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

    .line 1014
    return-void
.end method

.method private rotate(FZ)V
    .locals 3
    .param p1, "degrees"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 969
    if-eqz p2, :cond_0

    .line 970
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

    invoke-virtual {v0, p1}, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->start(F)V

    .line 976
    :goto_0
    return-void

    .line 972
    :cond_0
    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotation:F

    .line 973
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 974
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method private scale(FFF)V
    .locals 6
    .param p1, "newScale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 826
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotation:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 829
    iget v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 830
    iget v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxScale:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 832
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 833
    .local v0, "currentScale":F
    div-float v1, p1, v0

    .line 836
    .local v1, "factor":F
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 839
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->snap()V

    .line 842
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotation:F

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 844
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    .line 845
    return-void
.end method

.method private scale(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "handled":Z
    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapToZoomEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    if-eqz v3, :cond_1

    .line 265
    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    if-nez v3, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 267
    .local v0, "currentScale":F
    const/high16 v3, 0x3fc00000

    mul-float v2, v0, v3

    .line 270
    .local v2, "targetScale":F
    iget v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 271
    iget v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxScale:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    iget-object v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;->start(FFFF)Z

    .line 274
    const/4 v1, 0x1

    .line 276
    .end local v0    # "currentScale":F
    .end local v2    # "targetScale":F
    :cond_0
    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    .line 278
    :cond_1
    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 279
    return v1
.end method

.method private snap()V
    .locals 15

    .prologue
    const/high16 v14, 0x41a00000

    const/high16 v13, 0x40000000

    const/4 v10, 0x0

    .line 911
    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 912
    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v12, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 915
    iget-boolean v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v3, v11

    .line 916
    .local v3, "maxLeft":F
    :goto_0
    iget-boolean v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v11

    .line 917
    .local v4, "maxRight":F
    :goto_1
    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    .line 918
    .local v1, "l":F
    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v11, Landroid/graphics/RectF;->right:F

    .line 921
    .local v6, "r":F
    sub-float v11, v6, v1

    sub-float v12, v4, v3

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 923
    sub-float v11, v4, v3

    add-float v12, v6, v1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    add-float v8, v3, v11

    .line 935
    .local v8, "translateX":F
    :goto_2
    iget-boolean v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v11, :cond_6

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v10

    .line 936
    .local v5, "maxTop":F
    :goto_3
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v10

    .line 937
    .local v2, "maxBottom":F
    :goto_4
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 938
    .local v7, "t":F
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 941
    .local v0, "b":F
    sub-float v10, v0, v7

    sub-float v11, v2, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 943
    sub-float v10, v2, v5

    add-float v11, v0, v7

    sub-float/2addr v10, v11

    div-float/2addr v10, v13

    add-float v9, v5, v10

    .line 954
    .local v9, "translateY":F
    :goto_5
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v14

    if-gtz v10, :cond_0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v14

    if-lez v10, :cond_b

    .line 955
    :cond_0
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    invoke-virtual {v10, v8, v9}, Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;->start(FF)Z

    .line 960
    :goto_6
    return-void

    .end local v0    # "b":F
    .end local v1    # "l":F
    .end local v2    # "maxBottom":F
    .end local v3    # "maxLeft":F
    .end local v4    # "maxRight":F
    .end local v5    # "maxTop":F
    .end local v6    # "r":F
    .end local v7    # "t":F
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    :cond_1
    move v3, v10

    .line 915
    goto :goto_0

    .line 916
    .restart local v3    # "maxLeft":F
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v11

    int-to-float v4, v11

    goto :goto_1

    .line 924
    .restart local v1    # "l":F
    .restart local v4    # "maxRight":F
    .restart local v6    # "r":F
    :cond_3
    cmpl-float v11, v1, v3

    if-lez v11, :cond_4

    .line 926
    sub-float v8, v3, v1

    .restart local v8    # "translateX":F
    goto :goto_2

    .line 927
    .end local v8    # "translateX":F
    :cond_4
    cmpg-float v11, v6, v4

    if-gez v11, :cond_5

    .line 929
    sub-float v8, v4, v6

    .restart local v8    # "translateX":F
    goto :goto_2

    .line 931
    .end local v8    # "translateX":F
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "translateX":F
    goto :goto_2

    :cond_6
    move v5, v10

    .line 935
    goto :goto_3

    .line 936
    .restart local v5    # "maxTop":F
    :cond_7
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    goto :goto_4

    .line 944
    .restart local v0    # "b":F
    .restart local v2    # "maxBottom":F
    .restart local v7    # "t":F
    :cond_8
    cmpl-float v10, v7, v5

    if-lez v10, :cond_9

    .line 946
    sub-float v9, v5, v7

    .restart local v9    # "translateY":F
    goto :goto_5

    .line 947
    .end local v9    # "translateY":F
    :cond_9
    cmpg-float v10, v0, v2

    if-gez v10, :cond_a

    .line 949
    sub-float v9, v2, v0

    .restart local v9    # "translateY":F
    goto :goto_5

    .line 951
    .end local v9    # "translateY":F
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "translateY":F
    goto :goto_5

    .line 957
    :cond_b
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 958
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_6
.end method

.method private translate(FF)Z
    .locals 12
    .param p1, "tx"    # F
    .param p2, "ty"    # F

    .prologue
    .line 858
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 859
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 861
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v10

    .line 862
    .local v3, "maxLeft":F
    :goto_0
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v4, v10

    .line 863
    .local v4, "maxRight":F
    :goto_1
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    .line 864
    .local v1, "l":F
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v10, Landroid/graphics/RectF;->right:F

    .line 867
    .local v6, "r":F
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_2

    .line 869
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float v10, v3, v10

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float v11, v4, v11

    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 880
    .local v8, "translateX":F
    :goto_2
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v10

    .line 881
    .local v5, "maxTop":F
    :goto_3
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v10

    .line 882
    .local v2, "maxBottom":F
    :goto_4
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v7, v10, Landroid/graphics/RectF;->top:F

    .line 883
    .local v7, "t":F
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 887
    .local v0, "b":F
    iget-boolean v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v10, :cond_6

    .line 889
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v5, v10

    iget-object v11, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float v11, v2, v11

    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 901
    .local v9, "translateY":F
    :goto_5
    iget-object v10, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 902
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    .line 904
    cmpl-float v10, v8, p1

    if-nez v10, :cond_8

    cmpl-float v10, v9, p2

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    return v10

    .line 861
    .end local v0    # "b":F
    .end local v1    # "l":F
    .end local v2    # "maxBottom":F
    .end local v3    # "maxLeft":F
    .end local v4    # "maxRight":F
    .end local v5    # "maxTop":F
    .end local v6    # "r":F
    .end local v7    # "t":F
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 862
    .restart local v3    # "maxLeft":F
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v10

    int-to-float v4, v10

    goto :goto_1

    .line 873
    .restart local v1    # "l":F
    .restart local v4    # "maxRight":F
    .restart local v6    # "r":F
    :cond_2
    sub-float v10, v6, v1

    sub-float v11, v4, v3

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 874
    sub-float v10, v4, v3

    add-float v11, v6, v1

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float v8, v3, v10

    .restart local v8    # "translateX":F
    goto :goto_2

    .line 876
    .end local v8    # "translateX":F
    :cond_3
    sub-float v10, v4, v6

    sub-float v11, v3, v1

    invoke-static {v11, p1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .restart local v8    # "translateX":F
    goto :goto_2

    .line 880
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 881
    .restart local v5    # "maxTop":F
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    goto :goto_4

    .line 893
    .restart local v0    # "b":F
    .restart local v2    # "maxBottom":F
    .restart local v7    # "t":F
    :cond_6
    sub-float v10, v0, v7

    sub-float v11, v2, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 894
    sub-float v10, v2, v5

    add-float v11, v0, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float v9, v5, v10

    .restart local v9    # "translateY":F
    goto :goto_5

    .line 896
    .end local v9    # "translateY":F
    :cond_7
    sub-float v10, v2, v0

    sub-float v11, v5, v7

    invoke-static {v11, p2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .restart local v9    # "translateY":F
    goto :goto_5

    .line 904
    :cond_8
    const/4 v10, 0x0

    goto :goto_6
.end method


# virtual methods
.method public bindPhoto(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "photoBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 458
    .local v1, "drawableBitmap":Landroid/graphics/Bitmap;
    if-ne p1, v1, :cond_0

    .line 478
    .end local v1    # "drawableBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 463
    .restart local v1    # "drawableBitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 468
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMinScale:F

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 472
    .end local v1    # "drawableBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 473
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 476
    :cond_3
    invoke-direct {p0, v0}, Lcom/kingsoft/ex/photo/views/PhotoView;->configureBounds(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_0

    .line 463
    .restart local v1    # "drawableBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 434
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    .line 435
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 436
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;->stop()V

    .line 437
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    .line 438
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 439
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    .line 440
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;->stop()V

    .line 441
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    .line 442
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;->stop()V

    .line 443
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mRotateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$RotateRunnable;

    .line 444
    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iput-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 447
    return-void
.end method

.method public enableAllowCrop(Z)V
    .locals 2
    .param p1, "allowCrop"    # Z

    .prologue
    .line 537
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mHaveLayout:Z

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set crop after view has been laid out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v0, :cond_1

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot unset crop mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    .line 544
    return-void
.end method

.method public enableImageTransforms(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    .line 703
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-nez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->resetTransformations()V

    .line 706
    :cond_0
    return-void
.end method

.method public getCroppedPhoto()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/16 v7, 0x100

    const/high16 v8, 0x43800000

    .line 550
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-nez v6, :cond_1

    .line 551
    const/4 v1, 0x0

    .line 573
    :cond_0
    :goto_0
    return-object v1

    .line 554
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 556
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 559
    .local v2, "croppedCanvas":Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 560
    .local v0, "cropWidth":I
    int-to-float v6, v0

    div-float v5, v8, v6

    .line 561
    .local v5, "scaleWidth":F
    int-to-float v6, v0

    div-float v4, v8, v6

    .line 564
    .local v4, "scaleHeight":F
    new-instance v3, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-direct {v3, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 565
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 566
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 569
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 570
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 571
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoData()[B
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoBlob:[B

    return-object v0
.end method

.method public interceptMoveLeft(FF)Z
    .locals 7
    .param p1, "origX"    # F
    .param p2, "origY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-nez v5, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v3

    .line 367
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    # getter for: Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 369
    goto :goto_0

    .line 371
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 372
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 373
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 375
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 376
    .local v2, "viewWidth":F
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 377
    .local v1, "transX":F
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 379
    .local v0, "drawWidth":F
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v5, :cond_0

    cmpg-float v5, v0, v2

    if-lez v5, :cond_0

    .line 382
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 385
    add-float v3, v0, v1

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    move v3, v4

    .line 387
    goto :goto_0

    :cond_3
    move v3, v4

    .line 390
    goto :goto_0
.end method

.method public interceptMoveRight(FF)Z
    .locals 7
    .param p1, "origX"    # F
    .param p2, "origY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-nez v5, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v3

    .line 400
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    # getter for: Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z
    invoke-static {v5}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 402
    goto :goto_0

    .line 404
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 405
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 406
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 408
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 409
    .local v2, "viewWidth":F
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mValues:[F

    const/4 v6, 0x2

    aget v1, v5, v6

    .line 410
    .local v1, "transX":F
    iget-object v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v0, v5, v6

    .line 412
    .local v0, "drawWidth":F
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v5, :cond_0

    cmpg-float v5, v0, v2

    if-lez v5, :cond_0

    .line 415
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_3

    move v3, v4

    .line 417
    goto :goto_0

    .line 418
    :cond_3
    add-float v5, v0, v1

    cmpl-float v5, v2, v5

    if-gez v5, :cond_0

    move v3, v4

    .line 423
    goto :goto_0
.end method

.method public isPhotoBound()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoBlob:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoReady()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoBlob:[B

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    .line 224
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/views/PhotoView;->scale(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, "action":I
    const/4 v4, 0x0

    .line 235
    .local v4, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return v4

    .line 237
    :pswitch_0
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDownFocusX:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDownFocusY:F

    goto :goto_0

    .line 243
    :pswitch_1
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    if-eqz v5, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/views/PhotoView;->scale(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 248
    :pswitch_2
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mQuickScaleEnabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDownFocusX:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 250
    .local v1, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDownFocusY:F

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 251
    .local v2, "deltaY":I
    mul-int v5, v1, v1

    mul-int v6, v2, v2

    add-int v3, v5, v6

    .line 252
    .local v3, "distance":I
    sget v5, Lcom/kingsoft/ex/photo/views/PhotoView;->sTouchSlopSquare:I

    if-le v3, v5, :cond_0

    .line 253
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapOccurred:Z

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 316
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mSnapRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$SnapRunnable;->stop()V

    .line 318
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 606
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 609
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 611
    .local v9, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 613
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 620
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoBlob:[B

    if-eqz v0, :cond_1

    .line 621
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mVideoReady:Z

    if-eqz v0, :cond_5

    sget-object v10, Lcom/kingsoft/ex/photo/views/PhotoView;->sVideoImage:Landroid/graphics/Bitmap;

    .line 622
    .local v10, "videoImage":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    .line 623
    .local v6, "drawLeft":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v7, v0, 0x2

    .line 624
    .local v7, "drawTop":I
    int-to-float v0, v6

    int-to-float v2, v7

    const/4 v3, 0x0

    invoke-virtual {p1, v10, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 628
    .end local v6    # "drawLeft":I
    .end local v7    # "drawTop":I
    .end local v10    # "videoImage":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 629
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 633
    :cond_2
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v8

    .line 635
    .local v8, "previousSaveCount":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropDimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 637
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 639
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 644
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 645
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 648
    .end local v8    # "previousSaveCount":I
    .end local v9    # "saveCount":I
    :cond_4
    return-void

    .line 621
    .restart local v9    # "saveCount":I
    :cond_5
    sget-object v10, Lcom/kingsoft/ex/photo/views/PhotoView;->sVideoNotReadyImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    invoke-virtual {v0, p3, p4}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->start(FF)Z

    .line 326
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 652
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 653
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mHaveLayout:Z

    .line 654
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getWidth()I

    move-result v5

    .line 655
    .local v5, "layoutWidth":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    .line 657
    .local v4, "layoutHeight":I
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mAllowCrop:Z

    if-eqz v6, :cond_0

    .line 658
    sget v6, Lcom/kingsoft/ex/photo/views/PhotoView;->sCropSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    .line 659
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 660
    .local v1, "cropLeft":I
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    sub-int v6, v4, v6

    div-int/lit8 v3, v6, 0x2

    .line 661
    .local v3, "cropTop":I
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    add-int v2, v1, v6

    .line 662
    .local v2, "cropRight":I
    iget v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropSize:I

    add-int v0, v3, v6

    .line 666
    .local v0, "cropBottom":I
    iget-object v6, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 668
    .end local v0    # "cropBottom":I
    .end local v1    # "cropLeft":I
    .end local v2    # "cropRight":I
    .end local v3    # "cropTop":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/views/PhotoView;->configureBounds(Z)V

    .line 669
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 298
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 673
    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 674
    iget v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 676
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->setMeasuredDimension(II)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 331
    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 333
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getScale()F

    move-result v0

    .line 334
    .local v0, "currentScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v0, v2

    .line 335
    .local v1, "newScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/ex/photo/views/PhotoView;->scale(FFF)V

    .line 337
    .end local v0    # "currentScale":F
    .end local v1    # "newScale":F
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 342
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/views/PhotoView$ScaleRunnable;->stop()V

    .line 344
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 346
    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mDoubleTapDebounce:Z

    .line 353
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->resetTransformations()V

    .line 355
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTransformsEnabled:Z

    if-eqz v0, :cond_0

    .line 307
    neg-float v0, p3

    neg-float v1, p4

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->translate(FF)Z

    .line 309
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mIsDoubleTouch:Z

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mScaleGetureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mTranslateRunnable:Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;

    # getter for: Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z
    invoke-static {v1}, Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;->access$000(Lcom/kingsoft/ex/photo/views/PhotoView$TranslateRunnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->snap()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetTransformations()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mOriginalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 587
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    .line 588
    return-void
.end method

.method public rotateClockwise()V
    .locals 2

    .prologue
    .line 594
    const/high16 v0, 0x42b40000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->rotate(FZ)V

    .line 595
    return-void
.end method

.method public rotateCounterClockwise()V
    .locals 2

    .prologue
    .line 601
    const/high16 v0, -0x3d4c0000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->rotate(FZ)V

    .line 602
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 4
    .param p1, "fixedHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 688
    iget v2, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 689
    .local v0, "adjustBounds":Z
    :goto_0
    iput p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    .line 690
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFixedHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/ex/photo/views/PhotoView;->setMeasuredDimension(II)V

    .line 691
    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0, v1}, Lcom/kingsoft/ex/photo/views/PhotoView;->configureBounds(Z)V

    .line 693
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->requestLayout()V

    .line 695
    :cond_0
    return-void

    .line 688
    .end local v0    # "adjustBounds":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullScreen(ZZ)V
    .locals 1
    .param p1, "fullScreen"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFullScreen:Z

    if-eq p1, v0, :cond_0

    .line 525
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mFullScreen:Z

    .line 526
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->requestLayout()V

    .line 527
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/views/PhotoView;->invalidate()V

    .line 529
    :cond_0
    return-void
.end method

.method public setMaxInitialScale(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 1362
    iput p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mMaxInitialScaleFactor:F

    .line 1363
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/kingsoft/ex/photo/views/PhotoView;->mExternalClickListener:Landroid/view/View$OnClickListener;

    .line 360
    return-void
.end method
