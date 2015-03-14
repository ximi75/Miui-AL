.class public Lcom/kingsoft/ex/chips/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;
    }
.end annotation


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field public listHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader;->listHashMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/chips/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/AsyncImageLoader;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v4, 0x0

    .line 53
    .local v4, "i":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, "m":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v5    # "m":Ljava/net/URL;
    :goto_0
    const-string/jumbo v6, " src "

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 55
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v3    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public loadDrawable(Ljava/lang/String;Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageCallback"    # Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;

    .prologue
    .line 25
    iget-object v3, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/kingsoft/ex/chips/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 27
    .local v2, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 28
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 46
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v1, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingsoft/ex/chips/AsyncImageLoader$1;-><init>(Lcom/kingsoft/ex/chips/AsyncImageLoader;Lcom/kingsoft/ex/chips/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V

    .line 37
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/kingsoft/ex/chips/AsyncImageLoader$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/kingsoft/ex/chips/AsyncImageLoader$2;-><init>(Lcom/kingsoft/ex/chips/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/AsyncImageLoader$2;->start()V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method
