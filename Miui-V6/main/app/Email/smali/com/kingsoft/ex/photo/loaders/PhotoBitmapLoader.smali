.class public Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PhotoBitmapLoader.java"

# interfaces
.implements Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
        ">;",
        "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPhotoUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 3
    .param p1, "result"    # Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .prologue
    .line 77
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->isReset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 77
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    .local v1, "oldBitmap":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 98
    :cond_3
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->deliverResult(Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method public loadInBackground()Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    .locals 6

    .prologue
    .line 51
    new-instance v3, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    invoke-direct {v3}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 52
    .local v3, "result":Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 56
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/kingsoft/ex/photo/util/ImageUtils;->createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    move-result-object v3

    .line 58
    iget-object v4, v3, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, v3, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0xa0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v3

    .line 61
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x1

    iput v4, v3, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->loadInBackground()Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 1
    .param p1, "result"    # Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p1, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 144
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onCanceled(Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 154
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onStopLoading()V

    .line 158
    iget-object v0, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 162
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    invoke-direct {v0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 112
    .local v0, "result":Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    .line 113
    iget-object v1, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->deliverResult(Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    .line 117
    .end local v0    # "result":Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->forceLoad()V

    .line 122
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->cancelLoad()Z

    .line 130
    return-void
.end method

.method public setPhotoUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoUri"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    .line 47
    return-void
.end method
