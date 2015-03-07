.class public Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/photo/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoViewIntentBuilder"
.end annotation


# instance fields
.field private mActionBarHiddenInitially:Z

.field private mDisplayFullScreenThumbs:Z

.field private mInitialPhotoUri:Ljava/lang/String;

.field private mInitialThumbnailUri:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private mMaxInitialScale:Ljava/lang/Float;

.field private mPhotoIndex:Ljava/lang/Integer;

.field private mPhotosUri:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mResolvedPhotoUri:Ljava/lang/String;

.field private mScaleAnimation:Z

.field private mStartHeight:I

.field private mStartWidth:I

.field private mStartX:I

.field private mStartY:I

.field private mThumbnailUri:Ljava/lang/String;

.field private mWatchNetwork:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    .line 121
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mScaleAnimation:Z

    .line 122
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mActionBarHiddenInitially:Z

    .line 123
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mDisplayFullScreenThumbs:Z

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/kingsoft/ex/photo/Intents$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/kingsoft/ex/photo/Intents$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 221
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "photo_index"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mInitialPhotoUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "initial_photo_uri"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mInitialPhotoUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mInitialPhotoUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "specified both photo index and photo uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotosUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "photos_uri"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotosUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mResolvedPhotoUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "resolved_photo_uri"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mResolvedPhotoUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mProjection:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "projection"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mProjection:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mThumbnailUri:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "thumbnail_uri"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mThumbnailUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mMaxInitialScale:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "max_scale"

    iget-object v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mMaxInitialScale:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 258
    :cond_7
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mWatchNetwork:Z

    if-ne v0, v3, :cond_8

    .line 259
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "watch_network"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "scale_up_animation"

    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mScaleAnimation:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mScaleAnimation:Z

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "start_x_extra"

    iget v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "start_y_extra"

    iget v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "start_width_extra"

    iget v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "start_height_extra"

    iget v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    :cond_9
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "action_bar_hidden_initially"

    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mActionBarHiddenInitially:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "display_thumbs_fullscreen"

    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mDisplayFullScreenThumbs:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setActionBarHiddenInitially(Z)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "actionBarHiddenInitially"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mActionBarHiddenInitially:Z

    .line 202
    return-object p0
.end method

.method public setDisplayThumbsFullScreen(Z)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "displayFullScreenThumbs"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mDisplayFullScreenThumbs:Z

    .line 216
    return-object p0
.end method

.method public setInitialPhotoUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "initialPhotoUri"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mInitialPhotoUri:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setMaxInitialScale(F)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 1
    .param p1, "maxScale"    # F

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mMaxInitialScale:Ljava/lang/Float;

    .line 173
    return-object p0
.end method

.method public setPhotoIndex(Ljava/lang/Integer;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "photoIndex"    # Ljava/lang/Integer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotoIndex:Ljava/lang/Integer;

    .line 129
    return-object p0
.end method

.method public setPhotosUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "photosUri"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mPhotosUri:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setProjection([Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mProjection:[Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setResolvedPhotoUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "resolvedPhotoUri"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mResolvedPhotoUri:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setScaleAnimation(IIII)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mScaleAnimation:Z

    .line 189
    iput p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartX:I

    .line 190
    iput p2, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartY:I

    .line 191
    iput p3, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartWidth:I

    .line 192
    iput p4, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mStartHeight:I

    .line 193
    return-object p0
.end method

.method public setThumbnailUri(Ljava/lang/String;)Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 0
    .param p1, "thumbnailUri"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mThumbnailUri:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public watchNetworkConnectivityChanges()Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/Intents$PhotoViewIntentBuilder;->mWatchNetwork:Z

    .line 183
    return-object p0
.end method
