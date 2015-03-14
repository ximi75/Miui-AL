.class final Lcom/kingsoft/mail/photomanager/PhotoManager$1;
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
        "Ljava/lang/Object;",
        "Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;
    .param p4, "newValue"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .prologue
    .line 219
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p3, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/photomanager/PhotoManager$1;->entryRemoved(ZLjava/lang/Object;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .prologue
    .line 213
    iget-object v0, p2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p2, Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/photomanager/PhotoManager$1;->sizeOf(Ljava/lang/Object;Lcom/kingsoft/mail/photomanager/PhotoManager$BitmapHolder;)I

    move-result v0

    return v0
.end method
