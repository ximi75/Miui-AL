.class public abstract Lcom/kingsoft/bitmap/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCroppedSrcRect(IIIIIIFZFLandroid/graphics/Rect;)V
    .locals 14
    .param p0, "srcW"    # I
    .param p1, "srcH"    # I
    .param p2, "dstW"    # I
    .param p3, "dstH"    # I
    .param p4, "dstSliceH"    # I
    .param p5, "sampleSize"    # I
    .param p6, "vertSliceFrac"    # F
    .param p7, "absoluteFrac"    # Z
    .param p8, "verticalMultiplier"    # F
    .param p9, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ge v0, v12, :cond_0

    .line 58
    const/16 p5, 0x1

    .line 61
    :cond_0
    int-to-float v12, p0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v11, v12, v13

    .line 62
    .local v11, "wScale":F
    int-to-float v12, p1

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 63
    .local v2, "hScale":F
    cmpg-float v12, v2, v11

    if-gez v12, :cond_1

    .line 64
    div-float v5, v2, p8

    .line 69
    .local v5, "regularScale":F
    :goto_0
    move/from16 v0, p5

    int-to-float v12, v0

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 71
    .local v6, "scale":F
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 72
    .local v9, "srcCroppedW":I
    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 73
    .local v7, "srcCroppedH":I
    move/from16 v0, p4

    int-to-float v12, v0

    mul-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 74
    .local v8, "srcCroppedSliceH":I
    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v12

    div-int/lit8 v10, v12, 0x2

    .line 76
    .local v10, "srcHalfSliceH":I
    sub-int v12, p0, v9

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p9

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 77
    move-object/from16 v0, p9

    iget v12, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    move-object/from16 v0, p9

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 80
    if-eqz p7, :cond_2

    .line 81
    move v4, v10

    .line 82
    .local v4, "minCenterV":I
    sub-int v3, p1, v10

    .line 83
    .local v3, "maxCenterV":I
    int-to-float v12, p1

    mul-float v12, v12, p6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    .end local v3    # "maxCenterV":I
    .end local v4    # "minCenterV":I
    .local v1, "centerV":I
    :goto_1
    div-int/lit8 v12, v7, 0x2

    sub-int v12, v1, v12

    move-object/from16 v0, p9

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 90
    move-object/from16 v0, p9

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v7

    move-object/from16 v0, p9

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    return-void

    .line 66
    .end local v1    # "centerV":I
    .end local v5    # "regularScale":F
    .end local v6    # "scale":F
    .end local v7    # "srcCroppedH":I
    .end local v8    # "srcCroppedSliceH":I
    .end local v9    # "srcCroppedW":I
    .end local v10    # "srcHalfSliceH":I
    :cond_1
    move v5, v11

    .restart local v5    # "regularScale":F
    goto :goto_0

    .line 85
    .restart local v6    # "scale":F
    .restart local v7    # "srcCroppedH":I
    .restart local v8    # "srcCroppedSliceH":I
    .restart local v9    # "srcCroppedW":I
    .restart local v10    # "srcHalfSliceH":I
    :cond_2
    sub-int v12, p1, v8

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, p6

    int-to-float v13, v10

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1    # "centerV":I
    goto :goto_1
.end method
