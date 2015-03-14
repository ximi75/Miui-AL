.class public Lcom/kingsoft/bitmap/AltBitmapCache;
.super Lcom/kingsoft/bitmap/AltPooledCache;
.source "AltBitmapCache.java"

# interfaces
.implements Lcom/kingsoft/bitmap/BitmapCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/bitmap/AltPooledCache",
        "<",
        "Lcom/kingsoft/bitmap/DecodeTask$Request;",
        "Lcom/kingsoft/bitmap/ReusableBitmap;",
        ">;",
        "Lcom/kingsoft/bitmap/BitmapCache;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlocking:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/bitmap/AltBitmapCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "targetSizeBytes"    # I
    .param p2, "nonPooledFraction"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/bitmap/AltPooledCache;-><init>(IF)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mBlocking:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Lcom/kingsoft/bitmap/Poolable;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/bitmap/Poolable;

    .prologue
    .line 28
    check-cast p1, Lcom/kingsoft/bitmap/ReusableBitmap;

    .end local p1    # "x0":Lcom/kingsoft/bitmap/Poolable;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/AltBitmapCache;->offer(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public offer(Lcom/kingsoft/bitmap/ReusableBitmap;)V
    .locals 2
    .param p1, "value"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingsoft/bitmap/AltPooledCache;->offer(Lcom/kingsoft/bitmap/Poolable;)V

    .line 96
    iget-object v0, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/kingsoft/bitmap/ReusableBitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/AltBitmapCache;->offer(Lcom/kingsoft/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public bridge synthetic poll()Lcom/kingsoft/bitmap/Poolable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingsoft/bitmap/AltBitmapCache;->poll()Lcom/kingsoft/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/kingsoft/bitmap/ReusableBitmap;
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/kingsoft/bitmap/AltPooledCache;->poll()Lcom/kingsoft/bitmap/Poolable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/bitmap/ReusableBitmap;

    .local v0, "bitmap":Lcom/kingsoft/bitmap/ReusableBitmap;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mBlocking:Z

    if-eqz v1, :cond_0

    .line 74
    const-string/jumbo v1, "sleep"

    invoke-static {v1}, Lcom/kingsoft/bitmap/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/kingsoft/bitmap/Trace;->endSection()V

    goto :goto_0

    .line 86
    .end local v0    # "bitmap":Lcom/kingsoft/bitmap/ReusableBitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0    # "bitmap":Lcom/kingsoft/bitmap/ReusableBitmap;
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingsoft/bitmap/AltBitmapCache;->poll()Lcom/kingsoft/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBlocking(Z)V
    .locals 2
    .param p1, "blocking"    # Z

    .prologue
    .line 45
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iput-boolean p1, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mBlocking:Z

    .line 48
    iget-boolean v0, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mBlocking:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingsoft/bitmap/AltBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    :cond_0
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic sizeOf(Lcom/kingsoft/bitmap/Poolable;)I
    .locals 1
    .param p1, "x0"    # Lcom/kingsoft/bitmap/Poolable;

    .prologue
    .line 28
    check-cast p1, Lcom/kingsoft/bitmap/ReusableBitmap;

    .end local p1    # "x0":Lcom/kingsoft/bitmap/Poolable;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/AltBitmapCache;->sizeOf(Lcom/kingsoft/bitmap/ReusableBitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Lcom/kingsoft/bitmap/ReusableBitmap;)I
    .locals 1
    .param p1, "value"    # Lcom/kingsoft/bitmap/ReusableBitmap;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/kingsoft/bitmap/ReusableBitmap;->getByteCount()I

    move-result v0

    return v0
.end method
