.class public final Lcom/kingsoft/email/provider/ContentCache$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCache.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/kingsoft/email/provider/ContentCache;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/kingsoft/email/provider/ContentCache;Ljava/lang/String;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cache"    # Lcom/kingsoft/email/provider/ContentCache;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 294
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 288
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 290
    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 295
    iput-object p1, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    .line 296
    iput-object p2, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    .line 297
    iput-object p3, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/kingsoft/email/provider/ContentCache;->sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    invoke-virtual {v0, p1}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->add(Ljava/lang/Object;)V

    .line 300
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    monitor-enter v2

    .line 310
    :try_start_0
    sget-object v1, Lcom/kingsoft/email/provider/ContentCache;->sActiveCursors:Lcom/kingsoft/email/provider/ContentCache$CounterMap;

    iget-object v3, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "count":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCache:Lcom/kingsoft/email/provider/ContentCache;

    # getter for: Lcom/kingsoft/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/kingsoft/email/provider/ContentCache;->access$100(Lcom/kingsoft/email/provider/ContentCache;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v1, v3, :cond_0

    .line 312
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 314
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 316
    return-void

    .line 314
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 396
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCount:I

    if-gez v0, :cond_0

    .line 326
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 328
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 385
    iget v1, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 365
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 339
    :cond_1
    iput p1, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 340
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method
