.class Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;


# direct methods
.method private constructor <init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;Lcom/kingsoft/ex/photo/PhotoViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/ex/photo/PhotoViewActivity;
    .param p2, "x1"    # Lcom/kingsoft/ex/photo/PhotoViewActivity$1;

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    const-string/jumbo v1, "image_uri"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "uri":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1041
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1035
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_0

    .line 1038
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 5
    .param p2, "result"    # Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    iget-object v1, p2, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1047
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-virtual {v3}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1048
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1067
    :goto_0
    return-void

    .line 1052
    :pswitch_0
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    # invokes: Lcom/kingsoft/ex/photo/PhotoViewActivity;->initTemporaryImage(Landroid/graphics/Bitmap;)V
    invoke-static {v3, v1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->access$300(Lcom/kingsoft/ex/photo/PhotoViewActivity;Landroid/graphics/Bitmap;)V

    .line 1055
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-virtual {v3}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 1059
    :pswitch_1
    if-nez v1, :cond_0

    .line 1060
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1062
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/kingsoft/ex/photo/PhotoViewActivity;

    invoke-virtual {v3}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1063
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1028
    check-cast p2, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    return-void
.end method
