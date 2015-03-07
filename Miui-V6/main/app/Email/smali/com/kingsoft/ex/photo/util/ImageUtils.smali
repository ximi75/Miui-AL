.class public Lcom/kingsoft/ex/photo/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/util/ImageUtils$HttpInputStreamFactory;,
        Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;,
        Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;,
        Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;,
        Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;
    }
.end annotation


# static fields
.field private static final BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

.field private static final BASE64_URI_PREFIX:Ljava/lang/String; = "base64,"

.field private static final MIN_NORMAL_CLASS:J = 0x20L

.field private static final MIN_SMALL_CLASS:J = 0x18L

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field public static final sUseImageSize:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-string/jumbo v0, "^(?:.*;)?base64,.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    sget v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->sMemoryClass:I

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 73
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0

    .line 74
    :cond_1
    sget v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->sMemoryClass:I

    int-to-long v0, v0

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 76
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/kingsoft/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/kingsoft/ex/photo/util/ImageUtils;->BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static createInputStreamFactory(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    new-instance v1, Lcom/kingsoft/ex/photo/util/ImageUtils$HttpInputStreamFactory;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/ex/photo/util/ImageUtils$HttpInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 214
    :goto_0
    return-object v1

    .line 211
    :cond_1
    const-string/jumbo v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    new-instance v1, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/ex/photo/util/ImageUtils$DataInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 214
    :cond_2
    new-instance v1, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/ex/photo/util/ImageUtils$BaseInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # I

    .prologue
    const/4 v7, 0x1

    .line 101
    new-instance v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    invoke-direct {v4}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 102
    .local v4, "result":Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    invoke-static {p0, p1}, Lcom/kingsoft/ex/photo/util/ImageUtils;->createInputStreamFactory(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;

    move-result-object v2

    .line 104
    .local v2, "factory":Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;
    :try_start_0
    invoke-static {v2}, Lcom/kingsoft/ex/photo/util/ImageUtils;->getImageBounds(Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;)Landroid/graphics/Point;

    move-result-object v0

    .line 105
    .local v0, "bounds":Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 106
    const/4 v5, 0x1

    iput v5, v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    .line 125
    .end local v0    # "bounds":Landroid/graphics/Point;
    :goto_0
    return-object v4

    .line 110
    .restart local v0    # "bounds":Landroid/graphics/Point;
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v5, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v5, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/kingsoft/ex/photo/util/ImageUtils;->decodeStream(Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 113
    const/4 v5, 0x0

    iput v5, v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 116
    .end local v0    # "bounds":Landroid/graphics/Point;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    .line 119
    .local v1, "exception":Ljava/io/IOException;
    iput v7, v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0

    .line 122
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 123
    .local v1, "exception":Ljava/lang/SecurityException;
    iput v7, v4, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0

    .line 120
    .end local v1    # "exception":Ljava/lang/SecurityException;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public static decodeStream(Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "factory"    # Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 147
    const/4 v8, 0x0

    .line 150
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0}, Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 151
    const-wide/16 v1, -0x1

    invoke-static {v8, v1, v2}, Lcom/kingsoft/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I

    move-result v10

    .line 152
    .local v10, "orientation":I
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-interface {p0}, Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 156
    invoke-static {v8, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    if-nez v0, :cond_2

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_2

    .line 159
    const-string/jumbo v1, "ImageUtils"

    const-string/jumbo v2, "ImageUtils#decodeStream(InputStream, Rect, Options): Image bytes cannot be decoded into a Bitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Image bytes cannot be decoded into a Bitmap."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "orientation":I
    :catch_0
    move-exception v9

    .line 174
    .local v9, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v1, "ImageUtils"

    const-string/jumbo v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v8, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v0, v11

    .line 185
    .end local v9    # "oome":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_1
    return-object v0

    .line 166
    .restart local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "orientation":I
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 167
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 168
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, v10

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 169
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 180
    .end local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 183
    :catch_1
    move-exception v1

    goto :goto_1

    .line 180
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v8, :cond_1

    .line 182
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    goto :goto_1

    .line 176
    .end local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "orientation":I
    :catch_3
    move-exception v7

    .line 177
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "ImageUtils"

    const-string/jumbo v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an IOE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    if-eqz v8, :cond_4

    .line 182
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_2
    move-object v0, v11

    .line 185
    goto :goto_1

    .line 180
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 182
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 185
    :cond_5
    :goto_3
    throw v1

    .line 183
    .restart local v9    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v1

    goto :goto_0

    .end local v9    # "oome":Ljava/lang/OutOfMemoryError;
    .restart local v7    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v2

    goto :goto_3
.end method

.method private static getImageBounds(Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;)Landroid/graphics/Point;
    .locals 4
    .param p0, "factory"    # Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/kingsoft/ex/photo/util/ImageUtils;->decodeStream(Lcom/kingsoft/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 203
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    const-string/jumbo v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
