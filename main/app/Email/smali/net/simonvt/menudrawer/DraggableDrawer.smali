.class public abstract Lnet/simonvt/menudrawer/DraggableDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "DraggableDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/DraggableDrawer$5;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x3

.field private static final DEFAULT_PEEK_DELAY:J = 0x2710L

.field private static final DEFAULT_PEEK_START_DELAY:J = 0x1388L

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_MENU_OVERLAY_ALPHA:I = 0xb9

.field protected static final PEEK_DURATION:I = 0x1388

.field private static final PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STATE_MENU_VISIBLE:Ljava/lang/String; = "net.simonvt.menudrawer.MenuDrawer.menuVisible"


# instance fields
.field protected mActivePointerId:I

.field protected mCloseEnough:I

.field private final mDragRunnable:Ljava/lang/Runnable;

.field protected mInitialMotionX:F

.field protected mInitialMotionY:F

.field protected mIsDragging:Z

.field protected mIsPeeking:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLayerTypeHardware:Z

.field protected mMaxVelocity:I

.field protected mOffsetMenu:Z

.field protected mPeekDelay:J

.field protected final mPeekRunnable:Ljava/lang/Runnable;

.field protected mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

.field private mPeekStartRunnable:Ljava/lang/Runnable;

.field private mScroller:Lnet/simonvt/menudrawer/Scroller;

.field protected mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lnet/simonvt/menudrawer/PeekInterpolator;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/PeekInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    const/high16 v1, -0x40800000

    .line 159
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/app/Activity;I)V

    .line 64
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    .line 104
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 109
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000

    .line 163
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    .line 104
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 109
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, -0x40800000

    .line 167
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    .line 104
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 109
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v1, -0x40800000

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$1;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$2;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    .line 104
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionX:F

    .line 109
    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLastMotionY:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 172
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/DraggableDrawer;

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/menudrawer/DraggableDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/DraggableDrawer;

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postAnimationInvalidate()V

    return-void
.end method

.method private completeAnimation()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 329
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Scroller;->getFinalX()I

    move-result v0

    .line 330
    .local v0, "finalX":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 331
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 332
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 333
    return-void

    .line 331
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private completePeek()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 462
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 463
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 464
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mIsPeeking:Z

    .line 465
    return-void
.end method

.method private peekDrawerInvalidate()V
    .locals 6

    .prologue
    .line 431
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 433
    .local v0, "oldX":I
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getCurrX()I

    move-result v1

    .line 434
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 436
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 452
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 440
    .restart local v0    # "oldX":I
    .restart local v1    # "x":I
    :cond_1
    iget-wide v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 441
    new-instance v2, Lnet/simonvt/menudrawer/DraggableDrawer$4;

    invoke-direct {v2, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$4;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 447
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    invoke-virtual {p0, v2, v3, v4}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->completePeek()V

    goto :goto_0
.end method

.method private postAnimationInvalidate()V
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    iget v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v0, v2

    .line 402
    .local v0, "oldX":I
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getCurrX()I

    move-result v1

    .line 404
    .local v1, "x":I
    if-eq v1, v0, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 405
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Scroller;->getFinalX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 406
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 412
    .end local v0    # "oldX":I
    .end local v1    # "x":I
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->completeAnimation()V

    goto :goto_0
.end method

.method private supportGetTranslationX(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportGetTranslationY(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected animateOffsetTo(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 380
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v1, v0

    .line 381
    .local v1, "startX":I
    sub-int v3, p1, v1

    .line 383
    .local v3, "dx":I
    if-lez v3, :cond_0

    .line 384
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 385
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 391
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->startLayerTranslation()V

    .line 393
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->postAnimationInvalidate()V

    .line 394
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 388
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method protected animateOffsetTo(IIZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 354
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->endDrag()V

    .line 355
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->endPeek()V

    .line 357
    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    float-to-int v2, v3

    .line 358
    .local v2, "startX":I
    sub-int v1, p1, v2

    .line 359
    .local v1, "dx":I
    if-eqz v1, :cond_0

    if-nez p3, :cond_2

    .line 360
    :cond_0
    int-to-float v3, p1

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 361
    if-nez p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->setDrawerState(I)V

    .line 362
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 377
    :goto_1
    return-void

    .line 361
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 369
    if-lez p2, :cond_3

    .line 370
    const/high16 v3, 0x447a0000

    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v0, v3, 0x4

    .line 375
    .local v0, "duration":I
    :goto_2
    iget v3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMaxAnimationDuration:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->animateOffsetTo(II)V

    goto :goto_1

    .line 372
    .end local v0    # "duration":I
    :cond_3
    const/high16 v3, 0x44160000

    int-to-float v4, v1

    iget v5, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .restart local v0    # "duration":I
    goto :goto_2
.end method

.method protected canChildScrollHorizontally(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 521
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 522
    check-cast v15, Landroid/view/ViewGroup;

    .line 524
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 526
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 527
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 529
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 530
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 531
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 532
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 534
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 536
    const/4 v4, 0x1

    .line 541
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 526
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 541
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected canChildScrollVertically(Landroid/view/View;ZIII)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 555
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object/from16 v15, p1

    .line 556
    check-cast v15, Landroid/view/ViewGroup;

    .line 558
    .local v15, "group":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 560
    .local v14, "count":I
    add-int/lit8 v16, v14, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_1

    .line 561
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 563
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v11, v4, v6

    .line 564
    .local v11, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationX(Landroid/view/View;)I

    move-result v6

    add-int v12, v4, v6

    .line 565
    .local v12, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v13, v4, v6

    .line 566
    .local v13, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->supportGetTranslationY(Landroid/view/View;)I

    move-result v6

    add-int v10, v4, v6

    .line 568
    .local v10, "childBottom":I
    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    move/from16 v0, p4

    if-ge v0, v12, :cond_0

    move/from16 v0, p5

    if-lt v0, v13, :cond_0

    move/from16 v0, p5

    if-ge v0, v10, :cond_0

    const/4 v6, 0x1

    sub-int v8, p4, v11

    sub-int v9, p5, v13

    move-object/from16 v4, p0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    const/4 v4, 0x1

    .line 575
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :goto_1
    return v4

    .line 560
    .restart local v5    # "child":Landroid/view/View;
    .restart local v10    # "childBottom":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childRight":I
    .restart local v13    # "childTop":I
    .restart local v14    # "count":I
    .restart local v15    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "i":I
    :cond_0
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 575
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "childBottom":I
    .end local v11    # "childLeft":I
    .end local v12    # "childRight":I
    .end local v13    # "childTop":I
    .end local v14    # "count":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;->isViewDraggable(Landroid/view/View;III)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected canChildrenScroll(IIII)Z
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 482
    const/4 v6, 0x0

    .line 484
    .local v6, "canScroll":Z
    sget-object v0, Lnet/simonvt/menudrawer/DraggableDrawer$5;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return v6

    .line 487
    :pswitch_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    .line 488
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 491
    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v6

    .line 494
    goto :goto_0

    .line 498
    :pswitch_1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuVisible:Z

    if-nez v0, :cond_1

    .line 499
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 502
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v0}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/DraggableDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v6

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected cancelContentTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 337
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 338
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->getChildCount()I

    move-result v9

    .line 339
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 340
    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/DraggableDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v2, v8}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 344
    return-void
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mIsDragging:Z

    .line 309
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 313
    :cond_0
    return-void
.end method

.method protected endPeek()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 472
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 473
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mIsPeeking:Z

    .line 475
    return-void
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchBezelSize:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    return v0
.end method

.method protected getXVelocity(Landroid/view/VelocityTracker;)F
    .locals 2
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 580
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method protected getYVelocity(Landroid/view/VelocityTracker;)F
    .locals 2
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 588
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 591
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 179
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchSlop:I

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMaxVelocity:I

    .line 182
    new-instance v1, Lnet/simonvt/menudrawer/Scroller;

    sget-object v2, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lnet/simonvt/menudrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    .line 183
    new-instance v1, Lnet/simonvt/menudrawer/Scroller;

    sget-object v2, Lnet/simonvt/menudrawer/DraggableDrawer;->PEEK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Lnet/simonvt/menudrawer/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    .line 185
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mCloseEnough:I

    .line 186
    return-void
.end method

.method protected abstract initPeekScroller()V
.end method

.method protected isCloseEnough()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetPixels:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mCloseEnough:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuVisible:Z

    return v0
.end method

.method public peekDrawer()V
    .locals 4

    .prologue
    .line 224
    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 225
    return-void
.end method

.method public peekDrawer(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 228
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawer(JJ)V

    .line 229
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "delay"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 232
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startDelay must be zero or larger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    cmp-long v0, p3, v1

    if-gez v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delay must be zero or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    iput-wide p3, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekDelay:J

    .line 243
    new-instance v0, Lnet/simonvt/menudrawer/DraggableDrawer$3;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/DraggableDrawer$3;-><init>(Lnet/simonvt/menudrawer/DraggableDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mPeekStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 617
    check-cast v1, Landroid/os/Bundle;

    .line 618
    .local v1, "state":Landroid/os/Bundle;
    const-string/jumbo v3, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 619
    .local v0, "menuOpen":Z
    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->openMenu(Z)V

    .line 624
    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    iput v2, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    .line 625
    return-void

    .line 622
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    goto :goto_0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 611
    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 612
    .local v0, "menuVisible":Z
    :goto_0
    const-string/jumbo v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    return-void

    .line 611
    .end local v0    # "menuVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 253
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    if-eq p1, v0, :cond_0

    .line 254
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    .line 255
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 256
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 259
    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 203
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    .line 204
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 205
    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->setOffsetPixels(F)V

    .line 207
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    .line 208
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    .line 209
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuAble:Z

    .line 201
    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1
    .param p1, "offsetMenu"    # Z

    .prologue
    .line 212
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    if-eq p1, v0, :cond_0

    .line 213
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mOffsetMenu:Z

    .line 214
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->invalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 273
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchBezelSize:I

    .line 274
    return-void
.end method

.method public setTouchMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 266
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    if-eq v0, p1, :cond_0

    .line 267
    iput p1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mTouchMode:I

    .line 268
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->updateTouchAreaSize()V

    .line 270
    :cond_0
    return-void
.end method

.method protected startLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 284
    sget-boolean v0, Lnet/simonvt/menudrawer/DraggableDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mHardwareLayersEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    .line 286
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 287
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 289
    :cond_0
    return-void
.end method

.method protected startPeek()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mIsPeeking:Z

    .line 419
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->initPeekScroller()V

    .line 421
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->startLayerTranslation()V

    .line 422
    invoke-direct {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->peekDrawerInvalidate()V

    .line 423
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDragRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/DraggableDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 320
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mScroller:Lnet/simonvt/menudrawer/Scroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/Scroller;->abortAnimation()V

    .line 321
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopLayerTranslation()V

    .line 322
    return-void
.end method

.method protected stopLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    if-eqz v0, :cond_0

    .line 297
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mLayerTypeHardware:Z

    .line 298
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 299
    iget-object v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 301
    :cond_0
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 189
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->closeMenu(Z)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/simonvt/menudrawer/DraggableDrawer;->mDrawerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 192
    :cond_3
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->openMenu(Z)V

    goto :goto_0
.end method
