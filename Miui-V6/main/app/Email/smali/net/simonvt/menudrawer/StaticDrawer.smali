.class public Lnet/simonvt/menudrawer/StaticDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "StaticDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/StaticDrawer$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public closeMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 130
    return-void
.end method

.method protected drawOverlay(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    return-void
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 25
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iget-object v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mIsStatic:Z

    .line 30
    return-void
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 44
    sub-int v1, p4, p2

    .line 45
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 47
    .local v0, "height":I
    sget-object v2, Lnet/simonvt/menudrawer/StaticDrawer$1;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v4, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 50
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 55
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 60
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v3, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 65
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v1, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 73
    .local v14, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 75
    .local v8, "heightMode":I
    if-eqz v14, :cond_0

    if-nez v8, :cond_1

    .line 76
    :cond_0
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "Must measure with an exact size"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 79
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 80
    .local v13, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 82
    .local v7, "height":I
    sget-object v15, Lnet/simonvt/menudrawer/StaticDrawer$1;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/StaticDrawer;->getPosition()Lnet/simonvt/menudrawer/Position;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 114
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lnet/simonvt/menudrawer/StaticDrawer;->setMeasuredDimension(II)V

    .line 115
    return-void

    .line 85
    :pswitch_0
    const/high16 v15, 0x40000000

    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 87
    .local v1, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 88
    .local v11, "menuWidth":I
    const/high16 v15, 0x40000000

    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 90
    .local v12, "menuWidthMeasureSpec":I
    sub-int v5, v13, v11

    .line 91
    .local v5, "contentWidth":I
    const/high16 v15, 0x40000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 93
    .local v6, "contentWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v6, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v12, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    goto :goto_0

    .line 100
    .end local v1    # "childHeightMeasureSpec":I
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthMeasureSpec":I
    .end local v11    # "menuWidth":I
    .end local v12    # "menuWidthMeasureSpec":I
    :pswitch_1
    const/high16 v15, 0x40000000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 102
    .local v2, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v9, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 103
    .local v9, "menuHeight":I
    const/high16 v15, 0x40000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 105
    .local v10, "menuHeightMeasureSpec":I
    sub-int v3, v7, v9

    .line 106
    .local v3, "contentHeight":I
    const/high16 v15, 0x40000000

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 108
    .local v4, "contentHeightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v2, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v2, v10}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 0
    .param p1, "offsetPixels"    # I

    .prologue
    .line 40
    return-void
.end method

.method public openMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 125
    return-void
.end method

.method public peekDrawer()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public peekDrawer(J)V
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 162
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "delay"    # J

    .prologue
    .line 167
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    return-void
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public setMenuSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 139
    iput p1, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 140
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->requestLayout()V

    .line 141
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->invalidate()V

    .line 142
    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 0
    .param p1, "offsetMenu"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 0
    .param p1, "drawableRes"    # I

    .prologue
    .line 197
    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 187
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 182
    return-void
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 120
    return-void
.end method
