.class public Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;
.super Lcom/kingsoft/ex/photo/adapters/BaseCursorPagerAdapter;
.source "PhotoPagerAdapter.java"


# instance fields
.field protected mContentUriIndex:I

.field protected mDisplayThumbsFullScreen:Z

.field protected mLoadingIndex:I

.field protected final mMaxScale:F

.field protected mThumbnailUriIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;FZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "maxScale"    # F
    .param p5, "thumbsFullScreen"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/ex/photo/adapters/BaseCursorPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V

    .line 43
    iput p4, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mMaxScale:F

    .line 44
    iput-boolean p5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mDisplayThumbsFullScreen:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getItem(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    .line 49
    iget v5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "photoUri":Ljava/lang/String;
    iget v5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "thumbnailUri":Ljava/lang/String;
    iget v5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 53
    iget v5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 57
    .local v1, "loading":Z
    :goto_0
    const/4 v2, 0x0

    .line 58
    .local v2, "onlyShowSpinner":Z
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/ex/photo/Intents;->newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    invoke-virtual {v0, v3}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->setResolvedPhotoUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->setThumbnailUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mDisplayThumbsFullScreen:Z

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->setDisplayThumbsFullScreen(Z)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mMaxScale:F

    invoke-virtual {v5, v6}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->setMaxInitialScale(F)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, p3, v2}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->newInstance(Landroid/content/Intent;IZ)Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    move-result-object v5

    return-object v5

    .line 55
    .end local v0    # "builder":Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .end local v1    # "loading":Z
    .end local v2    # "onlyShowSpinner":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "loading":Z
    goto :goto_0
.end method

.method public getPhotoUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 93
    iget v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    iget v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, -0x1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v0, "contentUri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    .line 79
    const-string/jumbo v0, "thumbnailUri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    .line 81
    const-string/jumbo v0, "loadingIndicator"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    .line 89
    :goto_0
    invoke-super {p0, p1}, Lcom/kingsoft/ex/photo/adapters/BaseCursorPagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    .line 85
    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    .line 86
    iput v0, p0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    goto :goto_0
.end method
