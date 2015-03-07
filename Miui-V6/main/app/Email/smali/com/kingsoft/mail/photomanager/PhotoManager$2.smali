.class final Lcom/kingsoft/mail/photomanager/PhotoManager$2;
.super Landroid/util/LruCache;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/photomanager/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .prologue
    .line 231
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/photomanager/PhotoManager$2;->entryRemoved(ZLcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/PhotoManager$2;->sizeOf(Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapIdentifier;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
