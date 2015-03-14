.class final Lnet/simonvt/menudrawer/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getBottom(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 36
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLeft(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 12
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 16
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public static getRight(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 28
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public static getTop(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 20
    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method
