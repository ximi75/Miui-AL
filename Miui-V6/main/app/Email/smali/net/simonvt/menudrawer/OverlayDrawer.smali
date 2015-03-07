.class public Lnet/simonvt/menudrawer/OverlayDrawer;
.super Lnet/simonvt/menudrawer/DraggableDrawer;
.source "OverlayDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/OverlayDrawer$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayDrawer"


# instance fields
.field private mPeekSize:I

.field private mRevealRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    .line 18
    new-instance v0, Lnet/simonvt/menudrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$1;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lnet/simonvt/menudrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$1;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lnet/simonvt/menudrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$1;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Lnet/simonvt/menudrawer/OverlayDrawer$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/OverlayDrawer$1;-><init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/menudrawer/OverlayDrawer;)I
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/menudrawer/OverlayDrawer;

    .prologue
    .line 12
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    return v0
.end method

.method private isContentTouch(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "contentTouch":Z
    sget-object v3, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v4

    invoke-virtual {v4}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 363
    :goto_0
    return v0

    .line 347
    :pswitch_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_0

    move v0, v1

    .line 348
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 347
    goto :goto_1

    .line 351
    :pswitch_1
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_1

    move v0, v1

    .line 352
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 351
    goto :goto_2

    .line 355
    :pswitch_2
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v3

    if-ge v3, p2, :cond_2

    move v0, v1

    .line 356
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 355
    goto :goto_3

    .line 359
    :pswitch_3
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 786
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 787
    .local v1, "pointerId":I
    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 788
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 789
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 790
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 791
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 792
    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 795
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 788
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkTouchSlop(FF)Z
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    sget-object v2, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 515
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 512
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 515
    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public closeMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    .line 115
    return-void
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v3

    .line 68
    .local v3, "width":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 69
    .local v0, "height":I
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 70
    .local v1, "offsetPixels":I
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 72
    .local v2, "openRatio":F
    sget-object v4, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 90
    :goto_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x43390000

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 91
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    return-void

    .line 74
    :pswitch_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v3, v1

    invoke-virtual {v4, v6, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v1

    invoke-virtual {v4, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 188
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 194
    :pswitch_3
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    sget-boolean v0, Lnet/simonvt/menudrawer/OverlayDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setHardwareLayersEnabled(Z)V

    .line 61
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/DraggableDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    .line 63
    return-void
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v1, 0x0

    .line 162
    sget-object v0, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 171
    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    .line 172
    .local v3, "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 176
    :goto_0
    return-void

    .line 165
    .end local v3    # "dx":I
    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    neg-int v3, v0

    .line 166
    .restart local v3    # "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDownAllowDrag(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    sget-object v5, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v6

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return v3

    .line 369
    :pswitch_0
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_1

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v2

    .line 374
    .local v2, "width":I
    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    float-to-int v1, v5

    .line 376
    .local v1, "initialMotionX":I
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_3

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v2, v5

    if-ge v1, v5, :cond_4

    :cond_3
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    int-to-float v5, v1

    int-to-float v6, v2

    iget v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 380
    .end local v1    # "initialMotionX":I
    .end local v2    # "width":I
    :pswitch_2
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_5

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    :cond_6
    move v3, v4

    goto :goto_0

    .line 384
    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 385
    .local v0, "height":I
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v5, :cond_7

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    int-to-float v6, v0

    iget v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 537
    .local v0, "action":I
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuAble:Z

    if-nez v9, :cond_0

    .line 538
    const/4 v9, 0x0

    .line 668
    :goto_0
    return v9

    .line 540
    :cond_0
    const/4 v9, 0x1

    if-eq v0, v9, :cond_1

    const/4 v9, 0x3

    if-ne v0, v9, :cond_4

    .line 541
    :cond_1
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 542
    const/4 v9, -0x1

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 543
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 544
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2

    .line 545
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 546
    const/4 v9, 0x0

    iput-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 549
    :cond_2
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 550
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->openMenu()V

    .line 555
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu()V

    goto :goto_1

    .line 558
    :cond_4
    if-nez v0, :cond_5

    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->isCloseEnough()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 559
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->setOffsetPixels(F)V

    .line 560
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->stopAnimation()V

    .line 561
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 562
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->setDrawerState(I)V

    .line 563
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 567
    :cond_5
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_7

    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, "index":I
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 570
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 571
    const/4 v9, -0x1

    if-ne v5, v9, :cond_6

    const/4 v5, 0x0

    .line 574
    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v7, v9

    .line 575
    .local v7, "x":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v8, v9

    .line 576
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lnet/simonvt/menudrawer/OverlayDrawer;->isContentTouch(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 577
    const/4 v9, 0x1

    goto :goto_0

    .line 581
    .end local v5    # "index":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_7
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v9, :cond_8

    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchMode:I

    if-nez v9, :cond_8

    .line 582
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 585
    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v9, :cond_9

    .line 586
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 589
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 665
    :cond_a
    :goto_2
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 666
    :cond_b
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 668
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    goto/16 :goto_0

    .line 591
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 593
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lnet/simonvt/menudrawer/OverlayDrawer;->onDownAllowDrag(II)Z

    move-result v2

    .line 594
    .local v2, "allowDrag":Z
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 596
    if-eqz v2, :cond_a

    .line 597
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_d

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->setDrawerState(I)V

    .line 598
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->stopAnimation()V

    .line 599
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 601
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v9, :cond_c

    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_c

    .line 602
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa0

    invoke-virtual {p0, v9, v10, v11}, Lnet/simonvt/menudrawer/OverlayDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    :cond_c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    goto :goto_2

    .line 597
    :cond_d
    const/4 v9, 0x0

    goto :goto_3

    .line 611
    .end local v2    # "allowDrag":Z
    :sswitch_1
    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 612
    .local v1, "activePointerId":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_a

    .line 617
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 618
    .local v6, "pointerIndex":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_e

    .line 619
    const/4 v9, 0x0

    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 620
    const/4 v9, -0x1

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 621
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endDrag()V

    .line 622
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu(Z)V

    .line 623
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 626
    :cond_e
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 627
    .local v7, "x":F
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v3, v7, v9

    .line 628
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 629
    .local v8, "y":F
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v4, v8, v9

    .line 631
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-gez v9, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_10

    .line 632
    :cond_f
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 633
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 636
    :cond_10
    invoke-virtual {p0, v3, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->checkTouchSlop(FF)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 637
    iget-object v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    if-eqz v9, :cond_12

    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_11

    iget-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v9, :cond_12

    :cond_11
    float-to-int v9, v3

    float-to-int v10, v4

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lnet/simonvt/menudrawer/OverlayDrawer;->canChildrenScroll(IIII)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 639
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endDrag()V

    .line 640
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->requestDisallowInterceptTouchEvent(Z)V

    .line 641
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 644
    :cond_12
    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {p0, v9, v10, v3, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v2

    .line 646
    .restart local v2    # "allowDrag":Z
    if-eqz v2, :cond_a

    .line 647
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 648
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->stopAnimation()V

    .line 649
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->setDrawerState(I)V

    .line 650
    const/4 v9, 0x1

    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 651
    iput v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 652
    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 659
    .end local v1    # "activePointerId":I
    .end local v2    # "allowDrag":Z
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v6    # "pointerIndex":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :sswitch_2
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 660
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 661
    iget v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_2

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 255
    sub-int v3, p4, p2

    .line 256
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 258
    .local v0, "height":I
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v4, v7, v7, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 260
    sget-boolean v4, Lnet/simonvt/menudrawer/OverlayDrawer;->USE_TRANSLATIONS:Z

    if-eqz v4, :cond_0

    .line 261
    sget-object v4, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    invoke-virtual {v4, v7, v7, v5, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    sub-int v5, v3, v5

    invoke-virtual {v4, v5, v7, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    invoke-virtual {v4, v7, v7, v3, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    sub-int v5, v0, v5

    invoke-virtual {v4, v7, v5, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 280
    :cond_0
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v2, v4

    .line 281
    .local v2, "offsetPixels":I
    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    .line 283
    .local v1, "menuSize":I
    sget-object v4, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 289
    :pswitch_4
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v5, v3, v2

    add-int v6, v3, v1

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v7, v6, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 285
    :pswitch_5
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    neg-int v5, v1

    add-int/2addr v5, v2

    invoke-virtual {v4, v5, v7, v2, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 293
    :pswitch_6
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    neg-int v5, v1

    add-int/2addr v5, v2

    invoke-virtual {v4, v7, v5, v3, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 297
    :pswitch_7
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v5, v0, v2

    add-int v6, v0, v1

    add-int/2addr v6, v2

    invoke-virtual {v4, v7, v5, v3, v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 305
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 306
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 308
    .local v3, "heightMode":I
    if-eqz v7, :cond_0

    if-nez v3, :cond_1

    .line 309
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Must measure with an exact size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 312
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 313
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 315
    .local v2, "height":I
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    const/high16 v9, -0x40800000

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/OverlayDrawer;->openMenu(Z)V

    .line 319
    :cond_2
    sget-object v8, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v9

    invoke-virtual {v9}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 328
    :pswitch_0
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    invoke-static {p1, v10, v8}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 329
    .local v5, "menuWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 331
    .local v4, "menuHeightMeasureSpec":I
    :goto_0
    iget-object v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v5, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 333
    invoke-static {p1, v10, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v1

    .line 334
    .local v1, "contentWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v0

    .line 335
    .local v0, "contentHeightMeasureSpec":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 337
    invoke-virtual {p0, v6, v2}, Lnet/simonvt/menudrawer/OverlayDrawer;->setMeasuredDimension(II)V

    .line 339
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->updateTouchAreaSize()V

    .line 340
    return-void

    .line 322
    .end local v0    # "contentHeightMeasureSpec":I
    .end local v1    # "contentWidthMeasureSpec":I
    .end local v4    # "menuHeightMeasureSpec":I
    .end local v5    # "menuWidthMeasureSpec":I
    :pswitch_1
    invoke-static {p1, v10, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 323
    .restart local v5    # "menuWidthMeasureSpec":I
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    invoke-static {p2, v10, v8}, Lnet/simonvt/menudrawer/OverlayDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 324
    .restart local v4    # "menuHeightMeasureSpec":I
    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMoveAllowDrag(IIFF)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v2, v3

    .line 421
    :cond_0
    :goto_0
    return v2

    .line 397
    :cond_1
    sget-object v4, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 404
    :pswitch_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v1

    .line 405
    .local v1, "width":I
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_2

    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    cmpg-float v4, p3, v6

    if-ltz v4, :cond_4

    :cond_2
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_3

    int-to-float v4, p1

    int-to-float v5, v1

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_4

    :cond_3
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 399
    .end local v1    # "width":I
    :pswitch_1
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_5

    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    cmpl-float v4, p3, v6

    if-gtz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_6

    int-to-float v4, p1

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_7

    :cond_6
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    .line 410
    :pswitch_2
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_8

    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    cmpl-float v4, p4, v6

    if-gtz v4, :cond_a

    :cond_8
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_9

    int-to-float v4, p1

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_a

    :cond_9
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_a
    move v2, v3

    goto/16 :goto_0

    .line 415
    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v0

    .line 416
    .local v0, "height":I
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v4, :cond_b

    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchSize:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    cmpg-float v4, p4, v6

    if-ltz v4, :cond_d

    :cond_b
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_c

    int-to-float v4, p1

    int-to-float v5, v0

    iget v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_d

    :cond_c
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v4, :cond_0

    :cond_d
    move v2, v3

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveEvent(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 425
    sget-object v0, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 442
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 431
    :pswitch_1
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 435
    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 439
    :pswitch_3
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    add-float/2addr v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->setOffsetPixels(F)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 3
    .param p1, "offsetPixels"    # I

    .prologue
    .line 119
    sget-boolean v0, Lnet/simonvt/menudrawer/OverlayDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->invalidate()V

    .line 158
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 152
    :pswitch_4
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 140
    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getBottom()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 144
    :pswitch_6
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 148
    :pswitch_7
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lnet/simonvt/menudrawer/DraggableDrawer;->onSizeChanged(IIII)V

    .line 181
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->onOffsetPixelsChanged(I)V

    .line 182
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 673
    iget-boolean v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuAble:Z

    if-nez v10, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v8

    .line 676
    :cond_1
    iget-boolean v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v10, :cond_2

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mTouchMode:I

    if-eqz v10, :cond_0

    .line 679
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 681
    .local v0, "action":I
    iget-object v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 682
    :cond_3
    iget-object v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 684
    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v8, v9

    .line 781
    goto :goto_0

    .line 686
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    iput v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    iput v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 688
    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lnet/simonvt/menudrawer/OverlayDrawer;->onDownAllowDrag(II)Z

    move-result v1

    .line 690
    .local v1, "allowDrag":Z
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 692
    if-eqz v1, :cond_4

    .line 693
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->stopAnimation()V

    .line 694
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 696
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-nez v8, :cond_5

    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mPeekSize:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_5

    .line 697
    iget-object v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa0

    invoke-virtual {p0, v8, v10, v11}, Lnet/simonvt/menudrawer/OverlayDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    :cond_5
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->startLayerTranslation()V

    goto :goto_1

    .line 706
    .end local v1    # "allowDrag":Z
    :pswitch_2
    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 707
    .local v5, "pointerIndex":I
    if-ne v5, v11, :cond_6

    .line 708
    iput-boolean v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 709
    iput v11, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 710
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endDrag()V

    .line 711
    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu(Z)V

    goto :goto_0

    .line 715
    :cond_6
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-nez v8, :cond_7

    .line 716
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 717
    .local v6, "x":F
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 718
    .local v2, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 719
    .local v7, "y":F
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 721
    .local v3, "dy":F
    invoke-virtual {p0, v2, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->checkTouchSlop(FF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 722
    float-to-int v8, v6

    float-to-int v10, v7

    invoke-virtual {p0, v8, v10, v2, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->onMoveAllowDrag(IIFF)Z

    move-result v1

    .line 724
    .restart local v1    # "allowDrag":Z
    if-eqz v1, :cond_8

    .line 725
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 726
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->stopAnimation()V

    .line 727
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lnet/simonvt/menudrawer/OverlayDrawer;->setDrawerState(I)V

    .line 728
    iput-boolean v9, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    .line 729
    iput v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 730
    iput v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 738
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_7
    :goto_2
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v8, :cond_4

    .line 739
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->startLayerTranslation()V

    .line 741
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 742
    .restart local v6    # "x":F
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    sub-float v2, v6, v8

    .line 743
    .restart local v2    # "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 744
    .restart local v7    # "y":F
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    sub-float v3, v7, v8

    .line 746
    .restart local v3    # "dy":F
    iput v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 747
    iput v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 748
    invoke-virtual {p0, v2, v3}, Lnet/simonvt/menudrawer/OverlayDrawer;->onMoveEvent(FF)V

    goto/16 :goto_1

    .line 732
    .restart local v1    # "allowDrag":Z
    :cond_8
    iput v6, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionX:F

    .line 733
    iput v7, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mInitialMotionY:F

    goto :goto_2

    .line 755
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_3
    iget-object v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 756
    iget v10, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 757
    .local v4, "index":I
    if-ne v4, v11, :cond_9

    move v4, v8

    .line 758
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 759
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 760
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lnet/simonvt/menudrawer/OverlayDrawer;->onUpEvent(II)V

    .line 761
    iput v11, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    .line 762
    iput-boolean v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    goto/16 :goto_1

    .line 767
    .end local v4    # "index":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const v10, 0xff00

    and-int/2addr v8, v10

    shr-int/lit8 v4, v8, 0x8

    .line 769
    .restart local v4    # "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 770
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 771
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    goto/16 :goto_1

    .line 775
    .end local v4    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 776
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 777
    iget v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 684
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onUpEvent(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 445
    iget v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    float-to-int v1, v4

    .line 447
    .local v1, "offsetPixels":I
    sget-object v4, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 450
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 451
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 452
    .local v0, "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 453
    if-lez v0, :cond_1

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    :cond_1
    invoke-virtual {p0, v3, v0, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 456
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 464
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 465
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 466
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 467
    if-lez v0, :cond_3

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    :cond_3
    invoke-virtual {p0, v3, v0, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    .line 470
    .end local v0    # "initialVelocity":I
    :cond_4
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 471
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 477
    :pswitch_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v2

    .line 479
    .local v2, "width":I
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_6

    .line 480
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 481
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->getXVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 482
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p1

    iput v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionX:F

    .line 483
    if-lez v0, :cond_5

    :goto_1
    invoke-virtual {p0, v3, v0, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto :goto_0

    :cond_5
    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    neg-int v3, v3

    goto :goto_1

    .line 486
    .end local v0    # "initialVelocity":I
    :cond_6
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 487
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu()V

    goto :goto_0

    .line 493
    .end local v2    # "width":I
    :pswitch_3
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsDragging:Z

    if-eqz v4, :cond_8

    .line 494
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 495
    iget-object v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/OverlayDrawer;->getYVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    float-to-int v0, v4

    .line 496
    .restart local v0    # "initialVelocity":I
    int-to-float v4, p2

    iput v4, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLastMotionY:F

    .line 497
    if-gez v0, :cond_7

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    neg-int v3, v3

    :cond_7
    invoke-virtual {p0, v3, v0, v6}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    goto/16 :goto_0

    .line 500
    .end local v0    # "initialVelocity":I
    :cond_8
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->closeMenu()V

    goto/16 :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openMenu(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "animateTo":I
    sget-object v1, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(IIZ)V

    .line 110
    return-void

    .line 100
    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    .line 101
    goto :goto_0

    .line 105
    :pswitch_1
    iget v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    neg-int v0, v1

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 527
    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;->requestDisallowInterceptTouchEvent(Z)V

    .line 528
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 529
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mIsPeeking:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->endPeek()V

    .line 531
    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/OverlayDrawer;->animateOffsetTo(II)V

    .line 533
    :cond_0
    return-void
.end method

.method protected startLayerTranslation()V
    .locals 3

    .prologue
    .line 239
    sget-boolean v0, Lnet/simonvt/menudrawer/OverlayDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mHardwareLayersEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLayerTypeHardware:Z

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLayerTypeHardware:Z

    .line 241
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected stopAnimation()V
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Lnet/simonvt/menudrawer/DraggableDrawer;->stopAnimation()V

    .line 522
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mRevealRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/OverlayDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method

.method protected stopLayerTranslation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLayerTypeHardware:Z

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mLayerTypeHardware:Z

    .line 249
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected updateDropShadowRect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mOffsetPixels:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuSize:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 204
    .local v1, "openRatio":F
    iget v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 206
    .local v0, "dropShadowSize":I
    sget-object v2, Lnet/simonvt/menudrawer/OverlayDrawer$2;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 209
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 210
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 211
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 216
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 217
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 218
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 223
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 224
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 225
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 230
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/OverlayDrawer;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 231
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-static {v3}, Lnet/simonvt/menudrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 232
    iget-object v2, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/menudrawer/OverlayDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
