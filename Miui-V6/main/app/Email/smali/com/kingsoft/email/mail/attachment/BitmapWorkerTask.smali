.class public Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "BitmapWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDefaultResId:I

.field private mFilePath:Ljava/lang/String;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    const-string/jumbo v0, "ThumbnailBitmapWorkerTask"

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 53
    array-length v2, p1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2

    .line 57
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    .line 58
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    .local v1, "width":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    .local v0, "height":I
    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mDefaultResId:I

    .line 62
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string/jumbo v2, "ThumbnailBitmapWorkerTask"

    const-string/jumbo v3, "isCanceled"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    const/4 p1, 0x0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;

    move-result-object v0

    .line 33
    .local v0, "bitmapWorkerTask":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    if-ne p0, v0, :cond_3

    if-eqz v1, :cond_3

    .line 34
    if-eqz p1, :cond_2

    .line 35
    const-string/jumbo v2, "ThumbnailBitmapWorkerTask"

    const-string/jumbo v3, "set to thumbnail image"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    .end local v0    # "bitmapWorkerTask":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 39
    .restart local v0    # "bitmapWorkerTask":Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    const-string/jumbo v2, "ThumbnailBitmapWorkerTask"

    const-string/jumbo v3, "set to default format icon"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    iget v2, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mDefaultResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v2, "ThumbnailBitmapWorkerTask"

    const-string/jumbo v3, "bitmapWorker is this"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/BitmapWorkerTask;->mFilePath:Ljava/lang/String;

    .line 72
    return-void
.end method
