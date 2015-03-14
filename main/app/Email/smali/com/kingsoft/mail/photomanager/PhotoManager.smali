.class public abstract Lcom/kingsoft/mail/photomanager/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/photomanager/PhotoManager$Request;,
        Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;,
        Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;,
        Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;,
        Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;,
        Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x800000

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "PhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_PHOTO_LOADING:I = 0x3

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1

.field private static final PHOTO_COLS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "PhotoManager"

.field private static final sBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/photomanager/PhotoManager$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 201
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager;->sStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager;->sFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    invoke-static {}, Lcom/kingsoft/mail/photomanager/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f800000

    .line 210
    .local v1, "cacheSizeAdjustment":F
    :goto_0
    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 211
    .local v2, "holderCacheSize":I
    new-instance v3, Lcom/kingsoft/mail/photomanager/PhotoManager$1;

    invoke-direct {v3, v2}, Lcom/kingsoft/mail/photomanager/PhotoManager$1;-><init>(I)V

    sput-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    .line 222
    const/high16 v3, 0x4b000000

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 223
    .local v0, "bitmapCacheSize":I
    new-instance v3, Lcom/kingsoft/mail/photomanager/PhotoManager$2;

    invoke-direct {v3, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$2;-><init>(I)V

    sput-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    .line 233
    const-string/jumbo v3, "PhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1064
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "data15"

    aput-object v4, v3, v7

    sput-object v3, Lcom/kingsoft/mail/photomanager/PhotoManager;->PHOTO_COLS:[Ljava/lang/String;

    return-void

    .line 207
    .end local v0    # "bitmapCacheSize":I
    .end local v1    # "cacheSizeAdjustment":F
    .end local v2    # "holderCacheSize":I
    :cond_0
    const/high16 v1, 0x3f000000

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 272
    iput-object p1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mContext:Landroid/content/Context;

    .line 273
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/photomanager/PhotoManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/photomanager/PhotoManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/photomanager/PhotoManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/photomanager/PhotoManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->cacheBitmapHolder(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V

    return-void
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # I

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static cacheBitmap(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmapKey"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 540
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method private static cacheBitmapHolder(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V
    .locals 1
    .param p0, "cacheKey"    # Ljava/lang/String;
    .param p1, "holder"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .prologue
    .line 536
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-void
.end method

.method private static convertBytesToHeadIcon([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 1055
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->decodeByteArrayWithCenterCrop([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Lcom/kingsoft/mail/photomanager/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1061
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .local v1, "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, v0

    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static dumpStats()V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method private ensureLoaderThread()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getLoaderThread(Landroid/content/ContentResolver;)Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

    .line 336
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->start()V

    .line 338
    :cond_0
    return-void
.end method

.method private static findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v9, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    .local v10, "whereBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 1129
    .local v8, "questionMarks":[Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1130
    const-string/jumbo v1, "?"

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1131
    const-string/jumbo v1, "LOWER(data1) IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-static {v2, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1136
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact_id"

    aput-object v3, v2, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1140
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v7, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 1151
    :goto_0
    return-object v7

    .line 1145
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1146
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1149
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmapKey"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .prologue
    .line 418
    const-string/jumbo v1, "Get cached photo"

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 419
    sget-object v1, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 420
    .local v0, "cached":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 421
    return-object v0
.end method

.method private static getContactIconFromLetterProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "senderAddress"    # Ljava/lang/String;
    .param p3, "iconWidth"    # I
    .param p4, "iconHeight"    # I

    .prologue
    .line 1041
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const/4 v1, 0x0

    .line 1048
    :goto_0
    return-object v1

    .line 1045
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, p3, p4, v1}, Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;-><init>(IIF)V

    .line 1048
    .local v0, "dimensions":Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;
    new-instance v1, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p1, p2}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;->getLetterTile(Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIconFromContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "senderAddress"    # Ljava/lang/String;
    .param p3, "iconWidth"    # I
    .param p4, "iconHeight"    # I

    .prologue
    .line 1068
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    const/4 v12, 0x0

    .line 1121
    :cond_0
    :goto_0
    return-object v12

    .line 1071
    :cond_1
    const/4 v12, 0x0

    .line 1072
    .local v12, "icon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .line 1073
    .local v11, "holder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    if-eqz v11, :cond_3

    .line 1074
    iget-object v2, v11, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, v11, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->convertBytesToHeadIcon([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1076
    if-nez v12, :cond_0

    .line 1080
    :cond_2
    invoke-static/range {p0 .. p4}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getContactIconFromLetterProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    .line 1083
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/kingsoft/mail/photomanager/PhotoManager;->findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1085
    .local v8, "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1087
    .local v10, "data":[B
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1089
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v14, "query":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-static {v14, v8}, Lcom/kingsoft/mail/SenderInfoLoader;->appendQuestionMarks(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V

    .line 1094
    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/mail/photomanager/PhotoManager;->PHOTO_COLS:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/kingsoft/mail/SenderInfoLoader;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1099
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 1101
    :cond_4
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1102
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1103
    if-eqz v10, :cond_4

    .line 1104
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->convertBytesToHeadIcon([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1105
    if-eqz v12, :cond_4

    .line 1112
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1116
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v14    # "query":Ljava/lang/StringBuilder;
    :cond_6
    if-nez v12, :cond_7

    .line 1117
    invoke-static/range {p0 .. p4}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getContactIconFromLetterProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1119
    :cond_7
    new-instance v13, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    invoke-direct {v13, v10}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;-><init>([B)V

    .line 1120
    .local v13, "newHolder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/kingsoft/mail/photomanager/PhotoManager;->cacheBitmapHolder(Ljava/lang/String;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V

    goto/16 :goto_0

    .line 1112
    .end local v13    # "newHolder":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "query":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private loadCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)Z
    .locals 8
    .param p1, "request"    # Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    .param p2, "afterLoaderThreadFinished"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    const-string/jumbo v6, "Load cached photo"

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 352
    iget-object v6, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    invoke-static {v6}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, "cached":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->isStale()Z

    move-result v5

    if-nez v5, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getView()Lcom/kingsoft/mail/ui/ImageCanvas;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/kingsoft/mail/ui/ImageCanvas;->drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, p1, v4}, Lcom/kingsoft/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)V

    .line 366
    :cond_0
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 411
    :goto_0
    return v4

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getPhotoIdentifier()Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;->getKeyToShowInsteadOfDefault()Ljava/lang/Object;

    move-result-object v3

    .line 373
    .local v3, "replacementKey":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 374
    new-instance v2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    iget-object v6, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    iget v6, v6, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->w:I

    iget-object v7, p1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->bitmapKey:Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    iget v7, v7, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;->h:I

    invoke-direct {v2, v3, v6, v7}, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;-><init>(Ljava/lang/Object;II)V

    .line 376
    .local v2, "replacementBitmapKey":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    invoke-static {v2}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    .local v1, "cachedReplacement":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->isStale()Z

    move-result v6

    if-nez v6, :cond_2

    .line 387
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getView()Lcom/kingsoft/mail/ui/ImageCanvas;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/kingsoft/mail/ui/ImageCanvas;->drawImage(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 388
    invoke-virtual {p0, p1, v4}, Lcom/kingsoft/mail/photomanager/PhotoManager;->onImageDrawn(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)V

    .line 390
    :cond_2
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v4, v5

    .line 391
    goto :goto_0

    .line 396
    .end local v1    # "cachedReplacement":Landroid/graphics/Bitmap;
    .end local v2    # "replacementBitmapKey":Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->applyDefaultImage()V

    .line 410
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    move v4, v5

    .line 411
    goto :goto_0
.end method

.method private loadPhoto(ILcom/kingsoft/mail/photomanager/PhotoManager$Request;)V
    .locals 3
    .param p1, "hashCode"    # I
    .param p2, "request"    # Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .prologue
    .line 304
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->loadCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)Z

    move-result v0

    .line 305
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-boolean v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPaused:Z

    if-nez v1, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->requestLoading()V

    goto :goto_0
.end method

.method private processLoadedImages()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 493
    const-string/jumbo v6, "process loaded images"

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 495
    .local v5, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 496
    .local v0, "hash":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 497
    .local v4, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    invoke-direct {p0, v4, v8}, Lcom/kingsoft/mail/photomanager/PhotoManager;->loadCachedPhoto(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)Z

    move-result v3

    .line 501
    .local v3, "loaded":Z
    if-nez v3, :cond_1

    invoke-virtual {v4}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->isStale()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v4, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->attempts:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    .line 502
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    .end local v0    # "hash":Ljava/lang/Integer;
    .end local v3    # "loaded":Z
    .end local v4    # "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 506
    .local v2, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 509
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_3
    iget-boolean v6, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPaused:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 510
    const-string/jumbo v6, "PhotoManager"

    const-string/jumbo v7, "Finished loading batch. %d still have to be loaded."

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 512
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->requestLoading()V

    .line 514
    :cond_4
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 515
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 451
    iget-boolean v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 452
    iput-boolean v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    .line 453
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 612
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 566
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 567
    sget-object v0, Lcom/kingsoft/mail/photomanager/PhotoManager;->sBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 568
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDefaultImageProvider()Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
.end method

.method protected abstract getHash(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;)I
.end method

.method protected abstract getLoaderThread(Landroid/content/ContentResolver;)Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 462
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 485
    :cond_0
    :goto_0
    return v2

    .line 464
    :pswitch_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoadingRequested:Z

    .line 465
    iget-boolean v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPaused:Z

    if-nez v3, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->ensureLoaderThread()V

    .line 467
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mLoaderThread:Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;

    invoke-virtual {v3}, Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;->requestLoading()V

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->processLoadedImages()V

    goto :goto_0

    .line 479
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 480
    .local v0, "hashcode":I
    iget-object v3, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 481
    .local v1, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->onImageLoadStarted(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;)V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected isSizeCompatible(IIII)Z
    .locals 1
    .param p1, "prevWidth"    # I
    .param p2, "prevHeight"    # I
    .param p3, "newWidth"    # I
    .param p4, "newHeight"    # I

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public loadThumbnail(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;)V
    .locals 1
    .param p1, "id"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p2, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->loadThumbnail(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V

    .line 277
    return-void
.end method

.method public loadThumbnail(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;)V
    .locals 8
    .param p1, "id"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p2, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p3, "dimensions"    # Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;

    .prologue
    .line 286
    const-string/jumbo v1, "Load thumbnail"

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getDefaultImageProvider()Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;

    move-result-object v3

    .line 288
    .local v3, "defaultProvider":Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
    new-instance v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;-><init>(Lcom/kingsoft/mail/photomanager/PhotoManager;Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;Lcom/kingsoft/mail/ui/ImageCanvas;Lcom/kingsoft/mail/ui/ImageCanvas$Dimensions;Lcom/kingsoft/mail/photomanager/PhotoManager$1;)V

    .line 289
    .local v0, "request":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;->hashCode()I

    move-result v7

    .line 291
    .local v7, "hashCode":I
    invoke-direct {p0, v7, v0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->loadPhoto(ILcom/kingsoft/mail/photomanager/PhotoManager$Request;)V

    .line 293
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 294
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 546
    return-void
.end method

.method protected onImageDrawn(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;Z)V
    .locals 0
    .param p1, "request"    # Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    .param p2, "success"    # Z

    .prologue
    .line 78
    return-void
.end method

.method protected onImageLoadStarted(Lcom/kingsoft/mail/photomanager/PhotoManager$Request;)V
    .locals 0
    .param p1, "request"    # Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .prologue
    .line 86
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 557
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->clear()V

    .line 561
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 428
    const-string/jumbo v0, "PhotoManager"

    const-string/jumbo v1, "%s paused."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    iput-boolean v5, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPaused:Z

    .line 430
    return-void
.end method

.method public removePhoto(I)V
    .locals 3
    .param p1, "hashcode"    # I

    .prologue
    .line 327
    iget-object v1, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/photomanager/PhotoManager$Request;

    .line 331
    .local v0, "r":Lcom/kingsoft/mail/photomanager/PhotoManager$Request;
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    const-string/jumbo v0, "PhotoManager"

    const-string/jumbo v1, "%s resumed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    iput-boolean v4, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPaused:Z

    .line 439
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/PhotoManager;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->requestLoading()V

    .line 442
    :cond_0
    return-void
.end method
