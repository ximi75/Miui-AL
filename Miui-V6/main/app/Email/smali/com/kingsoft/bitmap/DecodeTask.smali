.class public Lcom/kingsoft/bitmap/DecodeTask;
.super Landroid/os/AsyncTask;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/bitmap/DecodeTask$BitmapView;,
        Lcom/kingsoft/bitmap/DecodeTask$Request;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/kingsoft/bitmap/ReusableBitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final CROP_DURING_DECODE:Z = true

.field public static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/kingsoft/bitmap/BitmapCache;

.field private final mDestBufferH:I

.field private final mDestBufferW:I

.field private final mDestH:I

.field private final mDestW:I

.field private mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

.field private final mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

.field private final mOpts:Landroid/graphics/BitmapFactory$Options;

.field private final mView:Lcom/kingsoft/bitmap/DecodeTask$BitmapView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/bitmap/DecodeTask$Request;IIIILcom/kingsoft/bitmap/DecodeTask$BitmapView;Lcom/kingsoft/bitmap/BitmapCache;)V
    .locals 1
    .param p1, "key"    # Lcom/kingsoft/bitmap/DecodeTask$Request;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "bufferW"    # I
    .param p5, "bufferH"    # I
    .param p6, "view"    # Lcom/kingsoft/bitmap/DecodeTask$BitmapView;
    .param p7, "cache"    # Lcom/kingsoft/bitmap/BitmapCache;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 80
    iput-object p1, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    .line 81
    iput p2, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestW:I

    .line 82
    iput p3, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestH:I

    .line 83
    iput p4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestBufferW:I

    .line 84
    iput p5, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestBufferH:I

    .line 85
    iput-object p6, p0, Lcom/kingsoft/bitmap/DecodeTask;->mView:Lcom/kingsoft/bitmap/DecodeTask$BitmapView;

    .line 86
    iput-object p7, p0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    .line 87
    return-void
.end method

.method private static calculateSampleSize(IIII)I
    .locals 11
    .param p0, "srcW"    # I
    .param p1, "srcH"    # I
    .param p2, "destW"    # I
    .param p3, "destH"    # I

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    .line 414
    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 417
    .local v2, "sz":F
    const/4 v1, 0x1

    .line 420
    .local v1, "stricter":Z
    const-wide/high16 v3, 0x3fe0000000000000L

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v3, v3

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    .line 424
    .local v0, "result":I
    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 406
    .end local v0    # "result":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private decodeCropped(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "orientation"    # I
    .param p4, "outSrcRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    .line 343
    .local v12, "brd":Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 345
    const/4 v14, 0x0

    .line 375
    :goto_1
    return-object v14

    .line 341
    .end local v12    # "brd":Landroid/graphics/BitmapRegionDecoder;
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    .restart local v12    # "brd":Landroid/graphics/BitmapRegionDecoder;
    goto :goto_0

    .line 351
    :cond_1
    if-eqz p3, :cond_2

    const/16 v4, 0xb4

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    :cond_2
    const/4 v13, 0x1

    .line 352
    .local v13, "isNotRotatedOr180":Z
    :goto_2
    if-eqz v13, :cond_4

    .line 353
    iget-object v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 354
    .local v2, "srcW":I
    iget-object v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 362
    .local v3, "srcH":I
    :goto_3
    iget v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestW:I

    iget v5, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestH:I

    iget v6, p0, Lcom/kingsoft/bitmap/DecodeTask;->mDestH:I

    iget-object v7, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const v8, 0x3eaaaaab

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/kingsoft/bitmap/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFZFLandroid/graphics/Rect;)V

    .line 371
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/kingsoft/mail/utils/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 373
    iget-object v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 374
    .local v14, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_1

    .line 351
    .end local v2    # "srcW":I
    .end local v3    # "srcH":I
    .end local v13    # "isNotRotatedOr180":Z
    .end local v14    # "result":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 356
    .restart local v13    # "isNotRotatedOr180":Z
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 357
    .restart local v2    # "srcW":I
    iget-object v4, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .restart local v3    # "srcH":I
    goto :goto_3
.end method

.method private reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const-string/jumbo v0, "create stream"

    invoke-static {v0}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    invoke-interface {v0}, Lcom/kingsoft/bitmap/DecodeTask$Request;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 397
    :goto_0
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 398
    return-object p1

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 392
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    invoke-interface {v0}, Lcom/kingsoft/bitmap/DecodeTask$Request;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/bitmap/DecodeTask;->cancel(Z)Z

    .line 429
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 430
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/bitmap/ReusableBitmap;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 92
    const/4 v13, 0x0

    .line 332
    :cond_0
    :goto_0
    return-object v13

    .line 96
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/bitmap/DecodeTask;->publishProgress([Ljava/lang/Object;)V

    .line 98
    const/4 v13, 0x0

    .line 99
    .local v13, "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    const/4 v7, 0x0

    .line 100
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v8, 0x0

    .line 102
    .local v8, "in":Ljava/io/InputStream;
    :try_start_0
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    const/4 v9, 0x1

    .line 105
    .local v9, "isJellyBeanOrAbove":Z
    :goto_1
    if-eqz v9, :cond_7

    .line 106
    const-string/jumbo v18, "poll for reusable bitmap"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/kingsoft/bitmap/BitmapCache;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 108
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_7

    .line 111
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_2

    .line 311
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 315
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 317
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 321
    :cond_3
    :goto_3
    if-eqz v13, :cond_6

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    move-object/from16 v13, v18

    .line 329
    goto :goto_0

    .line 102
    .end local v9    # "isJellyBeanOrAbove":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 326
    .restart local v9    # "isJellyBeanOrAbove":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_4

    .line 115
    :cond_7
    :try_start_3
    const-string/jumbo v18, "create fd and stream"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/kingsoft/bitmap/DecodeTask$Request;->createFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 117
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 118
    if-nez v7, :cond_c

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 120
    if-nez v8, :cond_c

    .line 121
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_8

    .line 311
    :try_start_4
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 315
    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    .line 317
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 321
    :cond_9
    :goto_6
    if-eqz v13, :cond_b

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_7
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 326
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_7

    .line 125
    :cond_c
    :try_start_6
    const-string/jumbo v18, "get bytesize"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 127
    if-eqz v7, :cond_14

    .line 128
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 132
    .local v3, "byteSize":J
    :goto_8
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 134
    const-string/jumbo v18, "get orientation"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 135
    if-eqz v7, :cond_d

    .line 137
    const-string/jumbo v18, "create fd and stream"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/kingsoft/bitmap/DecodeTask$Request;->createFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 139
    .local v12, "orientationFd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .line 140
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 142
    .end local v12    # "orientationFd":Landroid/content/res/AssetFileDescriptor;
    :cond_d
    invoke-static {v8, v3, v4}, Lcom/kingsoft/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    .line 143
    .local v11, "orientation":I
    if-eqz v7, :cond_e

    .line 146
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    :cond_e
    :goto_9
    if-eqz v11, :cond_f

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-ne v11, v0, :cond_15

    :cond_f
    const/4 v10, 0x1

    .line 151
    .local v10, "isNotRotatedOr180":Z
    :goto_a
    :try_start_8
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 153
    if-eqz v11, :cond_10

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 158
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v18

    if-eqz v18, :cond_17

    .line 164
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_11

    .line 311
    :try_start_9
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 315
    :cond_11
    :goto_b
    if-eqz v8, :cond_12

    .line 317
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 321
    :cond_12
    :goto_c
    if-eqz v13, :cond_16

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_d
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 130
    .end local v3    # "byteSize":J
    .end local v10    # "isNotRotatedOr180":Z
    .end local v11    # "orientation":I
    :cond_14
    const-wide/16 v3, -0x1

    .restart local v3    # "byteSize":J
    goto/16 :goto_8

    .line 150
    .restart local v11    # "orientation":I
    :cond_15
    const/4 v10, 0x0

    goto :goto_a

    .line 326
    .restart local v10    # "isNotRotatedOr180":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_d

    .line 167
    :cond_17
    if-nez v7, :cond_1c

    .line 168
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v8

    .line 169
    if-nez v8, :cond_1c

    .line 170
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_18

    .line 311
    :try_start_c
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 315
    :cond_18
    :goto_e
    if-eqz v8, :cond_19

    .line 317
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 321
    :cond_19
    :goto_f
    if-eqz v13, :cond_1b

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_10
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 326
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_10

    .line 174
    :cond_1c
    :try_start_e
    const-string/jumbo v18, "decodeBounds"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    if-eqz v7, :cond_20

    .line 177
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    :goto_11
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v18

    if-eqz v18, :cond_24

    .line 184
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_1d

    .line 311
    :try_start_f
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 315
    :cond_1d
    :goto_12
    if-eqz v8, :cond_1e

    .line 317
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 321
    :cond_1e
    :goto_13
    if-eqz v13, :cond_23

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_14
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 179
    :cond_20
    const/16 v18, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_11

    .line 306
    .end local v3    # "byteSize":J
    .end local v9    # "isJellyBeanOrAbove":Z
    .end local v10    # "isNotRotatedOr180":Z
    .end local v11    # "orientation":I
    :catch_0
    move-exception v6

    .line 307
    .local v6, "e":Ljava/lang/Exception;
    :goto_15
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 309
    if-eqz v7, :cond_21

    .line 311
    :try_start_13
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1c

    .line 315
    :cond_21
    :goto_16
    if-eqz v8, :cond_22

    .line 317
    :try_start_14
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 321
    :cond_22
    :goto_17
    if-eqz v13, :cond_50

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 326
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "byteSize":J
    .restart local v9    # "isJellyBeanOrAbove":Z
    .restart local v10    # "isNotRotatedOr180":Z
    .restart local v11    # "orientation":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_14

    .line 189
    :cond_24
    if-eqz v10, :cond_28

    .line 190
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 191
    .local v17, "srcW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 196
    .local v15, "srcH":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mDestW:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mDestH:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/kingsoft/bitmap/DecodeTask;->calculateSampleSize(IIII)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 199
    if-eqz v9, :cond_2b

    if-nez v11, :cond_2b

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    .line 203
    const-string/jumbo v18, "create reusable bitmap"

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 204
    new-instance v18, Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mDestBufferW:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mDestBufferH:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/kingsoft/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 206
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v18

    if-eqz v18, :cond_2a

    .line 209
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_25

    .line 311
    :try_start_16
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 315
    :cond_25
    :goto_19
    if-eqz v8, :cond_26

    .line 317
    :try_start_17
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 321
    :cond_26
    :goto_1a
    if-eqz v13, :cond_29

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_1b
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 193
    .end local v15    # "srcH":I
    .end local v17    # "srcW":I
    :cond_28
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 194
    .restart local v17    # "srcW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .restart local v15    # "srcH":I
    goto/16 :goto_18

    .line 326
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_27

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_1b

    .line 219
    :cond_2a
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 222
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v18

    if-eqz v18, :cond_30

    .line 223
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_2c

    .line 311
    :try_start_1a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 315
    :cond_2c
    :goto_1c
    if-eqz v8, :cond_2d

    .line 317
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 321
    :cond_2d
    :goto_1d
    if-eqz v13, :cond_2f

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_1e
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 326
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2e

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_1e

    .line 226
    :cond_30
    if-nez v7, :cond_35

    .line 227
    :try_start_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-result-object v8

    .line 228
    if-nez v8, :cond_35

    .line 229
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_31

    .line 311
    :try_start_1d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 315
    :cond_31
    :goto_1f
    if-eqz v8, :cond_32

    .line 317
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 321
    :cond_32
    :goto_20
    if-eqz v13, :cond_34

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    :goto_21
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 326
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_33

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_21

    .line 233
    :cond_35
    const/4 v5, 0x0

    .line 234
    .local v5, "decodeResult":Landroid/graphics/Bitmap;
    :try_start_1f
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 237
    .local v16, "srcRect":Landroid/graphics/Rect;
    :try_start_20
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "decodeCropped"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v8, v11, v1}, Lcom/kingsoft/bitmap/DecodeTask;->decodeCropped(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    move-result-object v5

    .line 243
    :try_start_21
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 246
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    move-result v18

    if-eqz v18, :cond_3d

    .line 247
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_36

    .line 311
    :try_start_22
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_14

    .line 315
    :cond_36
    :goto_23
    if-eqz v8, :cond_37

    .line 317
    :try_start_23
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15

    .line 321
    :cond_37
    :goto_24
    if-eqz v13, :cond_3c

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_25
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 239
    :catch_1
    move-exception v6

    .line 241
    .local v6, "e":Ljava/io/IOException;
    :try_start_24
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 243
    :try_start_25
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_22

    .line 309
    .end local v3    # "byteSize":J
    .end local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "isJellyBeanOrAbove":Z
    .end local v10    # "isNotRotatedOr180":Z
    .end local v11    # "orientation":I
    .end local v15    # "srcH":I
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    .end local v17    # "srcW":I
    :catchall_0
    move-exception v18

    :goto_26
    if-eqz v7, :cond_39

    .line 311
    :try_start_26
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1e

    .line 315
    :cond_39
    :goto_27
    if-eqz v8, :cond_3a

    .line 317
    :try_start_27
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1f

    .line 321
    :cond_3a
    :goto_28
    if-eqz v13, :cond_51

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_3b
    :goto_29
    throw v18

    .line 243
    .restart local v3    # "byteSize":J
    .restart local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .restart local v9    # "isJellyBeanOrAbove":Z
    .restart local v10    # "isNotRotatedOr180":Z
    .restart local v11    # "orientation":I
    .restart local v15    # "srcH":I
    .restart local v16    # "srcRect":Landroid/graphics/Rect;
    .restart local v17    # "srcW":I
    :catchall_1
    move-exception v18

    :try_start_28
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    throw v18
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 326
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_38

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_25

    .line 251
    :cond_3d
    if-nez v5, :cond_44

    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move-result v18

    if-nez v18, :cond_44

    .line 253
    :try_start_2a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "decode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3e

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 257
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 260
    :cond_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/kingsoft/bitmap/DecodeTask;->decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_2
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    move-result-object v5

    .line 271
    :try_start_2b
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    .line 274
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/bitmap/DecodeTask;->isCancelled()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    move-result v18

    if-eqz v18, :cond_44

    .line 275
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_3f

    .line 311
    :try_start_2c
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_16

    .line 315
    :cond_3f
    :goto_2b
    if-eqz v8, :cond_40

    .line 317
    :try_start_2d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_17

    .line 321
    :cond_40
    :goto_2c
    if-eqz v13, :cond_43

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    :goto_2d
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 261
    :catch_2
    move-exception v6

    .line 262
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2e
    const-string/jumbo v18, ""

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "decode failed: reason=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' ss="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_42

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/kingsoft/bitmap/DecodeTask;->decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    move-result-object v5

    .line 271
    :cond_42
    :try_start_2f
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto/16 :goto_2a

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2
    move-exception v18

    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    throw v18
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 326
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 279
    :cond_44
    if-nez v5, :cond_49

    .line 280
    const/16 v18, 0x0

    .line 309
    if-eqz v7, :cond_45

    .line 311
    :try_start_30
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_18

    .line 315
    :cond_45
    :goto_2e
    if-eqz v8, :cond_46

    .line 317
    :try_start_31
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_19

    .line 321
    :cond_46
    :goto_2f
    if-eqz v13, :cond_48

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_30
    move-object/from16 v13, v18

    .line 329
    goto/16 :goto_0

    .line 326
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_47

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_30

    .line 283
    :cond_49
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4d

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    .line 286
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4c

    .line 287
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 288
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    .line 305
    :goto_31
    invoke-virtual {v13, v11}, Lcom/kingsoft/bitmap/ReusableBitmap;->setOrientation(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 309
    if-eqz v7, :cond_4a

    .line 311
    :try_start_33
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1a

    .line 315
    :cond_4a
    :goto_32
    if-eqz v8, :cond_4b

    .line 317
    :try_start_34
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1b

    .line 321
    :cond_4b
    :goto_33
    if-eqz v13, :cond_4f

    .line 322
    invoke-virtual {v13}, Lcom/kingsoft/bitmap/ReusableBitmap;->acquireReference()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lcom/kingsoft/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 291
    :cond_4c
    :try_start_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    goto :goto_31

    .line 296
    :cond_4d
    new-instance v14, Lcom/kingsoft/bitmap/ReusableBitmap;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v5, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_0
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 297
    .end local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .local v14, "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    if-eqz v10, :cond_4e

    .line 298
    :try_start_36
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 299
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    move-object v13, v14

    .end local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    goto :goto_31

    .line 301
    .end local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    :cond_4e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 302
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/kingsoft/bitmap/ReusableBitmap;->setLogicalHeight(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_20
    .catchall {:try_start_36 .. :try_end_36} :catchall_3

    move-object v13, v14

    .end local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    goto :goto_31

    .line 326
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 326
    .end local v3    # "byteSize":J
    .end local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .end local v9    # "isJellyBeanOrAbove":Z
    .end local v10    # "isNotRotatedOr180":Z
    .end local v11    # "orientation":I
    .end local v15    # "srcH":I
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    .end local v17    # "srcW":I
    .local v6, "e":Ljava/lang/Exception;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 326
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3b

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mCache:Lcom/kingsoft/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/kingsoft/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 312
    .restart local v9    # "isJellyBeanOrAbove":Z
    :catch_3
    move-exception v19

    goto/16 :goto_2

    .line 318
    :catch_4
    move-exception v19

    goto/16 :goto_3

    .line 312
    :catch_5
    move-exception v19

    goto/16 :goto_5

    .line 318
    :catch_6
    move-exception v19

    goto/16 :goto_6

    .line 147
    .restart local v3    # "byteSize":J
    .restart local v11    # "orientation":I
    :catch_7
    move-exception v18

    goto/16 :goto_9

    .line 312
    .restart local v10    # "isNotRotatedOr180":Z
    :catch_8
    move-exception v19

    goto/16 :goto_b

    .line 318
    :catch_9
    move-exception v19

    goto/16 :goto_c

    .line 312
    :catch_a
    move-exception v19

    goto/16 :goto_e

    .line 318
    :catch_b
    move-exception v19

    goto/16 :goto_f

    .line 312
    :catch_c
    move-exception v19

    goto/16 :goto_12

    .line 318
    :catch_d
    move-exception v19

    goto/16 :goto_13

    .line 312
    .restart local v15    # "srcH":I
    .restart local v17    # "srcW":I
    :catch_e
    move-exception v19

    goto/16 :goto_19

    .line 318
    :catch_f
    move-exception v19

    goto/16 :goto_1a

    .line 312
    :catch_10
    move-exception v19

    goto/16 :goto_1c

    .line 318
    :catch_11
    move-exception v19

    goto/16 :goto_1d

    .line 312
    :catch_12
    move-exception v19

    goto/16 :goto_1f

    .line 318
    :catch_13
    move-exception v19

    goto/16 :goto_20

    .line 312
    .restart local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .restart local v16    # "srcRect":Landroid/graphics/Rect;
    :catch_14
    move-exception v19

    goto/16 :goto_23

    .line 318
    :catch_15
    move-exception v19

    goto/16 :goto_24

    .line 312
    :catch_16
    move-exception v19

    goto/16 :goto_2b

    .line 318
    :catch_17
    move-exception v19

    goto/16 :goto_2c

    .line 312
    :catch_18
    move-exception v19

    goto/16 :goto_2e

    .line 318
    :catch_19
    move-exception v19

    goto/16 :goto_2f

    .line 312
    :catch_1a
    move-exception v18

    goto/16 :goto_32

    .line 318
    :catch_1b
    move-exception v18

    goto/16 :goto_33

    .line 312
    .end local v3    # "byteSize":J
    .end local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .end local v9    # "isJellyBeanOrAbove":Z
    .end local v10    # "isNotRotatedOr180":Z
    .end local v11    # "orientation":I
    .end local v15    # "srcH":I
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    .end local v17    # "srcW":I
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v18

    goto/16 :goto_16

    .line 318
    :catch_1d
    move-exception v18

    goto/16 :goto_17

    .line 312
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v19

    goto/16 :goto_27

    .line 318
    :catch_1f
    move-exception v19

    goto/16 :goto_28

    .line 309
    .end local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v3    # "byteSize":J
    .restart local v5    # "decodeResult":Landroid/graphics/Bitmap;
    .restart local v9    # "isJellyBeanOrAbove":Z
    .restart local v10    # "isNotRotatedOr180":Z
    .restart local v11    # "orientation":I
    .restart local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v15    # "srcH":I
    .restart local v16    # "srcRect":Landroid/graphics/Rect;
    .restart local v17    # "srcW":I
    :catchall_3
    move-exception v18

    move-object v13, v14

    .end local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    goto/16 :goto_26

    .line 306
    .end local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    :catch_20
    move-exception v6

    move-object v13, v14

    .end local v14    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    .restart local v13    # "result":Lcom/kingsoft/bitmap/ReusableBitmap;
    goto/16 :goto_15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/DecodeTask;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 2
    .param p1, "result"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mView:Lcom/kingsoft/bitmap/DecodeTask$BitmapView;

    iget-object v1, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    invoke-interface {v0, v1}, Lcom/kingsoft/bitmap/DecodeTask$BitmapView;->onDecodeCancel(Lcom/kingsoft/bitmap/DecodeTask$Request;)V

    .line 445
    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/bitmap/ReusableBitmap;->releaseReference()V

    .line 450
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mInBitmap:Lcom/kingsoft/bitmap/ReusableBitmap;

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p1, Lcom/kingsoft/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/kingsoft/bitmap/ReusableBitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/DecodeTask;->onCancelled(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public onPostExecute(Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 2
    .param p1, "result"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mView:Lcom/kingsoft/bitmap/DecodeTask$BitmapView;

    iget-object v1, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    invoke-interface {v0, v1, p1}, Lcom/kingsoft/bitmap/DecodeTask$BitmapView;->onDecodeComplete(Lcom/kingsoft/bitmap/DecodeTask$Request;Lcom/kingsoft/bitmap/ReusableBitmap;)V

    .line 440
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/kingsoft/bitmap/ReusableBitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/DecodeTask;->onPostExecute(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/DecodeTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/kingsoft/bitmap/DecodeTask;->mView:Lcom/kingsoft/bitmap/DecodeTask$BitmapView;

    iget-object v1, p0, Lcom/kingsoft/bitmap/DecodeTask;->mKey:Lcom/kingsoft/bitmap/DecodeTask$Request;

    invoke-interface {v0, v1}, Lcom/kingsoft/bitmap/DecodeTask$BitmapView;->onDecodeBegin(Lcom/kingsoft/bitmap/DecodeTask$Request;)V

    .line 435
    return-void
.end method
