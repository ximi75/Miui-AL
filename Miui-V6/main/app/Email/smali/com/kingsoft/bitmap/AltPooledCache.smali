.class public Lcom/kingsoft/bitmap/AltPooledCache;
.super Ljava/lang/Object;
.source "AltPooledCache.java"

# interfaces
.implements Lcom/kingsoft/bitmap/PooledCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/kingsoft/bitmap/Poolable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kingsoft/bitmap/PooledCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mNonPooledCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mTargetSize:I


# direct methods
.method public constructor <init>(IF)V
    .locals 5
    .param p1, "targetSize"    # I
    .param p2, "nonPooledFraction"    # F

    .prologue
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v4, p0, Lcom/kingsoft/bitmap/AltPooledCache;->DEBUG:Z

    .line 59
    new-instance v1, Ljava/util/LinkedHashMap;

    const/high16 v2, 0x3f400000

    const/4 v3, 0x1

    invoke-direct {v1, v4, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    .line 60
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    int-to-float v1, p1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 62
    .local v0, "nonPooledSize":I
    if-lez v0, :cond_0

    .line 63
    new-instance v1, Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;

    invoke-direct {v1, p0, v0}, Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;-><init>(Lcom/kingsoft/bitmap/AltPooledCache;I)V

    iput-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    .line 67
    :goto_0
    sub-int v1, p1, v0

    iput v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mTargetSize:I

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Z)Lcom/kingsoft/bitmap/Poolable;
    .locals 3
    .param p2, "incrementRefCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/bitmap/Poolable;

    .line 74
    .local v0, "result":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    check-cast v0, Lcom/kingsoft/bitmap/Poolable;

    .line 77
    .restart local v0    # "result":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lcom/kingsoft/bitmap/Poolable;->acquireReference()V

    .line 80
    :cond_1
    monitor-exit v2

    return-object v0

    .line 81
    .end local v0    # "result":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 44
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/bitmap/AltPooledCache;->get(Ljava/lang/Object;Z)Lcom/kingsoft/bitmap/Poolable;

    move-result-object v0

    return-object v0
.end method

.method public offer(Lcom/kingsoft/bitmap/Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    invoke-interface {p1}, Lcom/kingsoft/bitmap/Poolable;->getRefCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/kingsoft/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected offer of an invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    check-cast p1, Lcom/kingsoft/bitmap/Poolable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/bitmap/AltPooledCache;->offer(Lcom/kingsoft/bitmap/Poolable;)V

    return-void
.end method

.method public poll()Lcom/kingsoft/bitmap/Poolable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    iget-object v6, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/bitmap/Poolable;

    .line 110
    .local v3, "pooled":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    if-eqz v3, :cond_0

    .line 141
    .end local v3    # "pooled":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :goto_0
    return-object v3

    .line 114
    .restart local v3    # "pooled":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_0
    iget-object v7, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    monitor-enter v7

    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, "unrefSize":I
    const/4 v0, 0x0

    .line 117
    .local v0, "eldestUnref":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/bitmap/Poolable;

    .line 119
    .local v5, "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    invoke-interface {v5}, Lcom/kingsoft/bitmap/Poolable;->getRefCount()I

    move-result v6

    if-gtz v6, :cond_1

    invoke-interface {v5}, Lcom/kingsoft/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    if-nez v0, :cond_2

    .line 123
    move-object v0, v1

    .line 125
    :cond_2
    invoke-virtual {p0, v5}, Lcom/kingsoft/bitmap/AltPooledCache;->sizeOf(Lcom/kingsoft/bitmap/Poolable;)I

    move-result v6

    add-int/2addr v4, v6

    .line 126
    iget v6, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mTargetSize:I

    if-le v4, v6, :cond_1

    .line 132
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_3
    iget v6, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mTargetSize:I

    if-gt v4, v6, :cond_4

    .line 136
    const/4 v3, 0x0

    monitor-exit v7

    goto :goto_0

    .line 143
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pooled":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 138
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pooled":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/bitmap/Poolable;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v6

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/kingsoft/bitmap/AltPooledCache;->poll()Lcom/kingsoft/bitmap/Poolable;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lcom/kingsoft/bitmap/Poolable;)Lcom/kingsoft/bitmap/Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    iget-object v2, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    invoke-interface {p2}, Lcom/kingsoft/bitmap/Poolable;->isEligibleForPooling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/bitmap/Poolable;

    .line 95
    .local v0, "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :goto_0
    monitor-exit v2

    return-object v0

    .line 90
    .end local v0    # "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/kingsoft/bitmap/AltPooledCache;->mNonPooledCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/bitmap/Poolable;

    .restart local v0    # "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    goto :goto_0

    .line 93
    .end local v0    # "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    goto :goto_0

    .line 96
    .end local v0    # "prev":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    check-cast p2, Lcom/kingsoft/bitmap/Poolable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/bitmap/AltPooledCache;->put(Ljava/lang/Object;Lcom/kingsoft/bitmap/Poolable;)Lcom/kingsoft/bitmap/Poolable;

    move-result-object v0

    return-object v0
.end method

.method protected sizeOf(Lcom/kingsoft/bitmap/Poolable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    .local p1, "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
