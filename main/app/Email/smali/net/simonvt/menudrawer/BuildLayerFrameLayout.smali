.class Lnet/simonvt/menudrawer/BuildLayerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BuildLayerFrameLayout.java"


# instance fields
.field private mAttached:Z

.field private mChanged:Z

.field private mFirst:Z

.field private mHardwareLayersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 25
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 32
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 21
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z

    .line 39
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/BuildLayerFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mChanged:Z

    return p1
.end method

.method static synthetic access$100(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .prologue
    .line 13
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mAttached:Z

    return v0
.end method

.method static synthetic access$200(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)Z
    .locals 1
    .param p0, "x0"    # Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .prologue
    .line 13
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z

    return v0
.end method

.method static synthetic access$202(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/simonvt/menudrawer/BuildLayerFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mFirst:Z

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mChanged:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$2;-><init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mChanged:Z

    .line 98
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mAttached:Z

    .line 52
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mAttached:Z

    .line 58
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 64
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$1;-><init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_0
    return-void
.end method

.method setHardwareLayersEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->mHardwareLayersEnabled:Z

    .line 46
    return-void
.end method
