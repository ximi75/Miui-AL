.class public Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;
.super Ljava/lang/Object;
.source "ThumbnailUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailUtility"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 137
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 138
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 139
    .local v4, "width":I
    const/4 v3, 0x1

    .line 148
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 150
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 151
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 157
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 158
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 162
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-static {p1}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    move-result-object v0

    .line 167
    .local v0, "bitmapWorkerTask":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    const-string/jumbo v4, "ThumbnailUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v4, "ThumbnailUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    :cond_0
    invoke-virtual {v0, v3}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->cancel(Z)Z

    .line 184
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "ThumbnailUtility"

    const-string/jumbo v5, "start a new BitmapWorkerTask"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v3

    .line 185
    :goto_0
    return v2

    .line 179
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "ThumbnailUtility"

    const-string/jumbo v4, "loadBitmapWorker is in progress"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    invoke-static {v0, p2, p3}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 73
    const-string/jumbo v7, "ThumbnailUtility"

    const-string/jumbo v8, "filePath->%s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    iput v11, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "mime":Ljava/lang/String;
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt p2, v7, :cond_0

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge p1, v7, :cond_4

    .line 88
    :cond_0
    const-string/jumbo v7, "image/png"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "image/jpeg"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 90
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0, v7}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 92
    .local v0, "brd":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    .line 93
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 95
    .local v2, "height":I
    if-ge v6, v2, :cond_2

    move v7, v6

    :goto_0
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 97
    invoke-static {v4, p1, p2}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .local v5, "r":Landroid/graphics/Rect;
    if-le v6, v2, :cond_3

    .line 102
    const/4 v7, 0x0

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 103
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 104
    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 114
    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .end local v0    # "brd":Landroid/graphics/BitmapRegionDecoder;
    .end local v2    # "height":I
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "width":I
    :goto_2
    return-object v7

    .restart local v0    # "brd":Landroid/graphics/BitmapRegionDecoder;
    .restart local v2    # "height":I
    .restart local v6    # "width":I
    :cond_2
    move v7, v2

    .line 95
    goto :goto_0

    .line 108
    .restart local v5    # "r":Landroid/graphics/Rect;
    :cond_3
    const/4 v7, 0x0

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 109
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 110
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 111
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v2, v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    .end local v0    # "brd":Landroid/graphics/BitmapRegionDecoder;
    .end local v2    # "height":I
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "width":I
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    .line 120
    :cond_5
    invoke-static {v4, p1, p2}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3
.end method

.method static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/kingsoft/email/mail/attachment/AsyncHolder;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 192
    check-cast v0, Lcom/kingsoft/email/mail/attachment/AsyncHolder;

    .line 193
    .local v0, "asyncDrawable":Lcom/kingsoft/email/mail/attachment/AsyncHolder;
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/attachment/AsyncHolder;->getBitmapWorkerTask()Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    move-result-object v2

    .line 196
    .end local v0    # "asyncDrawable":Lcom/kingsoft/email/mail/attachment/AsyncHolder;
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 52
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 55
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 58
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 60
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 62
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 65
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 66
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 68
    return-object v2
.end method

.method public static loadBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIILandroid/content/Context;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "defaultIcon"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x7

    const/4 v6, 0x0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    :cond_0
    const-string/jumbo v3, "ThumbnailUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set to default format icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    const-string/jumbo v3, "file://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 213
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 216
    :cond_3
    invoke-static {p0, p2}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    new-instance v2, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    invoke-direct {v2, p2}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;)V

    .line 218
    .local v2, "task":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    new-instance v0, Lcom/kingsoft/email/mail/attachment/AsyncHolder;

    invoke-direct {v0, v2}, Lcom/kingsoft/email/mail/attachment/AsyncHolder;-><init>(Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;)V

    .line 219
    .local v0, "asyncDrawable":Lcom/kingsoft/email/mail/attachment/AsyncHolder;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p6, :cond_4

    .line 222
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p6, v3}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getAbsolutePathFromInternalUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 223
    const-string/jumbo v3, "file://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 224
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 228
    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 210
    .end local v0    # "asyncDrawable":Lcom/kingsoft/email/mail/attachment/AsyncHolder;
    .end local v2    # "task":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
