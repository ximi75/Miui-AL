.class public Lcom/kingsoft/ex/photo/PhotoViewActivity;
.super Lcom/kingsoft/mail/ui/BaseActionBarActivity;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
.implements Lcom/kingsoft/ex/photo/PhotoViewCallbacks;
.implements Lcom/kingsoft/ex/photo/PhotoViewPager$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/ui/BaseActionBarActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/kingsoft/ex/photo/PhotoViewPager$OnInterceptTouchListener;",
        "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
        "Lcom/kingsoft/ex/photo/PhotoViewCallbacks;"
    }
.end annotation


# static fields
.field public static final ALBUM_COUNT_UNKNOWN:I = -0x1

.field protected static final ARG_IMAGE_URI:Ljava/lang/String; = "image_uri"

.field public static final ENTER_ANIMATION_DURATION_MS:I = 0xfa

.field public static final EXIT_ANIMATION_DURATION_MS:I = 0xfa

.field public static final KEY_MESSAGE:Ljava/lang/String; = "dialog_message"

.field private static final LOADER_PHOTO_LIST:I = 0x64

.field private static final STATE_ACTIONBARSUBTITLE_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

.field private static final STATE_ACTIONBARTITLE_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

.field private static final STATE_CURRENT_INDEX_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.CURRENT_INDEX"

.field private static final STATE_CURRENT_URI_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.CURRENT_URI"

.field private static final STATE_ENTERANIMATIONFINISHED_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.SCALEANIMATIONFINISHED"

.field private static final STATE_FULLSCREEN_KEY:Ljava/lang/String; = "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

.field private static final TAG:Ljava/lang/String; = "PhotoViewActivity"

.field public static sMemoryClass:I


# instance fields
.field protected mActionBarHiddenInitially:Z

.field protected mActionBarSubtitle:Ljava/lang/String;

.field protected mActionBarTitle:Ljava/lang/String;

.field protected mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

.field protected mAlbumCount:I

.field protected mAnimationStartHeight:I

.field protected mAnimationStartWidth:I

.field protected mAnimationStartX:I

.field protected mAnimationStartY:I

.field protected mBackground:Landroid/view/View;

.field protected mBitmapCallback:Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;

.field private mCurrentPhotoIndex:I

.field private mCurrentPhotoUri:Ljava/lang/String;

.field private final mCursorListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayThumbsFullScreen:Z

.field private mEnterAnimationFinished:Z

.field private mEnterFullScreenDelayTime:J

.field private final mEnterFullScreenRunnable:Ljava/lang/Runnable;

.field protected mFullScreen:Z

.field protected final mHandler:Landroid/os/Handler;

.field protected mIsEmpty:Z

.field protected mIsPaused:Z

.field protected mMaxInitialScale:F

.field private mPhotosUri:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mRestartLoader:Z

.field protected mRootView:Landroid/view/View;

.field protected mScaleAnimationEnabled:Z

.field private final mScreenListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTemporaryImage:Landroid/widget/ImageView;

.field protected mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAlbumCount:I

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Lcom/kingsoft/ex/photo/PhotoViewActivity$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$1;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    .line 1028
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/PhotoViewActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->onExitAnimationComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/PhotoViewActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->runEnterAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/ex/photo/PhotoViewActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/photo/PhotoViewActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->initTemporaryImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateTranslate(IIIF)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "startSize"    # I
    .param p3, "totalSize"    # I
    .param p4, "scale"    # F

    .prologue
    const/high16 v4, 0x40000000

    .line 981
    int-to-float v2, p3

    int-to-float v3, p3

    mul-float/2addr v3, p4

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 987
    .local v1, "scaleFromEdge":I
    int-to-float v2, p3

    mul-float/2addr v2, p4

    int-to-float v3, p2

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 989
    .local v0, "blankSize":I
    sub-int v2, p1, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method private cancelEnterFullScreenRunnable()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method private static final getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 705
    if-nez p0, :cond_0

    .line 706
    const-string/jumbo p0, ""

    .line 708
    .end local p0    # "in":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private initTemporaryImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 993
    iget-boolean v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    if-eqz v2, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 998
    if-eqz p1, :cond_1

    .line 1000
    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1001
    .local v1, "totalWidth":I
    if-nez v1, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 1006
    .local v0, "base":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$6;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1025
    .end local v0    # "base":Landroid/view/View;
    .end local v1    # "totalWidth":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 1021
    .restart local v1    # "totalWidth":I
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->runEnterAnimation()V

    goto :goto_1
.end method

.method private declared-synchronized notifyCursorListeners(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;

    .line 502
    .local v1, "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;
    invoke-interface {v1, p1}, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;->onCursorChanged(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 501
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 504
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private onExitAnimationComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 796
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->finish()V

    .line 797
    invoke-virtual {p0, v0, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->overridePendingTransition(II)V

    .line 798
    return-void
.end method

.method private postEnterFullScreenRunnableWithDelay()V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterFullScreenRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterFullScreenDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    return-void
.end method

.method private runEnterAnimation()V
    .locals 23

    .prologue
    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 802
    .local v14, "totalWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 807
    .local v13, "totalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v11, v19, v20

    .line 814
    .local v11, "scaleW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v12, v19, v20

    .line 815
    .local v12, "scaleY":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 817
    .local v9, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v14, v9}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v16

    .line 819
    .local v16, "translateX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v13, v9}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v17

    .line 822
    .local v17, "translateY":I
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 823
    .local v18, "version":I
    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xfa

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 833
    new-instance v7, Lcom/kingsoft/ex/photo/PhotoViewActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$2;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 839
    .local v7, "endRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0xfa

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 841
    .local v6, "animator":Landroid/view/ViewPropertyAnimator;
    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 842
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 846
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 879
    .end local v6    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v7    # "endRunnable":Ljava/lang/Runnable;
    :goto_1
    return-void

    .line 844
    .restart local v6    # "animator":Landroid/view/ViewPropertyAnimator;
    .restart local v7    # "endRunnable":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xfa

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 848
    .end local v6    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v7    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 849
    .local v4, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 853
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 855
    .local v15, "translateAnimation":Landroid/view/animation/Animation;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 856
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v9, v9, v0, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 857
    .local v10, "scaleAnimation":Landroid/view/animation/Animation;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 859
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 860
    .local v5, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 861
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 862
    new-instance v8, Lcom/kingsoft/ex/photo/PhotoViewActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$3;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 876
    .local v8, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method private runExitAnimation()V
    .locals 20

    .prologue
    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 888
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 889
    .local v13, "totalWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 895
    .local v12, "totalHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 896
    .local v10, "scaleW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 897
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 899
    .local v8, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v13, v8}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v14

    .line 901
    .local v14, "translateX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v8}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->calculateTranslate(IIIF)I

    move-result v15

    .line 903
    .local v15, "translateY":I
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 904
    .local v16, "version":I
    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 908
    new-instance v5, Lcom/kingsoft/ex/photo/PhotoViewActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$4;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 917
    .local v5, "endRunnable":Ljava/lang/Runnable;
    const/4 v4, 0x0

    .line 918
    .local v4, "animator":Landroid/view/ViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v14

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 927
    :goto_0
    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 928
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 932
    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 965
    .end local v4    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v5    # "endRunnable":Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 923
    .restart local v4    # "animator":Landroid/view/ViewPropertyAnimator;
    .restart local v5    # "endRunnable":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/ex/photo/PhotoViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v14

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0xfa

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    goto :goto_0

    .line 930
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xfa

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 934
    .end local v4    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v5    # "endRunnable":Ljava/lang/Runnable;
    :cond_2
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v17, 0x3f800000

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 935
    .local v3, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v17, 0xfa

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 939
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000

    const/high16 v18, 0x3f800000

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1, v8, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 940
    .local v9, "scaleAnimation":Landroid/view/animation/Animation;
    const-wide/16 v17, 0xfa

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 941
    new-instance v7, Lcom/kingsoft/ex/photo/PhotoViewActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity$5;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;)V

    .line 955
    .local v7, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v9, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 962
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/kingsoft/ex/photo/PhotoViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized addCursorListener(Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addScreenListener(ILcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method protected createPhotoPagerAdapter(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;F)Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "maxScale"    # F

    .prologue
    .line 171
    new-instance v0, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mDisplayThumbsFullScreen:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;FZ)V

    .line 173
    .local v0, "adapter":Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;
    return-object v0
.end method

.method public getAdapter()Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorAtProperPosition()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 731
    :goto_0
    return-object v0

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v3}, Lcom/kingsoft/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v1

    .line 723
    .local v1, "position":I
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 725
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    move-object v0, v2

    .line 726
    goto :goto_0

    .line 729
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public isFragmentActive(Landroid/support/v4/app/Fragment;)Z
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/kingsoft/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 374
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/kingsoft/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFullScreen()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->toggleFullScreen()V

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->runExitAnimation()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 182
    .local v3, "mgr":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    sput v6, Lcom/kingsoft/ex/photo/PhotoViewActivity;->sMemoryClass:I

    .line 184
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 186
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "photos_uri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    const-string/jumbo v6, "photos_uri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mPhotosUri:Ljava/lang/String;

    .line 189
    :cond_0
    const-string/jumbo v6, "scale_up_animation"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    iput-boolean v10, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    .line 191
    const-string/jumbo v6, "start_x_extra"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartX:I

    .line 192
    const-string/jumbo v6, "start_y_extra"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartY:I

    .line 193
    const-string/jumbo v6, "start_width_extra"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartWidth:I

    .line 194
    const-string/jumbo v6, "start_height_extra"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAnimationStartHeight:I

    .line 196
    :cond_1
    const-string/jumbo v6, "action_bar_hidden_initially"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    .line 198
    const-string/jumbo v6, "display_thumbs_fullscreen"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mDisplayThumbsFullScreen:Z

    .line 204
    const-string/jumbo v6, "projection"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 205
    const-string/jumbo v6, "projection"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    .line 211
    :goto_0
    const-string/jumbo v6, "max_scale"

    const/high16 v7, 0x3f800000

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mMaxInitialScale:F

    .line 212
    iput-object v9, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 213
    iput v12, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 220
    const-string/jumbo v6, "photo_index"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    const-string/jumbo v6, "photo_index"

    invoke-virtual {v2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 223
    :cond_2
    const-string/jumbo v6, "initial_photo_uri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    const-string/jumbo v6, "initial_photo_uri"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 226
    :cond_3
    iput-boolean v10, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 228
    if-eqz p1, :cond_7

    .line 229
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_URI"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 230
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_INDEX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 231
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 232
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    .line 233
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    .line 234
    const-string/jumbo v6, "com.google.android.apps.plus.PhotoViewFragment.SCALEANIMATIONFINISHED"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    .line 240
    :goto_1
    const v6, 0x7f040099

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setContentView(I)V

    .line 243
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    iget v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mMaxInitialScale:F

    invoke-virtual {p0, p0, v6, v9, v7}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->createPhotoPagerAdapter(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;F)Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    .line 245
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 246
    .local v4, "resources":Landroid/content/res/Resources;
    const v6, 0x7f0c0201

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    .line 247
    const v6, 0x7f0c0202

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    .line 248
    const v6, 0x7f0c0203

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    .line 249
    const v6, 0x7f0c0204

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/ex/photo/PhotoViewPager;

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    .line 250
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 251
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v6, p0}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 252
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v6, p0}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setOnInterceptTouchListener(Lcom/kingsoft/ex/photo/PhotoViewPager$OnInterceptTouchListener;)V

    .line 253
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    const v7, 0x7f0d00f4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setPageMargin(I)V

    .line 255
    new-instance v6, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;

    invoke-direct {v6, p0, v9}, Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;-><init>(Lcom/kingsoft/ex/photo/PhotoViewActivity;Lcom/kingsoft/ex/photo/PhotoViewActivity$1;)V

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBitmapCallback:Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;

    .line 256
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    if-eqz v6, :cond_8

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v6, v7, v9, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 262
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBackground:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :goto_2
    const v6, 0x7f0e0036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterFullScreenDelayTime:J

    .line 277
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 278
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_5

    .line 279
    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 280
    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBar;->addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V

    .line 281
    const/16 v5, 0x8

    .line 282
    .local v5, "showTitle":I
    invoke-virtual {v0, v11, v11}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setActionBarTitles(Landroid/support/v7/app/ActionBar;)V

    .line 288
    .end local v5    # "showTitle":I
    :cond_5
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    invoke-virtual {p0, v6}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 289
    return-void

    .line 207
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_6
    iput-object v9, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :cond_7
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarHiddenInitially:Z

    iput-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    goto/16 :goto_1

    .line 268
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :cond_8
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v6, v11}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "image_uri"

    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mBitmapCallback:Lcom/kingsoft/ex/photo/PhotoViewActivity$BitmapCallback;

    invoke-virtual {v6, v7, v1, v8}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_2
.end method

.method public onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 414
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 412
    :pswitch_0
    new-instance v0, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;

    invoke-direct {v0, p0, p3}, Lcom/kingsoft/ex/photo/loaders/PhotoBitmapLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 401
    new-instance v0, Lcom/kingsoft/ex/photo/loaders/PhotoPagerLoader;

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mPhotosUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mProjection:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/ex/photo/loaders/PhotoPagerLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCursorChanged(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "fragment"    # Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 783
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    .line 792
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 793
    return-void
.end method

.method public onFragmentPhotoLoadComplete(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;Z)V
    .locals 5
    .param p1, "fragment"    # Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;
    .param p2, "success"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 758
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    if-eqz p2, :cond_1

    .line 762
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string/jumbo v0, "PhotoViewActivity"

    const-string/jumbo v1, "Failed to load fragment image"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mTemporaryImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFragmentVisible(Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/kingsoft/ex/photo/fragments/PhotoViewFragment;

    .prologue
    .line 531
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 12
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v11, 0x0

    const/16 v10, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    .line 422
    .local v1, "id":I
    const/16 v7, 0x64

    if-ne v1, v7, :cond_2

    .line 423
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 424
    :cond_0
    iput-boolean v8, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 483
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->updateActionItems()V

    .line 485
    :cond_2
    :goto_1
    return-void

    .line 426
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    iput v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAlbumCount:I

    .line 427
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 428
    const/4 v2, 0x0

    .line 430
    .local v2, "index":I
    const-string/jumbo v7, "uri"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 432
    .local v4, "uriIndex":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_5

    .line 433
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 439
    .local v0, "currentPhotoUri":Landroid/net/Uri;
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 440
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "uriString":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_6

    .line 443
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 447
    .local v3, "uri":Landroid/net/Uri;
    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 448
    iput v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 459
    .end local v0    # "currentPhotoUri":Landroid/net/Uri;
    .end local v2    # "index":I
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriIndex":I
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_4
    iget-boolean v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsPaused:Z

    if-eqz v7, :cond_8

    .line 460
    iput-boolean v8, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    goto :goto_1

    .line 436
    .restart local v2    # "index":I
    .restart local v4    # "uriIndex":I
    :cond_5
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "currentPhotoUri":Landroid/net/Uri;
    goto :goto_2

    .line 445
    .restart local v5    # "uriString":Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 451
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 452
    goto :goto_2

    .line 463
    .end local v0    # "currentPhotoUri":Landroid/net/Uri;
    .end local v2    # "index":I
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uriIndex":I
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_8
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 464
    .local v6, "wasEmpty":Z
    iput-boolean v9, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    .line 466
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v7, p2}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 467
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v7}, Lcom/kingsoft/ex/photo/PhotoViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v7

    if-nez v7, :cond_9

    .line 468
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    iget-object v8, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v7, v8}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 470
    :cond_9
    invoke-direct {p0, p2}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->notifyCursorListeners(Landroid/database/Cursor;)V

    .line 473
    iget v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    if-gez v7, :cond_a

    .line 474
    iput v9, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 477
    :cond_a
    iget-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    iget v8, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/ex/photo/PhotoViewPager;->setCurrentItem(IZ)V

    .line 478
    if-eqz v6, :cond_1

    .line 479
    iget v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    invoke-virtual {p0, v7}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setViewActivated(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    goto :goto_0
.end method

.method public onNewPhotoLoaded(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 750
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->finish()V

    .line 343
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 518
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 508
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 513
    invoke-virtual {p0, p1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setViewActivated(I)V

    .line 514
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 306
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 308
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onPause()V

    .line 309
    return-void
.end method

.method public onPhotoRemoved(J)V
    .locals 5
    .param p1, "photoId"    # J

    .prologue
    .line 383
    iget-object v2, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAdapter:Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/ex/photo/adapters/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 384
    .local v0, "data":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 390
    .local v1, "dataCount":I
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->finish()V

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onResume()V

    .line 294
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 295
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 297
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsPaused:Z

    .line 298
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    if-eqz v0, :cond_0

    .line 299
    iput-boolean v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRestartLoader:Z

    .line 300
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 302
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_URI"

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.CURRENT_INDEX"

    iget v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "com.google.android.apps.plus.PhotoViewFragment.SCALEANIMATIONFINISHED"

    iget-boolean v1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mEnterAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    return-void
.end method

.method public onTouchIntercept(FF)Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;
    .locals 5
    .param p1, "origX"    # F
    .param p2, "origY"    # F

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "interceptLeft":Z
    const/4 v2, 0x0

    .line 538
    .local v2, "interceptRight":Z
    iget-object v4, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 539
    .local v3, "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    if-nez v1, :cond_1

    .line 540
    invoke-interface {v3, p1, p2}, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;->onInterceptMoveLeft(FF)Z

    move-result v1

    .line 542
    :cond_1
    if-nez v2, :cond_0

    .line 543
    invoke-interface {v3, p1, p2}, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;->onInterceptMoveRight(FF)Z

    move-result v2

    goto :goto_0

    .line 547
    .end local v3    # "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    :cond_2
    if-eqz v1, :cond_4

    .line 548
    if-eqz v2, :cond_3

    .line 549
    sget-object v4, Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;->BOTH:Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;

    .line 555
    :goto_1
    return-object v4

    .line 551
    :cond_3
    sget-object v4, Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;->LEFT:Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_1

    .line 552
    :cond_4
    if-eqz v2, :cond_5

    .line 553
    sget-object v4, Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;->RIGHT:Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_1

    .line 555
    :cond_5
    sget-object v4, Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;->NONE:Lcom/kingsoft/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_1
.end method

.method public declared-synchronized removeCursorListener(Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kingsoft/ex/photo/PhotoViewCallbacks$CursorChangedListener;

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCursorListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeScreenListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method protected final setActionBarTitles(Landroid/support/v7/app/ActionBar;)V
    .locals 1
    .param p1, "actionBar"    # Landroid/support/v7/app/ActionBar;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getInputOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setFullScreen(ZZ)V
    .locals 6
    .param p1, "fullScreen"    # Z
    .param p2, "setDelayedRunnable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 562
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-eq p1, v5, :cond_1

    move v0, v3

    .line 563
    .local v0, "fullScreenChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    .line 565
    iget-boolean v5, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-eqz v5, :cond_2

    .line 566
    invoke-virtual {p0, v3}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 567
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 575
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 576
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 577
    .local v2, "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    invoke-interface {v2, v3}, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;->onFullScreenChanged(Z)V

    goto :goto_2

    .end local v0    # "fullScreenChanged":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    :cond_1
    move v0, v4

    .line 562
    goto :goto_0

    .line 569
    .restart local v0    # "fullScreenChanged":Z
    :cond_2
    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setLightsOutMode(Z)V

    .line 570
    if-eqz p2, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    goto :goto_1

    .line 580
    :cond_3
    return-void
.end method

.method protected setLightsOutMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/16 v5, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xb

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, "flags":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 593
    .local v2, "version":I
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 594
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz p1, :cond_4

    .line 595
    if-lt v2, v5, :cond_2

    .line 596
    const/16 v1, 0x501

    .line 599
    iget-boolean v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScaleAnimationEnabled:Z

    if-nez v3, :cond_0

    .line 609
    or-int/lit8 v1, v1, 0x4

    .line 616
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 628
    :goto_1
    if-lt v2, v4, :cond_1

    .line 629
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 631
    :cond_1
    return-void

    .line 611
    :cond_2
    if-lt v2, v3, :cond_3

    .line 612
    const/4 v1, 0x1

    goto :goto_0

    .line 613
    :cond_3
    if-lt v2, v4, :cond_0

    .line 614
    const/4 v1, 0x1

    goto :goto_0

    .line 618
    :cond_4
    if-lt v2, v5, :cond_6

    .line 619
    const/16 v1, 0x100

    .line 625
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_1

    .line 620
    :cond_6
    if-lt v2, v3, :cond_7

    .line 621
    const/4 v1, 0x0

    goto :goto_2

    .line 622
    :cond_7
    if-lt v2, v4, :cond_5

    .line 623
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected setPhotoIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 753
    iput p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 754
    return-void
.end method

.method public setViewActivated(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 642
    iget-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mScreenListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;

    .line 643
    .local v1, "listener":Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1}, Lcom/kingsoft/ex/photo/PhotoViewCallbacks$OnScreenListener;->onViewActivated()V

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 647
    .local v0, "cursor":Landroid/database/Cursor;
    iput p1, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoIndex:I

    .line 651
    const-string/jumbo v3, "uri"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 652
    .local v2, "uriIndex":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mCurrentPhotoUri:Ljava/lang/String;

    .line 653
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->updateActionBar()V

    .line 656
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->cancelEnterFullScreenRunnable()V

    .line 657
    invoke-direct {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->postEnterFullScreenRunnableWithDelay()V

    .line 658
    return-void
.end method

.method public toggleFullScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    iget-boolean v0, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mFullScreen:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setFullScreen(ZZ)V

    .line 380
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateActionBar()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 664
    iget-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mViewPager:Lcom/kingsoft/ex/photo/PhotoViewPager;

    invoke-virtual {v6}, Lcom/kingsoft/ex/photo/PhotoViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 665
    .local v3, "position":I
    iget v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAlbumCount:I

    if-ltz v6, :cond_1

    move v1, v4

    .line 667
    .local v1, "hasAlbumCount":Z
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 668
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 671
    const-string/jumbo v6, "_display_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 672
    .local v2, "photoNameIndex":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    .line 677
    .end local v2    # "photoNameIndex":I
    :goto_1
    iget-boolean v6, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mIsEmpty:Z

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    if-gtz v3, :cond_3

    .line 678
    :cond_0
    iput-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    .line 684
    :goto_2
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->setActionBarTitles(Landroid/support/v7/app/ActionBar;)V

    .line 685
    return-void

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "hasAlbumCount":Z
    :cond_1
    move v1, v5

    .line 665
    goto :goto_0

    .line 674
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "hasAlbumCount":Z
    :cond_2
    iput-object v7, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarTitle:Ljava/lang/String;

    goto :goto_1

    .line 680
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002c8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget v5, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mAlbumCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/ex/photo/PhotoViewActivity;->mActionBarSubtitle:Ljava/lang/String;

    goto :goto_2
.end method

.method protected updateActionItems()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method
