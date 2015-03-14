.class Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;
.super Landroid/support/v4/util/LruCache;
.source "AltPooledCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/bitmap/AltPooledCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonPooledCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/bitmap/AltPooledCache;


# direct methods
.method public constructor <init>(Lcom/kingsoft/bitmap/AltPooledCache;I)V
    .locals 0
    .param p2, "maxSize"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    iput-object p1, p0, Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;->this$0:Lcom/kingsoft/bitmap/AltPooledCache;

    .line 204
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 205
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Lcom/kingsoft/bitmap/Poolable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Lcom/kingsoft/bitmap/Poolable;, "TV;"
    iget-object v0, p0, Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;->this$0:Lcom/kingsoft/bitmap/AltPooledCache;

    invoke-virtual {v0, p2}, Lcom/kingsoft/bitmap/AltPooledCache;->sizeOf(Lcom/kingsoft/bitmap/Poolable;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 201
    .local p0, "this":Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;, "Lcom/kingsoft/bitmap/AltPooledCache<TK;TV;>.NonPooledCache;"
    check-cast p2, Lcom/kingsoft/bitmap/Poolable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/bitmap/AltPooledCache$NonPooledCache;->sizeOf(Ljava/lang/Object;Lcom/kingsoft/bitmap/Poolable;)I

    move-result v0

    return v0
.end method
