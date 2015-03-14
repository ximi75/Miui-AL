.class public Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
.super Lcom/kingsoft/mail/photomanager/PhotoManager;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;,
        Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field private static final PHOTO_ID_CACHE_SIZE:I = 0x1f4


# instance fields
.field private final mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

.field private final mPhotoIdCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/photomanager/PhotoManager;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    .line 80
    new-instance v0, Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/photomanager/LetterTileProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;)Lcom/kingsoft/mail/photomanager/LetterTileProvider;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    return-object v0
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v1, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static generateHash(Lcom/kingsoft/mail/ui/ImageCanvas;ILjava/lang/Object;)I
    .locals 3
    .param p0, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;
    .param p1, "pos"    # I
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "applicationContext":Landroid/content/Context;
    const-string/jumbo v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    .line 62
    .local v1, "service":Lcom/kingsoft/mail/photomanager/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 63
    invoke-static {v0}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/kingsoft/mail/photomanager/ContactPhotoManager;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "PhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/kingsoft/mail/photomanager/PhotoManager;->clear()V

    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mPhotoIdCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 103
    return-void
.end method

.method protected getDefaultImageProvider()Lcom/kingsoft/mail/photomanager/PhotoManager$DefaultImageProvider;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->mLetterTileProvider:Lcom/kingsoft/mail/photomanager/LetterTileProvider;

    return-object v0
.end method

.method protected getHash(Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;Lcom/kingsoft/mail/ui/ImageCanvas;)I
    .locals 3
    .param p1, "id"    # Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoIdentifier;
    .param p2, "view"    # Lcom/kingsoft/mail/ui/ImageCanvas;

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;

    .line 91
    .local v0, "contactId":Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;
    iget v1, v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->pos:I

    invoke-virtual {v0}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactIdentifier;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager;->generateHash(Lcom/kingsoft/mail/ui/ImageCanvas;ILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected getLoaderThread(Landroid/content/ContentResolver;)Lcom/kingsoft/mail/photomanager/PhotoManager$PhotoLoaderThread;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 96
    new-instance v0, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/photomanager/ContactPhotoManager$ContactPhotoLoaderThread;-><init>(Lcom/kingsoft/mail/photomanager/ContactPhotoManager;Landroid/content/ContentResolver;)V

    return-object v0
.end method
