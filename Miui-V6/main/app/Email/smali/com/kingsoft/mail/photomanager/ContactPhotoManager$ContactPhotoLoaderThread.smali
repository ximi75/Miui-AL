.class public Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;
.super Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactPhotoLoaderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;-><init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Landroid/content/ContentResolver;)V

    .line 182
    return-void
.end method


# virtual methods
.method public bridge synthetic ensureHandler()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->ensureHandler()V

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected loadBitmaps(Ljava/util/Collection;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v4, "photos":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 236
    .local v5, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    iget-object v6, v5, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->isStale()Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    invoke-virtual {v5}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getPhotoIdentifier()Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .line 240
    .local v3, "id":Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    new-instance v1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>()V

    .line 241
    .local v1, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    invoke-virtual {v5}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getView()Lcom/kingsoft/mail/ui/ImageCanvas;

    move-result-object v6

    invoke-virtual {v5}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/kingsoft/mail/ui/ImageCanvas;->getDesiredDimensions(Ljava/lang/Object;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V

    .line 245
    iget v6, v1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->width:I

    if-lez v6, :cond_1

    iget v6, v1, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;->height:I

    if-gtz v6, :cond_2

    .line 246
    :cond_1
    const-string/jumbo v6, "PhotoManager"

    const-string/jumbo v7, "The view has been reused, and getDesiredDimensions() returns width==0 or height==0"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 249
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    # getter for: Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;
    invoke-static {v6}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->access$100(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;)Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    move-result-object v6

    iget-object v7, v3, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->name:Ljava/lang/String;

    iget-object v8, v3, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->emailAddress:Ljava/lang/String;

    invoke-virtual {v6, v1, v7, v8}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 251
    iget-object v6, v5, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_3
    iget v6, v5, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    goto :goto_0

    .line 256
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    .end local v3    # "id":Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    .end local v5    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    :cond_4
    return-object v4
.end method

.method protected loadPhotosFromContact(Ljava/util/Collection;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/photomanager/PhotoManager$Request;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 188
    .local v9, "photos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v8, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v7, "photoIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 195
    .local v10, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    invoke-virtual {v10}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getAddress()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "emailAddress":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->this$0:Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    # getter for: Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;
    invoke-static {v11}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->access$000(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;)Landroid/util/LruCache;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 197
    .local v6, "match":Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 198
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v2    # "emailAddress":Ljava/lang/String;
    .end local v6    # "match":Ljava/lang/Long;
    .end local v10    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;->getResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v1, v12}, Lcom/kingsoft/mail/SenderInfoLoader;->loadContactPhotos(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 214
    .local v3, "emailAddressToContactInfoMap":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/kingsoft/mail/ContactInfo;>;"
    if-eqz v3, :cond_3

    .line 215
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ContactInfo;

    .line 217
    .local v5, "info":Lcom/kingsoft/mail/ContactInfo;
    new-instance v12, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    if-eqz v5, :cond_2

    iget-object v11, v5, Lcom/kingsoft/mail/ContactInfo;->photoBytes:[B

    :goto_2
    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v11, v13, v14}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;-><init>([BII)V

    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 223
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "info":Lcom/kingsoft/mail/ContactInfo;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .restart local v0    # "address":Ljava/lang/String;
    new-instance v11, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;-><init>([BII)V

    invoke-interface {v9, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 228
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    return-object v9
.end method

.method public bridge synthetic requestLoading()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->requestLoading()V

    return-void
.end method
