.class public abstract Lnet/simonvt/menudrawer/MenuDrawer;
.super Landroid/view/ViewGroup;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/MenuDrawer$3;,
        Lnet/simonvt/menudrawer/MenuDrawer$SavedState;,
        Lnet/simonvt/menudrawer/MenuDrawer$Type;,
        Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;,
        Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DELAY:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x1c2

.field private static final DEFAULT_DRAG_BEZEL_DP:I = 0x30

.field private static final DEFAULT_DROP_SHADOW_DP:I = 0x6

.field static final INDICATOR_ANIM_DURATION:I = 0x320

.field protected static final INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MENU_DRAG_CONTENT:I = 0x0

.field public static final MENU_DRAG_WINDOW:I = 0x1

.field protected static final SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_CLOSING:I = 0x1

.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_OPEN:I = 0x8

.field public static final STATE_OPENING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuDrawer"

.field public static final TOUCH_MODE_BEZEL:I = 0x1

.field public static final TOUCH_MODE_FULLSCREEN:I = 0x2

.field public static final TOUCH_MODE_NONE:I

.field static final USE_TRANSLATIONS:Z


# instance fields
.field private mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

.field protected mActiveIndicator:Landroid/graphics/Bitmap;

.field protected mActivePosition:I

.field protected final mActiveRect:Landroid/graphics/Rect;

.field protected mActiveView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIndicatorAnimation:Z

.field protected mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field private mCurrentUpContentDesc:I

.field private mCustomDropShadow:Z

.field private mDragMode:I

.field protected mDrawOverlay:Z

.field private mDrawerClosedContentDesc:I

.field protected mDrawerIndicatorEnabled:Z

.field private mDrawerOpenContentDesc:I

.field protected mDrawerState:I

.field protected mDropShadowColor:I

.field protected mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropShadowEnabled:Z

.field protected final mDropShadowRect:Landroid/graphics/Rect;

.field protected mDropShadowSize:I

.field protected mHardwareLayersEnabled:Z

.field protected mIndicatorAnimating:Z

.field private final mIndicatorClipRect:Landroid/graphics/Rect;

.field protected mIndicatorOffset:F

.field private mIndicatorRunnable:Ljava/lang/Runnable;

.field private mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

.field protected mIndicatorStartPos:I

.field protected mIsStatic:Z

.field protected mMaxAnimationDuration:I

.field protected mMenuAble:Z

.field protected mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

.field protected mMenuOverlay:Landroid/graphics/drawable/Drawable;

.field protected mMenuSize:I

.field private mMenuView:Landroid/view/View;

.field protected mMenuVisible:Z

.field protected mOffsetPixels:F

.field private mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

.field protected mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

.field private mPosition:Lnet/simonvt/menudrawer/Position;

.field private mResolvedPosition:Lnet/simonvt/menudrawer/Position;

.field private mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

.field protected mState:Landroid/os/Bundle;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

.field protected mTouchBezelSize:I

.field protected mTouchMode:I

.field protected mTouchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    .line 182
    new-instance v0, Lnet/simonvt/menudrawer/SmoothInterpolator;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/SmoothInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 187
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 536
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    .line 537
    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    .line 538
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 542
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 545
    const v0, 0x7f010029

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 546
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 549
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    .line 272
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuAble:Z

    .line 277
    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    .line 288
    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 310
    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchMode:I

    .line 315
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mHardwareLayersEnabled:Z

    .line 330
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$1;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    .line 360
    const/16 v0, 0x1c2

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    .line 1045
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer$2;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 551
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->animateIndicatorInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    .line 29
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private animateIndicatorInvalidate()V
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->getCurr()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1107
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1109
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/FloatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->completeAnimatingIndicator()V

    goto :goto_0
.end method

.method public static attach(Landroid/app/Activity;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 411
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lnet/simonvt/menudrawer/MenuDrawer$Type;

    .prologue
    .line 422
    sget-object v0, Lnet/simonvt/menudrawer/Position;->START:Lnet/simonvt/menudrawer/Position;

    invoke-static {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lnet/simonvt/menudrawer/MenuDrawer$Type;
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;I)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lnet/simonvt/menudrawer/MenuDrawer$Type;
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;
    .param p3, "dragMode"    # I

    .prologue
    .line 459
    invoke-static {p0, p3, p2, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->createMenuDrawer(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Lnet/simonvt/menudrawer/MenuDrawer$Type;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    .line 460
    .local v0, "menuDrawer":Lnet/simonvt/menudrawer/MenuDrawer;
    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setId(I)V

    .line 462
    packed-switch p3, :pswitch_data_0

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown menu mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :pswitch_0
    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attachToContent(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V

    .line 475
    :goto_0
    return-object v0

    .line 468
    :pswitch_1
    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attachToDecor(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "position"    # Lnet/simonvt/menudrawer/Position;

    .prologue
    .line 433
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$Type;->BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    invoke-static {p0, v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    return-object v0
.end method

.method private static attachToContent(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    const/4 v2, -0x1

    .line 515
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 516
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 517
    invoke-virtual {v0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 518
    return-void
.end method

.method private static attachToDecor(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lnet/simonvt/menudrawer/MenuDrawer;

    .prologue
    const/4 v3, -0x1

    .line 524
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 525
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 527
    .local v0, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 528
    invoke-virtual {v1, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 530
    iget-object v2, p1, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method

.method private completeAnimatingIndicator()V
    .locals 1

    .prologue
    .line 1122
    const/high16 v0, 0x3f800000

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1124
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1125
    return-void
.end method

.method private static createMenuDrawer(Landroid/app/Activity;ILnet/simonvt/menudrawer/Position;Lnet/simonvt/menudrawer/MenuDrawer$Type;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lnet/simonvt/menudrawer/Position;
    .param p3, "type"    # Lnet/simonvt/menudrawer/MenuDrawer$Type;

    .prologue
    .line 484
    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->STATIC:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    if-ne p3, v1, :cond_1

    .line 485
    new-instance v0, Lnet/simonvt/menudrawer/StaticDrawer;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/StaticDrawer;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, "drawer":Lnet/simonvt/menudrawer/MenuDrawer;
    :cond_0
    :goto_0
    iput p1, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    .line 501
    invoke-direct {v0, p2}, Lnet/simonvt/menudrawer/MenuDrawer;->setPosition(Lnet/simonvt/menudrawer/Position;)V

    .line 503
    return-object v0

    .line 487
    .end local v0    # "drawer":Lnet/simonvt/menudrawer/MenuDrawer;
    :cond_1
    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->OVERLAY:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    if-ne p3, v1, :cond_3

    .line 488
    new-instance v0, Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;-><init>(Landroid/app/Activity;I)V

    .line 489
    .restart local v0    # "drawer":Lnet/simonvt/menudrawer/MenuDrawer;
    sget-object v1, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    if-eq p2, v1, :cond_2

    sget-object v1, Lnet/simonvt/menudrawer/Position;->START:Lnet/simonvt/menudrawer/Position;

    if-ne p2, v1, :cond_0

    .line 490
    :cond_2
    invoke-virtual {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    goto :goto_0

    .line 494
    .end local v0    # "drawer":Lnet/simonvt/menudrawer/MenuDrawer;
    :cond_3
    new-instance v0, Lnet/simonvt/menudrawer/SlidingDrawer;

    invoke-direct {v0, p0, p1}, Lnet/simonvt/menudrawer/SlidingDrawer;-><init>(Landroid/app/Activity;I)V

    .line 495
    .restart local v0    # "drawer":Lnet/simonvt/menudrawer/MenuDrawer;
    sget-object v1, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    if-eq p2, v1, :cond_4

    sget-object v1, Lnet/simonvt/menudrawer/Position;->START:Lnet/simonvt/menudrawer/Position;

    if-ne p2, v1, :cond_0

    .line 496
    :cond_4
    invoke-virtual {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 693
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 694
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowColor:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 697
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->updateDropShadowRect()V

    .line 698
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 699
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 700
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 736
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 737
    .local v3, "position":Ljava/lang/Integer;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 738
    .local v2, "pos":I
    :goto_0
    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivePosition:I

    if-ne v2, v4, :cond_0

    .line 739
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->updateIndicatorClipRect()V

    .line 740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 741
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "drawLeft":I
    const/4 v1, 0x0

    .line 745
    .local v1, "drawTop":I
    sget-object v4, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 762
    :goto_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 763
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 765
    .end local v0    # "drawLeft":I
    .end local v1    # "drawTop":I
    :cond_0
    return-void

    .line 737
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 748
    .restart local v0    # "drawLeft":I
    .restart local v1    # "drawTop":I
    .restart local v2    # "pos":I
    :pswitch_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 749
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 750
    goto :goto_1

    .line 753
    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 754
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 755
    goto :goto_1

    .line 758
    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 759
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIndicatorStartPos()I
    .locals 2

    .prologue
    .line 1076
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1084
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    .line 1078
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1080
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1082
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPosition(Lnet/simonvt/menudrawer/Position;)V
    .locals 1
    .param p1, "position"    # Lnet/simonvt/menudrawer/Position;

    .prologue
    .line 848
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    .line 849
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mResolvedPosition:Lnet/simonvt/menudrawer/Position;

    .line 850
    return-void
.end method

.method private shouldDrawIndicator()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimatingIndicator()V
    .locals 4

    .prologue
    .line 1063
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 1064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1065
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lnet/simonvt/menudrawer/FloatScroller;->startScroll(FFI)V

    .line 1067
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->animateIndicatorInvalidate()V

    .line 1068
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu(Z)V

    .line 958
    return-void
.end method

.method public abstract closeMenu(Z)V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 675
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    float-to-int v0, v1

    .line 677
    .local v0, "offsetPixels":I
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawOverlay:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 680
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowEnabled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v1, :cond_2

    .line 681
    :cond_1
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->drawDropShadow(Landroid/graphics/Canvas;)V

    .line 683
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->shouldDrawIndicator()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v1, :cond_4

    .line 684
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 686
    :cond_4
    return-void
.end method

.method protected dispatchOnDrawerSlide(FI)V
    .locals 1
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 1575
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1578
    :cond_0
    return-void
.end method

.method protected dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected abstract drawOverlay(Landroid/graphics/Canvas;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 1568
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    sget-object v1, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    if-eq v0, v1, :cond_0

    .line 1569
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setPadding(IIII)V

    .line 1571
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 1405
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawOverlay()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawOverlay:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 1180
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1191
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 1182
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1185
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1188
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method protected getPosition()Lnet/simonvt/menudrawer/Position;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 853
    invoke-static {p0}, Lnet/simonvt/menudrawer/ViewHelper;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 855
    .local v0, "layoutDirection":I
    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 871
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    :goto_0
    return-object v1

    .line 857
    :pswitch_0
    if-ne v0, v3, :cond_0

    .line 858
    sget-object v1, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    goto :goto_0

    .line 860
    :cond_0
    sget-object v1, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    goto :goto_0

    .line 864
    :pswitch_1
    if-ne v0, v3, :cond_1

    .line 865
    sget-object v1, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    goto :goto_0

    .line 867
    :cond_1
    sget-object v1, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    goto :goto_0

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 554
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setWillNotDraw(Z)V

    .line 555
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setFocusable(Z)V

    .line 557
    sget-object v6, Lcom/android/email/R$styleable;->MenuDrawer:[I

    const v7, 0x7f010029

    const v8, 0x7f110117

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 560
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 561
    .local v1, "contentBackground":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 563
    .local v3, "menuBackground":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x2

    const/16 v7, 0x12c

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    .line 565
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 566
    .local v2, "indicatorResId":I
    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    .line 570
    :cond_0
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 572
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 575
    const/4 v6, 0x6

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowColor:I

    .line 580
    :goto_0
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    .line 583
    const/16 v6, 0x8

    const/16 v7, 0x30

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/MenuDrawer;->dpToPx(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchBezelSize:I

    .line 586
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 588
    const/16 v6, 0xa

    const/16 v7, 0x1c2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 590
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 591
    .local v5, "slideDrawableResId":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 592
    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(I)V

    .line 595
    :cond_1
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 596
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    .line 598
    const/16 v6, 0xe

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawOverlay:Z

    .line 600
    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 601
    .local v4, "position":I
    invoke-static {v4}, Lnet/simonvt/menudrawer/Position;->fromValue(I)Lnet/simonvt/menudrawer/Position;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/simonvt/menudrawer/MenuDrawer;->setPosition(Lnet/simonvt/menudrawer/Position;)V

    .line 603
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 605
    new-instance v6, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;

    invoke-direct {v6, p1}, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 606
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const v7, 0x7f0c0031

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setId(I)V

    .line 607
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    new-instance v6, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;

    invoke-direct {v6, p1}, Lnet/simonvt/menudrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 610
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const v7, 0x7f0c002f

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setId(I)V

    .line 611
    iget-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    new-instance v6, Lnet/simonvt/menudrawer/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Lnet/simonvt/menudrawer/ColorDrawable;-><init>(I)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    .line 615
    new-instance v6, Lnet/simonvt/menudrawer/FloatScroller;

    sget-object v7, Lnet/simonvt/menudrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v7}, Lnet/simonvt/menudrawer/FloatScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorScroller:Lnet/simonvt/menudrawer/FloatScroller;

    .line 616
    return-void

    .line 577
    .end local v4    # "position":I
    .end local v5    # "slideDrawableResId":I
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mCustomDropShadow:Z

    goto/16 :goto_0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public abstract isMenuVisible()Z
.end method

.method protected isViewDescendant(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 645
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 646
    if-ne v0, p0, :cond_0

    .line 647
    const/4 v1, 0x1

    .line 653
    :goto_1
    return v1

    .line 650
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logDrawerState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 1506
    packed-switch p1, :pswitch_data_0

    .line 1528
    :pswitch_0
    const-string/jumbo v0, "MenuDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DrawerState] Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1530
    :goto_0
    return-void

    .line 1508
    :pswitch_1
    const-string/jumbo v0, "MenuDrawer"

    const-string/jumbo v1, "[DrawerState] STATE_CLOSED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1512
    :pswitch_2
    const-string/jumbo v0, "MenuDrawer"

    const-string/jumbo v1, "[DrawerState] STATE_CLOSING"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1516
    :pswitch_3
    const-string/jumbo v0, "MenuDrawer"

    const-string/jumbo v1, "[DrawerState] STATE_DRAGGING"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1520
    :pswitch_4
    const-string/jumbo v0, "MenuDrawer"

    const-string/jumbo v1, "[DrawerState] STATE_OPENING"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1524
    :pswitch_5
    const-string/jumbo v0, "MenuDrawer"

    const-string/jumbo v1, "[DrawerState] STATE_OPEN"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 658
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 659
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 660
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 665
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 666
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 620
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 621
    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 622
    .local v1, "menu":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 624
    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 627
    :cond_0
    const v2, 0x7f0c002d

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 630
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    .line 633
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 634
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 637
    :cond_2
    return-void
.end method

.method protected abstract onOffsetPixelsChanged(I)V
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1618
    move-object v0, p1

    check-cast v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    .line 1619
    .local v0, "savedState":Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1621
    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    .line 1622
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 878
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mCustomDropShadow:Z

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowColor:I

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 880
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mResolvedPosition:Lnet/simonvt/menudrawer/Position;

    if-eq v1, v2, :cond_1

    .line 881
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mResolvedPosition:Lnet/simonvt/menudrawer/Position;

    .line 882
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    const/high16 v2, -0x40800000

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    .line 885
    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    if-ne p1, v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/SlideDrawable;->setIsRtl(Z)V

    .line 887
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->requestLayout()V

    .line 888
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 889
    return-void

    .line 885
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1606
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1607
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-direct {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1609
    .local v0, "state":Lnet/simonvt/menudrawer/MenuDrawer$SavedState;
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1610
    :cond_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1612
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    iput-object v2, v0, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    .line 1613
    return-object v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->openMenu(Z)V

    .line 944
    return-void
.end method

.method public abstract openMenu(Z)V
.end method

.method public abstract peekDrawer()V
.end method

.method public abstract peekDrawer(J)V
.end method

.method public abstract peekDrawer(JJ)V
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1560
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1564
    :goto_0
    return-void

    .line 1562
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    .line 1601
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "in":Landroid/os/Parcelable;
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1602
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1587
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1588
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    return-object v0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1593
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    .line 999
    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1011
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1012
    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivePosition:I

    .line 1014
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->startAnimatingIndicator()V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1019
    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1027
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eq p1, v0, :cond_0

    .line 1028
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 1029
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->completeAnimatingIndicator()V

    .line 1031
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1456
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1466
    :goto_0
    return-void

    .line 1458
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1459
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 1463
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 1456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1474
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1484
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1494
    :goto_0
    return-void

    .line 1486
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1487
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1491
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawOverlay(Z)V
    .locals 0
    .param p1, "drawOverlay"    # Z

    .prologue
    .line 1293
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawOverlay:Z

    .line 1294
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1365
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setupUpIndicator(Activity) has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_0
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    .line 1370
    if-eqz p1, :cond_2

    .line 1371
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1376
    :goto_1
    return-void

    .line 1371
    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0

    .line 1374
    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method protected setDrawerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1497
    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    if-eq p1, v1, :cond_0

    .line 1498
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 1499
    .local v0, "oldState":I
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerState:I

    .line 1500
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1503
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1229
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    .line 1230
    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1218
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1219
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mCustomDropShadow:Z

    .line 1220
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1221
    return-void

    .line 1219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1201
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    .line 1203
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    const v2, 0xffffff

    and-int v0, p1, v2

    .line 1204
    .local v0, "endColor":I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1209
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1210
    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1174
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 1175
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1176
    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1245
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    .line 1246
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    .line 1247
    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1284
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 1285
    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1415
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1416
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1417
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;)V

    .line 1418
    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1426
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1436
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1437
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1438
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    return-void
.end method

.method public abstract setMenuVisible(Z)V
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method protected setOffsetPixels(F)V
    .locals 6
    .param p1, "offsetPixels"    # F

    .prologue
    .line 897
    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    float-to-int v2, v4

    .line 898
    .local v2, "oldOffset":I
    float-to-int v0, p1

    .line 900
    .local v0, "newOffset":I
    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    .line 902
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    if-eqz v4, :cond_0

    .line 903
    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 904
    .local v1, "offset":F
    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-virtual {v4, v1}, Lnet/simonvt/menudrawer/SlideDrawable;->setOffset(F)V

    .line 905
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->updateUpContentDescription()V

    .line 908
    .end local v1    # "offset":F
    :cond_0
    if-eq v0, v2, :cond_1

    .line 909
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->onOffsetPixelsChanged(I)V

    .line 910
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuVisible:Z

    .line 913
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 914
    .local v3, "openRatio":F
    invoke-virtual {p0, v3, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->dispatchOnDrawerSlide(FI)V

    .line 916
    .end local v3    # "openRatio":F
    :cond_1
    return-void

    .line 910
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1156
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1157
    return-void
.end method

.method public setOnInterceptMoveEventListener(Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    .prologue
    .line 1165
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    .line 1166
    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 1319
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    .line 1328
    new-instance v0, Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/SlideDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    .line 1329
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-static {p0}, Lnet/simonvt/menudrawer/ViewHelper;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/SlideDrawable;->setIsRtl(Z)V

    .line 1331
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1334
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1335
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1339
    :cond_0
    return-void

    .line 1329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1335
    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_1
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1347
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1348
    new-instance v0, Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    .line 1349
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1351
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1352
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mSlideDrawable:Lnet/simonvt/menudrawer/SlideDrawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1356
    :cond_0
    return-void

    .line 1352
    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->toggleMenu(Z)V

    .line 930
    return-void
.end method

.method public abstract toggleMenu(Z)V
.end method

.method protected updateDropShadowRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    sget-object v0, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 733
    :goto_0
    return-void

    .line 706
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 707
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 708
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 709
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 713
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 715
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 716
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 720
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 721
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 722
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lnet/simonvt/menudrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 723
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 727
    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 728
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 729
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lnet/simonvt/menudrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 730
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected updateIndicatorClipRect()V
    .locals 17

    .prologue
    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lnet/simonvt/menudrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 774
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v14, :cond_0

    const/high16 v10, 0x3f800000

    .line 776
    .local v10, "openRatio":F
    :goto_0
    const/high16 v14, 0x3f800000

    sget-object v15, Lnet/simonvt/menudrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000

    sub-float v16, v16, v10

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    sub-float v7, v14, v15

    .line 778
    .local v7, "interpolatedRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 779
    .local v5, "indicatorWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 781
    .local v4, "indicatorHeight":I
    int-to-float v14, v5

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 782
    .local v8, "interpolatedWidth":I
    int-to-float v14, v4

    mul-float/2addr v14, v7

    float-to-int v6, v14

    .line 784
    .local v6, "interpolatedHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 786
    .local v12, "startPos":I
    const/4 v9, 0x0

    .line 787
    .local v9, "left":I
    const/4 v13, 0x0

    .line 788
    .local v13, "top":I
    const/4 v11, 0x0

    .line 789
    .local v11, "right":I
    const/4 v1, 0x0

    .line 791
    .local v1, "bottom":I
    sget-object v14, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v15

    invoke-virtual {v15}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 815
    :goto_1
    sget-object v14, Lnet/simonvt/menudrawer/MenuDrawer$3;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v15

    invoke-virtual {v15}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 841
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v9, v14, Landroid/graphics/Rect;->left:I

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->top:I

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->right:I

    .line 844
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 845
    return-void

    .line 774
    .end local v1    # "bottom":I
    .end local v4    # "indicatorHeight":I
    .end local v5    # "indicatorWidth":I
    .end local v6    # "interpolatedHeight":I
    .end local v7    # "interpolatedRatio":F
    .end local v8    # "interpolatedWidth":I
    .end local v9    # "left":I
    .end local v10    # "openRatio":F
    .end local v11    # "right":I
    .end local v12    # "startPos":I
    .end local v13    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mOffsetPixels:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mMenuSize:I

    int-to-float v15, v15

    div-float v10, v14, v15

    goto :goto_0

    .line 794
    .restart local v1    # "bottom":I
    .restart local v4    # "indicatorHeight":I
    .restart local v5    # "indicatorWidth":I
    .restart local v6    # "interpolatedHeight":I
    .restart local v7    # "interpolatedRatio":F
    .restart local v8    # "interpolatedWidth":I
    .restart local v9    # "left":I
    .restart local v10    # "openRatio":F
    .restart local v11    # "right":I
    .restart local v12    # "startPos":I
    .restart local v13    # "top":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int/2addr v15, v4

    div-int/lit8 v15, v15, 0x2

    add-int v3, v14, v15

    .line 795
    .local v3, "finalTop":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_1

    .line 796
    int-to-float v14, v12

    sub-int v15, v3, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 800
    :goto_3
    add-int v1, v13, v4

    .line 801
    goto :goto_1

    .line 798
    :cond_1
    move v13, v3

    goto :goto_3

    .line 805
    .end local v3    # "finalTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v15, v15, 0x2

    add-int v2, v14, v15

    .line 806
    .local v2, "finalLeft":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_2

    .line 807
    int-to-float v14, v12

    sub-int v15, v2, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 811
    :goto_4
    add-int v11, v9, v5

    goto/16 :goto_1

    .line 809
    :cond_2
    move v9, v2

    goto :goto_4

    .line 817
    .end local v2    # "finalLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v11

    .line 818
    sub-int v9, v11, v8

    .line 819
    goto/16 :goto_2

    .line 823
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    .line 824
    sub-int v13, v1, v6

    .line 825
    goto/16 :goto_2

    .line 829
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lnet/simonvt/menudrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v9

    .line 830
    add-int v11, v9, v8

    .line 831
    goto/16 :goto_2

    .line 835
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/MenuDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lnet/simonvt/menudrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v13

    .line 836
    add-int v1, v13, v6

    goto/16 :goto_2

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 815
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateTouchAreaSize()V
    .locals 2

    .prologue
    .line 1092
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1093
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchBezelSize:I

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchSize:I

    .line 1099
    :goto_0
    return-void

    .line 1094
    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1095
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0

    .line 1097
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0
.end method

.method protected updateUpContentDescription()V
    .locals 2

    .prologue
    .line 1306
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 1307
    .local v0, "upContentDesc":I
    :goto_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mCurrentUpContentDesc:I

    if-eq v0, v1, :cond_0

    .line 1308
    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mCurrentUpContentDesc:I

    .line 1309
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mActionBarHelper:Lnet/simonvt/menudrawer/compat/ActionBarHelper;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/compat/ActionBarHelper;->setActionBarDescription(I)V

    .line 1311
    :cond_0
    return-void

    .line 1306
    .end local v0    # "upContentDesc":I
    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method
