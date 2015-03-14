.class public Lcom/kingsoft/mail/ui/ThumbnailLoadTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mHeight:I

.field private final mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;II)V
    .locals 0
    .param p1, "holder"    # Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

    .line 88
    iput p2, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mWidth:I

    .line 89
    iput p3, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHeight:I

    .line 90
    return-void
.end method

.method private getOrientation(Landroid/net/Uri;)I
    .locals 10
    .param p1, "thumbnailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v4

    .line 167
    :cond_1
    const/4 v1, 0x0

    .line 169
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->getResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 170
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 171
    const-wide/16 v5, -0x1

    invoke-static {v1, v5, v6}, Lcom/kingsoft/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 176
    if-eqz v1, :cond_2

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v4, v5

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "error attemtping to close input stream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v7, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v3

    .line 173
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to get orientation of thumbnail %s: %s %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v1, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "error attemtping to close input stream"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    .line 178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 181
    :cond_3
    :goto_2
    throw v5

    .line 179
    :catch_3
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "error attemtping to close input stream"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v7, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method private loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "thumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 104
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Attempting to load bitmap for null uri"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->getOrientation(Landroid/net/Uri;)I

    move-result v11

    .line 110
    .local v11, "orientation":I
    const/4 v8, 0x0

    .line 112
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->getResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 113
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    if-nez v8, :cond_3

    .line 114
    :cond_2
    const/4 v0, 0x0

    .line 150
    if-eqz v8, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 117
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    const/16 v1, 0x78

    iput v1, v10, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 121
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 123
    :cond_4
    const/4 v0, 0x0

    .line 150
    if-eqz v8, :cond_0

    .line 152
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 153
    :catch_1
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 126
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mWidth:I

    div-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 131
    .local v13, "wDivider":I
    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHeight:I

    div-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 132
    .local v9, "hDivider":I
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "in background, src w/h=%d/%d dst w/h=%d/%d, divider=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget v6, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    if-eqz v11, :cond_6

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, v11

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 142
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 150
    .end local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 152
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 153
    :catch_2
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 150
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v8, :cond_0

    .line 152
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 153
    :catch_3
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 146
    .end local v0    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "hDivider":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "wDivider":I
    :catch_4
    move-exception v12

    .line 147
    .local v12, "t":Ljava/lang/Throwable;
    :try_start_7
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to decode thumbnail %s: %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    if-eqz v8, :cond_7

    .line 152
    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 159
    :cond_7
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 153
    :catch_5
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 150
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 152
    :try_start_9
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 155
    :cond_8
    :goto_2
    throw v1

    .line 153
    :catch_6
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setupThumbnailPreview(Lcom/kingsoft/mail/ui/ThumbnailLoadTask;Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;Lcom/kingsoft/mail/providers/Attachment;Lcom/kingsoft/mail/providers/Attachment;)V
    .locals 9
    .param p0, "task"    # Lcom/kingsoft/mail/ui/ThumbnailLoadTask;
    .param p1, "holder"    # Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;
    .param p2, "attachment"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p3, "prevAttachment"    # Lcom/kingsoft/mail/providers/Attachment;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 54
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->getThumbnailWidth()I

    move-result v5

    .line 55
    .local v5, "width":I
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->getThumbnailHeight()I

    move-result v1

    .line 56
    .local v1, "height":I
    if-eqz p2, :cond_0

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/ex/photo/util/ImageUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->setThumbnailToDefault()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    iget-object v3, p2, Lcom/kingsoft/mail/providers/Attachment;->thumbnailUri:Landroid/net/Uri;

    .line 63
    .local v3, "thumbnailUri":Landroid/net/Uri;
    iget-object v0, p2, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 64
    .local v0, "contentUri":Landroid/net/Uri;
    if-nez p3, :cond_6

    move-object v4, v2

    .line 65
    .local v4, "uri":Landroid/net/Uri;
    :goto_1
    if-nez p3, :cond_7

    .line 68
    .local v2, "prevUri":Landroid/net/Uri;
    :goto_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_8

    :cond_3
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->bitmapSetToDefault()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 72
    :cond_4
    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->cancel(Z)Z

    .line 76
    :cond_5
    new-instance p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;

    .end local p0    # "task":Lcom/kingsoft/mail/ui/ThumbnailLoadTask;
    invoke-direct {p0, p1, v5, v1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;-><init>(Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;II)V

    .line 78
    .restart local p0    # "task":Lcom/kingsoft/mail/ui/ThumbnailLoadTask;
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 64
    .end local v2    # "prevUri":Landroid/net/Uri;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 65
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Lcom/kingsoft/mail/providers/Attachment;->getIdentifierUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 79
    .restart local v2    # "prevUri":Landroid/net/Uri;
    :cond_8
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->setThumbnailToDefault()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 94
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->loadBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 191
    sget-object v0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "back in UI thread, decode failed or file does not exist"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->thumbnailLoadFailed()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "back in UI thread, decode success, w/h=%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->mHolder:Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/AttachmentBitmapHolder;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/ThumbnailLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
