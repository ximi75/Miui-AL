.class public Lcom/kingsoft/mail/ui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.7f

.field public static ALPHA_FADE_START:F = 0.0f

.field public static ALPHA_TEXT_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEAD_REGION_FOR_SWIPE:I = 0x38

.field private static final DEBUG_INVALIDATE:Z = false

.field private static DEFAULT_ESCAPE_ANIMATION_DURATION:I = 0x0

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FACTOR:F = 1.2f

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final LOG_SWIPE_DISMISS_VELOCITY:Z = false

.field private static MAX_DISMISS_VELOCITY:I = 0x0

.field private static MAX_ESCAPE_ANIMATION_DURATION:I = 0x0

.field private static MAX_MARK_READ_DIMEN:F = 0.0f

.field private static MIN_SWIPE:F = 0.0f

.field private static SNAP_ANIM_LEN:I = 0x0

.field private static SWIPE_BLANK:F = 0.0f

.field private static SWIPE_ESCAPE_VELOCITY:I = 0x0

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static draftOpen:Z

.field private static sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private animateDone:Z

.field private conversationID:J

.field private draftOpenClickAgain:Z

.field private isRefreshing:Z

.field private final mAnimatingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/browse/SwipeableConversationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

.field private mDensityScale:F

.field private final mDraftingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mInitialPosX:F

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mLastY:F

.field private mPagingTouchSlop:F

.field private mPrevView:Lcom/kingsoft/mail/ui/LeaveBehindItem;

.field private final mSwipeDirection:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeHelper;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/kingsoft/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    .line 74
    const v0, 0x3ecccccd

    sput v0, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_TEXT_FADE_START:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/kingsoft/mail/ui/SwipeHelper$Callback;FF)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipeDirection"    # I
    .param p3, "callback"    # Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
    .param p4, "densityScale"    # F
    .param p5, "pagingTouchSlop"    # F

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    .line 105
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    .line 112
    iput-object p3, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    .line 113
    iput p2, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 115
    iput p4, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDensityScale:F

    .line 116
    iput p5, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    .line 122
    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 123
    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 124
    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 125
    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 126
    const v1, 0x7f0d00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->MIN_SWIPE:F

    .line 128
    :cond_0
    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    :cond_1
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->SWIPE_BLANK:F

    .line 132
    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_MARK_READ_DIMEN:F

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/SwipeHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/ui/SwipeHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F

    return p1
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_MARK_READ_DIMEN:F

    return v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/ui/SwipeHelper;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeableItemView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/ui/SwipeHelper;Lcom/kingsoft/mail/ui/SwipeableItemView;)Lcom/kingsoft/mail/ui/SwipeableItemView;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;
    .param p1, "x1"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/SwipeHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/SwipeHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->dismissUnderLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$802(Lcom/kingsoft/mail/ui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    return-object v0
.end method

.method private createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F
    .param p3, "duration"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 157
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/kingsoft/mail/ui/SwipeHelper;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 150
    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 150
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string/jumbo v1, "translationY"

    goto :goto_0
.end method

.method private static determineDuration(Landroid/view/View;FF)I
    .locals 3
    .param p0, "animView"    # Landroid/view/View;
    .param p1, "newPos"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 396
    sget v0, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 397
    .local v0, "duration":I
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 405
    :goto_0
    return v0

    .line 403
    :cond_0
    sget v0, Lcom/kingsoft/mail/ui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method

.method private determinePos(Landroid/view/View;F)F
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v2, 0x0

    .line 410
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    neg-float v0, v1

    .line 417
    .local v0, "newPos":F
    :goto_0
    return v0

    .line 415
    .end local v0    # "newPos":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    .restart local v0    # "newPos":F
    goto :goto_0
.end method

.method private dismissChild(Lcom/kingsoft/mail/ui/SwipeableItemView;F)V
    .locals 5
    .param p1, "view"    # Lcom/kingsoft/mail/ui/SwipeableItemView;
    .param p2, "posX"    # F

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, "animView":Landroid/view/View;
    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->enableHardwareLayer(Landroid/view/View;)V

    .line 347
    cmpg-float v3, p2, v2

    if-gez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0122

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    neg-float v2, v3

    .line 348
    .local v2, "newPos":F
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 349
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/kingsoft/mail/ui/SwipeHelper$1;

    invoke-direct {v3, p0, p2, v1, v2}, Lcom/kingsoft/mail/ui/SwipeHelper$1;-><init>(Lcom/kingsoft/mail/ui/SwipeHelper;FLandroid/view/View;F)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 392
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    .line 393
    return-void
.end method

.method private dismissUnderLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    return-void
.end method

.method private draftBgColor(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "conView"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    const/16 v2, 0x8

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 643
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0c016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const v0, 0x7f10014f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 646
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    const v0, 0x7f10014e

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 649
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f800000

    .line 181
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 182
    .local v4, "viewSize":F
    const v5, 0x3f333333

    mul-float v0, v5, v4

    .line 183
    .local v0, "fadeSize":F
    const/high16 v3, 0x3f800000

    .line 184
    .local v3, "result":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 185
    .local v2, "pos":F
    sget v5, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v4

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    .line 186
    sget v5, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v4

    sub-float v5, v2, v5

    div-float/2addr v5, v0

    sub-float v3, v6, v5

    .line 190
    :cond_0
    :goto_0
    const/high16 v1, 0x3f000000

    .line 191
    .local v1, "minAlpha":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    return v5

    .line 187
    .end local v1    # "minAlpha":F
    :cond_1
    sget v5, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v5, v6, v5

    mul-float/2addr v5, v4

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    .line 188
    sget v5, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v2

    div-float/2addr v5, v0

    add-float v3, v6, v5

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 163
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTextAlphaForOffset(Landroid/view/View;)F
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 195
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 196
    .local v3, "viewSize":F
    sget v4, Lcom/kingsoft/mail/ui/SwipeHelper;->ALPHA_TEXT_FADE_START:F

    mul-float v0, v4, v3

    .line 197
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000

    .line 198
    .local v2, "result":F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 199
    .local v1, "pos":F
    cmpl-float v4, v1, v5

    if-ltz v4, :cond_1

    .line 200
    div-float v4, v1, v0

    sub-float v2, v6, v4

    .line 204
    :cond_0
    :goto_0
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 201
    :cond_1
    cmpg-float v4, v1, v5

    if-gez v4, :cond_0

    .line 202
    div-float v4, v1, v0

    add-float v2, v6, v4

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 145
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 212
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 220
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 222
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 223
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 168
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimatingViews()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/mail/browse/SwipeableConversationItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    return-object v0
.end method

.method public getConversationID()J
    .locals 2

    .prologue
    .line 705
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J

    return-wide v0
.end method

.method public getCurrView()Lcom/kingsoft/mail/ui/SwipeableItemView;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    return-object v0
.end method

.method public getDraftingItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    return-object v0
.end method

.method public isAnimateDone()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    return v0
.end method

.method public isDraftOpenClickAgain()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    iget-boolean v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    :cond_0
    :goto_1
    return v8

    .line 240
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mLastY:F

    .line 241
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    .line 242
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    invoke-interface {v10, p1}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 243
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 247
    instance-of v10, v7, Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sget v11, Lcom/kingsoft/mail/ui/SwipeHelper;->MIN_SWIPE:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 251
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eqz v10, :cond_6

    .line 252
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eq v10, v7, :cond_5

    .line 253
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J

    .line 254
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 255
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 256
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 257
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    .line 267
    :cond_1
    :goto_2
    check-cast v7, Lcom/kingsoft/mail/ui/SwipeableItemView;

    .end local v7    # "view":Landroid/view/View;
    iput-object v7, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 272
    :cond_2
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SwipeableItemView;->canChildBeDismissed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 273
    iput-object v12, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 274
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 275
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 277
    :cond_3
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 278
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eqz v8, :cond_4

    .line 279
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 280
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v8, v9}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 281
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    .line 284
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F

    .line 286
    :cond_4
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->cancelDismissCounter()V

    goto/16 :goto_0

    .line 259
    .restart local v7    # "view":Landroid/view/View;
    :cond_5
    iput-boolean v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    .line 260
    iget-boolean v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    if-nez v9, :cond_1

    goto/16 :goto_1

    .line 265
    :cond_6
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    goto :goto_2

    .line 290
    .end local v7    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    if-eqz v10, :cond_8

    .line 292
    iget v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mLastY:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    iget-boolean v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    if-nez v10, :cond_7

    iget-boolean v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    if-nez v10, :cond_7

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 294
    .local v2, "currY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 295
    .local v1, "currX":F
    iget v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 296
    .local v5, "deltaY":F
    iget v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 297
    .local v4, "deltaX":F
    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v10}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getMinAllowScrollDistance()F

    move-result v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_7

    const v10, 0x3f99999a

    mul-float/2addr v10, v4

    cmpl-float v10, v5, v10

    if-lez v10, :cond_7

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mLastY:F

    .line 300
    iput-object v12, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 301
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 302
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 303
    iget-object v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->onScroll()V

    .line 304
    sput-boolean v9, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    move v8, v9

    .line 305
    goto/16 :goto_1

    .line 308
    .end local v1    # "currX":F
    .end local v2    # "currY":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    :cond_7
    iget-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 310
    .local v6, "pos":F
    iget v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    sub-float v3, v6, v9

    .line 311
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 312
    iget-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    invoke-interface {v10}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 313
    iget-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->getLastSwipedItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v9

    iput-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mPrevView:Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 314
    iput-boolean v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosY:F

    .line 319
    .end local v3    # "delta":F
    .end local v6    # "pos":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 324
    :pswitch_2
    iput-boolean v9, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    .line 325
    iput-object v12, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 326
    const/high16 v8, -0x40800000

    iput v8, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDragging:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 477
    const/16 v23, 0x0

    .line 636
    :goto_0
    return v23

    .line 479
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 481
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 636
    :cond_1
    :goto_1
    const/16 v23, 0x1

    goto :goto_0

    .line 484
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 487
    const/16 v23, 0x0

    goto :goto_0

    .line 490
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/kingsoft/mail/ui/SwipeableItemView;->canChildBeDismissed()Z

    move-result v23

    if-nez v23, :cond_3

    .line 491
    const/16 v23, 0x1

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 495
    .local v8, "deltaX":F
    sget v17, Lcom/kingsoft/mail/ui/SwipeHelper;->MIN_SWIPE:F

    .line 497
    .local v17, "minDistance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialTouchPosX:F

    move/from16 v23, v0

    const/high16 v24, 0x42600000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDensityScale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_4

    .line 498
    const/16 v23, 0x1

    goto :goto_0

    .line 504
    :cond_4
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpg-float v23, v23, v17

    if-gez v23, :cond_5

    .line 507
    const/16 v23, 0x1

    goto :goto_0

    .line 510
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    move-object/from16 v23, v0

    check-cast v23, Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/mail/ui/SwipeableListView;->getCurrentFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v11

    .line 511
    .local v11, "folder":Lcom/kingsoft/mail/providers/Folder;
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_6
    const/4 v12, 0x1

    .line 513
    .local v12, "folderType":Z
    :goto_2
    if-eqz v12, :cond_8

    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_8

    .line 514
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 511
    .end local v12    # "folderType":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 517
    .restart local v12    # "folderType":Z
    :cond_8
    const/16 v23, 0x0

    cmpg-float v23, v8, v23

    if-gez v23, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->animateDone:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 518
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 521
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Lcom/kingsoft/mail/browse/ConversationItemView;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v13, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 522
    .local v13, "id":J
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDraftingItems:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mAnimatingViews:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016c

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 528
    .local v22, "view":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTranslationX()F

    move-result v23

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-nez v23, :cond_b

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    check-cast v23, Lcom/kingsoft/mail/browse/ConversationItemView;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->draftBgColor(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/widget/TextView;)V

    .line 531
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTranslationX()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    sget v25, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_MARK_READ_DIMEN:F

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff8000000000000L

    mul-double v25, v25, v27

    cmpl-double v23, v23, v25

    if-lez v23, :cond_c

    .line 532
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b004e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 534
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 535
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_f

    .line 536
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    check-cast v6, Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 537
    .local v6, "civ":Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 539
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016c

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 540
    const/16 v23, 0x0

    sput-boolean v23, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 572
    .end local v6    # "civ":Lcom/kingsoft/mail/browse/ConversationItemView;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;)Z

    move-result v23

    if-nez v23, :cond_e

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v19

    .line 574
    .local v19, "size":F
    const v23, 0x3e19999a

    mul-float v15, v23, v19

    .line 575
    .local v15, "maxScrollDistance":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpl-float v23, v23, v19

    if-ltz v23, :cond_11

    .line 576
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-lez v23, :cond_10

    move v8, v15

    .line 582
    .end local v15    # "maxScrollDistance":F
    .end local v19    # "size":F
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8}, Lcom/kingsoft/mail/ui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 543
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    check-cast v6, Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 544
    .restart local v6    # "civ":Lcom/kingsoft/mail/browse/ConversationItemView;
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    const v24, 0x7f0c016c

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const/16 v23, 0x1

    sput-boolean v23, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    goto/16 :goto_3

    .line 576
    .end local v6    # "civ":Lcom/kingsoft/mail/browse/ConversationItemView;
    .restart local v15    # "maxScrollDistance":F
    .restart local v19    # "size":F
    :cond_10
    neg-float v8, v15

    goto :goto_4

    .line 578
    :cond_11
    div-float v23, v8, v19

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3ff921fb54442d18L

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    mul-float v8, v15, v23

    goto :goto_4

    .line 597
    .end local v8    # "deltaX":F
    .end local v11    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v12    # "folderType":Z
    .end local v13    # "id":J
    .end local v15    # "maxScrollDistance":F
    .end local v17    # "minDistance":F
    .end local v19    # "size":F
    .end local v22    # "view":Landroid/widget/TextView;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 598
    sget v23, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDensityScale:F

    move/from16 v24, v0

    mul-float v16, v23, v24

    .line 599
    .local v16, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    const/16 v24, 0x3e8

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 600
    sget v23, Lcom/kingsoft/mail/ui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDensityScale:F

    move/from16 v24, v0

    mul-float v10, v23, v24

    .line 601
    .local v10, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v21

    .line 602
    .local v21, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v18

    .line 607
    .local v18, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTranslationX()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 608
    .local v20, "translation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    .line 610
    .local v7, "currAnimViewSize":F
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v23, v0

    sget v25, Lcom/kingsoft/mail/ui/SwipeHelper;->MAX_MARK_READ_DIMEN:F

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff8000000000000L

    mul-double v25, v25, v27

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_13

    const/4 v4, 0x1

    .line 614
    .local v4, "childSwipedFarEnough":Z
    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpl-float v23, v23, v10

    if-lez v23, :cond_16

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v24

    cmpl-float v23, v23, v24

    if-lez v23, :cond_16

    const/16 v23, 0x0

    cmpl-float v23, v21, v23

    if-lez v23, :cond_14

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTranslationX()F

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_15

    const/16 v24, 0x1

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fa999999999999aL

    float-to-double v0, v7

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    cmpl-double v23, v23, v25

    if-lez v23, :cond_16

    const/4 v5, 0x1

    .line 624
    .local v5, "childSwipedFastEnough":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->canChildBeDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;)Z

    move-result v23

    if-eqz v23, :cond_17

    if-nez v5, :cond_12

    if-eqz v4, :cond_17

    :cond_12
    const/4 v9, 0x1

    .line 627
    .local v9, "dismissChild":Z
    :goto_9
    if-eqz v9, :cond_18

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTranslationX()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->dismissChild(Lcom/kingsoft/mail/ui/SwipeableItemView;F)V

    goto/16 :goto_1

    .line 610
    .end local v4    # "childSwipedFarEnough":Z
    .end local v5    # "childSwipedFastEnough":Z
    .end local v9    # "dismissChild":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 614
    .restart local v4    # "childSwipedFarEnough":Z
    :cond_14
    const/16 v23, 0x0

    goto :goto_6

    :cond_15
    const/16 v24, 0x0

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    goto :goto_8

    .line 624
    .restart local v5    # "childSwipedFastEnough":Z
    :cond_17
    const/4 v9, 0x0

    goto :goto_9

    .line 630
    .restart local v9    # "dismissChild":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 631
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    goto/16 :goto_1

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setConversationID(J)V
    .locals 0
    .param p1, "conversationID"    # J

    .prologue
    .line 709
    iput-wide p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J

    .line 710
    return-void
.end method

.method public setCurrView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 1
    .param p1, "mCurrView"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 682
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;

    .line 683
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mDensityScale:F

    .line 138
    return-void
.end method

.method public setDraftOpenClickAgain(Z)V
    .locals 0
    .param p1, "opend"    # Z

    .prologue
    .line 690
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpenClickAgain:Z

    .line 691
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->mPagingTouchSlop:F

    .line 142
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0
    .param p1, "isRefreshing"    # Z

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper;->isRefreshing:Z

    .line 702
    return-void
.end method

.method public snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 5
    .param p1, "view"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 430
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, "animView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/kingsoft/mail/ui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 433
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget v2, Lcom/kingsoft/mail/ui/SwipeHelper;->SNAP_ANIM_LEN:I

    .line 434
    .local v2, "duration":I
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    new-instance v3, Lcom/kingsoft/mail/ui/SwipeHelper$2;

    invoke-direct {v3, p0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper$2;-><init>(Lcom/kingsoft/mail/ui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 467
    return-void
.end method

.method public snapChildWithNoAnimate(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 2
    .param p1, "view"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 421
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/SwipeableItemView;->getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->getView()Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "animView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->dismissUnderLayout(Landroid/view/View;)V

    .line 425
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 426
    return-void
.end method
