.class public Lcom/kingsoft/mail/photomanager/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final CIRCLE_RATIO:I = 0x2

.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v0, 0x3f000000

    .line 101
    invoke-static {p0, p1, p2, v0, v0}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "horizontalCenterPercent"    # F
    .param p4, "verticalCenterPercent"    # F

    .prologue
    .line 137
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 144
    .local v10, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 147
    .local v9, "srcHeight":I
    if-ne p1, v10, :cond_3

    if-ne p2, v9, :cond_3

    .line 185
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object p0

    .line 151
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 152
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v6, v10

    div-float/2addr v0, v6

    int-to-float v6, p2

    int-to-float v11, v9

    div-float/2addr v6, v11

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 155
    .local v8, "scale":F
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 160
    int-to-float v0, p1

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 161
    .local v3, "srcCroppedW":I
    int-to-float v0, p2

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 162
    .local v4, "srcCroppedH":I
    int-to-float v0, v10

    mul-float/2addr v0, p3

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    float-to-int v1, v0

    .line 163
    .local v1, "srcX":I
    int-to-float v0, v9

    mul-float v0, v0, p4

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    float-to-int v2, v0

    .line 166
    .local v2, "srcY":I
    sub-int v0, v10, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 167
    sub-int v0, v9, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 169
    if-lez v3, :cond_2

    if-lez v4, :cond_2

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    .line 173
    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "cropped":Landroid/graphics/Bitmap;
    move-object p0, v7

    .line 185
    goto :goto_0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 54
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 57
    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v6, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v6, :cond_1

    .line 65
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 60
    .restart local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 63
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "PhotoManager"

    const-string/jumbo v4, "unable to decode image"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static decodeByteArrayWithCenterCrop([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # [B
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "decoded":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .end local v0    # "decoded":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "PhotoManager"

    const-string/jumbo v3, "unable to crop image"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # F

    .prologue
    const/4 v8, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 201
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 204
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 210
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 211
    return-object v1
.end method
