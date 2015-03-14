.class public Lcom/kingsoft/mail/ui/SwipeableListView;
.super Landroid/widget/ListView;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/kingsoft/mail/ui/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/SwipeableListView$3;,
        Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;,
        Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;,
        Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;,
        Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;,
        Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;,
        Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;,
        Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_PARALLAX_MULTIPLIER_ALTERNATIVE:F = 2.0f

.field public static final ATTACHMENT_PARALLAX_MULTIPLIER_NORMAL:F = 1.5f

.field public static final ENABLE_ATTACHMENT_DECODE_AGGREGATOR:Z = true

.field public static final ENABLE_ATTACHMENT_PARALLAX:Z = true

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final SCROLL_PAUSE_ENABLE:Z = true

.field public static refresh:Z


# instance fields
.field private final RATIO:I

.field public currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

.field private firstItemIndex:I

.field private format:Ljava/text/SimpleDateFormat;

.field private headContentHeight:I

.field private headerProgressBar:Landroid/widget/ProgressBar;

.field private headerPullArrowImageView:Landroid/widget/ImageView;

.field private headerPullTipsView:Landroid/widget/TextView;

.field public headerView:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private isAutoRefreshAnimationRunning:Z

.field private isManualRefresh:Z

.field private isPullBack:Z

.field private isRecord:Z

.field private isRefreshable:Z

.field private lastUpdatedTimeView:Landroid/widget/TextView;

.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAutoRefreshListPosition:I

.field private mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private mEnablePullRefresh:Z

.field private mEnableSwipe:Z

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mHeaderViewDefaultHeight:I

.field private mOnTouchEventDispatchListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;

.field public mRefreshflag:Z

.field private mScrolling:Z

.field private mSlideAnimationDuration:I

.field private mSwipeAction:I

.field private final mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

.field private mSwipeListener:Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;

.field private mSwipedListener:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;

.field private mSwipeflag:Z

.field private minPullY:I

.field moveY:I

.field private pullRefreshHeight:I

.field private refreshListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;

.field private reverseRotateAnimation:Landroid/view/animation/Animation;

.field private rotateAnimation:Landroid/view/animation/Animation;

.field private startY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnableSwipe:Z

    .line 71
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    .line 72
    iput v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mAutoRefreshListPosition:I

    .line 75
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    .line 127
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 129
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRefreshable:Z

    .line 137
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    .line 138
    iput v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->firstItemIndex:I

    .line 143
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->minPullY:I

    .line 147
    const/16 v0, 0x64

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    .line 151
    iput v7, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->RATIO:I

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->format:Ljava/text/SimpleDateFormat;

    .line 155
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeflag:Z

    .line 156
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mRefreshflag:Z

    .line 164
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnablePullRefresh:Z

    .line 178
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 180
    .local v4, "densityScale":F
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    .line 181
    .local v5, "pagingTouchSlop":F
    new-instance v0, Lcom/kingsoft/mail/ui/SwipeHelper;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/SwipeHelper;-><init>(Landroid/content/Context;ILcom/kingsoft/mail/ui/SwipeHelper$Callback;FF)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    .line 183
    const v0, 0x7f05000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->rotateAnimation:Landroid/view/animation/Animation;

    .line 184
    const v0, 0x7f050010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->reverseRotateAnimation:Landroid/view/animation/Animation;

    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->reverseRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 187
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->inflater:Landroid/view/LayoutInflater;

    .line 188
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->initHeaderView()V

    .line 189
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOverScrollMode(I)V

    .line 190
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemView;->ensurePhotoManager()V

    .line 191
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/ui/SwipeableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mAutoRefreshListPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/SwipeableListView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/SwipeableListView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->doActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/SwipeableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;

    .prologue
    .line 68
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/ui/SwipeableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/SwipeableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;

    .prologue
    .line 68
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mHeaderViewDefaultHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/SwipeableListView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeableListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->doActionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private doActionDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->firstItemIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->startY:I

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    .line 462
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private doActionMove(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v0, v4

    .line 503
    .local v0, "currentY":I
    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->firstItemIndex:I

    if-nez v4, :cond_0

    .line 504
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    .line 505
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->startY:I

    .line 507
    :cond_0
    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->startY:I

    sub-int v1, v0, v4

    .line 508
    .local v1, "offset":I
    div-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->moveY:I

    .line 513
    .end local v0    # "currentY":I
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v5, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v5, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->LOADING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    if-nez v4, :cond_4

    .line 514
    :cond_1
    if-lez v1, :cond_8

    .line 516
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v5, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v4, v5, :cond_6

    .line 517
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSelection(I)V

    .line 518
    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->moveY:I

    iget v5, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    if-ge v4, v5, :cond_2

    .line 519
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isPullBack:Z

    .line 521
    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 537
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v4, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v4, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v3, v4, :cond_4

    .line 538
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->moveY:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 547
    :cond_4
    :goto_2
    return v2

    .line 510
    .end local v1    # "offset":I
    :cond_5
    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mAutoRefreshListPosition:I

    neg-int v1, v4

    .restart local v1    # "offset":I
    iput v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->moveY:I

    .line 511
    iput v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    goto :goto_0

    .line 523
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v4, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v3, v4, :cond_7

    .line 524
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSelection(I)V

    .line 525
    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->moveY:I

    iget v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    if-le v3, v4, :cond_2

    .line 526
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isPullBack:Z

    .line 527
    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    goto :goto_1

    .line 530
    :cond_7
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v4, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v3, v4, :cond_2

    .line 531
    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->minPullY:I

    if-le v1, v3, :cond_2

    .line 532
    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    goto :goto_1

    :cond_8
    move v2, v3

    .line 543
    goto :goto_2
.end method

.method private doActionUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "offset":I
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 469
    .local v0, "currentY":I
    iget v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->startY:I

    sub-int v1, v0, v2

    .line 471
    .end local v0    # "currentY":I
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->LOADING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v2, v3, :cond_2

    .line 472
    if-gtz v1, :cond_1

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    if-nez v2, :cond_5

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v2, v3, :cond_3

    .line 474
    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 493
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRecord:Z

    .line 494
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isPullBack:Z

    .line 496
    return v4

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v2, v3, :cond_2

    .line 477
    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 479
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getConnectManager()Lcom/kingsoft/email/EmailConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_4

    .line 480
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100283

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 481
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->onRefreshComplete()V

    goto :goto_0

    .line 483
    :cond_4
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->onRefresh()V

    goto :goto_0

    .line 487
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->PULL_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v3, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v2, v3, :cond_2

    .line 488
    :cond_6
    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    goto :goto_0
.end method

.method private getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .locals 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 870
    .local v1, "ha":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 871
    .local v0, "aa":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    return-object v0
.end method

.method private initHeaderView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    .line 196
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    const v1, 0x7f0c01ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerProgressBar:Landroid/widget/ProgressBar;

    .line 197
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    const v1, 0x7f0c01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    const v1, 0x7f0c01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setLastUpdateTime(J)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->measureView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mHeaderViewDefaultHeight:I

    .line 208
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSlideAnimationDuration:I

    .line 209
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 210
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->addHeaderView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 213
    return-void

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setLastUpdateTime(J)V

    goto :goto_0
.end method

.method private listTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 436
    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mHeaderViewDefaultHeight:I

    iput v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    .line 437
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    if-nez v1, :cond_0

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 451
    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 442
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->doActionDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 445
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->doActionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 448
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->doActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 391
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 392
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 395
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 396
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 399
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 403
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 404
    return-void

    .line 401
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->refreshListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->REFRESHING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 431
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->refreshListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;->onRefresh()V

    .line 433
    :cond_0
    return-void
.end method

.method private setLastUpdateTime(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 609
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1003bf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->format:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "lastTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .prologue
    const v0, 0x7f100308

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 284
    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$3;->$SwitchMap$com$kingsoft$mail$ui$SwipeableListView$PullStatus:[I

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 341
    return-void

    .line 286
    :pswitch_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 294
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    const v1, 0x7f100339

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 305
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isPullBack:Z

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 309
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->reverseRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isPullBack:Z

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 321
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    const v1, 0x7f100337

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 326
    :pswitch_3
    new-instance v1, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;

    iget v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I

    rsub-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;-><init>(Lcom/kingsoft/mail/ui/SwipeableListView;I)V

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView$ProgressAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 327
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 330
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;

    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->CANCELLING:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne p1, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    sget-object p1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 333
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->lastUpdatedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    goto/16 :goto_0

    .line 330
    :cond_2
    const v0, 0x7f100338

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public autoRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 231
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isAutoRefreshAnimationRunning:Z

    .line 236
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSelection(I)V

    .line 237
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isManualRefresh:Z

    .line 238
    const/16 v1, 0xa

    iput v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    .line 240
    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 241
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->pullRefreshHeight:I

    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->minPullY:I

    add-int/2addr v2, v3

    neg-int v2, v2

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 242
    .local v0, "autoRefreshPullAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/kingsoft/mail/ui/SwipeableListView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView$1;-><init>(Lcom/kingsoft/mail/ui/SwipeableListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-instance v1, Lcom/kingsoft/mail/ui/SwipeableListView$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView$2;-><init>(Lcom/kingsoft/mail/ui/SwipeableListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSlideAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public canChildBeDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;)Z
    .locals 1
    .param p1, "v"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 675
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/SwipeableItemView;->canChildBeDismissed()Z

    move-result v0

    return v0
.end method

.method public cancelDismissCounter()V
    .locals 1

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 960
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cancelDismissCounter()V

    .line 963
    :cond_0
    return-void
.end method

.method public commitDestructiveActions(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 689
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->commitLeaveBehindItems(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method public delete(Lcom/kingsoft/mail/browse/ConversationItemView;)V
    .locals 3
    .param p1, "target"    # Lcom/kingsoft/mail/browse/ConversationItemView;

    .prologue
    .line 714
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v1

    .line 715
    .local v1, "convList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 716
    .local v0, "cc":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 728
    return-void
.end method

.method public destroyItems(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)Z
    .locals 5
    .param p2, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "convs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v1, 0x0

    .line 826
    if-nez p1, :cond_0

    .line 827
    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "SwipeableListView.destroyItems: null conversations."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 836
    :goto_0
    return v1

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 831
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-nez v0, :cond_1

    .line 832
    sget-object v2, Lcom/kingsoft/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "SwipeableListView.destroyItems: Cannot destroy: adapter is null."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->swipeDelete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    .line 836
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dismissChild(Lcom/kingsoft/mail/browse/ConversationItemView;)V
    .locals 19
    .param p1, "target"    # Lcom/kingsoft/mail/browse/ConversationItemView;

    .prologue
    .line 732
    new-instance v2, Lcom/kingsoft/mail/ui/ToastBarOperation;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/ToastBarOperation;-><init>(IIIZLcom/kingsoft/mail/providers/Folder;)V

    .line 734
    .local v2, "undoOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v12

    .line 735
    .local v12, "conv":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/kingsoft/mail/ui/SwipeableListView;->findConversation(Lcom/kingsoft/mail/browse/ConversationItemView;Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v4

    iput v4, v3, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v9

    .line 737
    .local v9, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-nez v9, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget v3, v12, Lcom/kingsoft/mail/providers/Conversation;->position:I

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getHeight()I

    move-result v4

    invoke-virtual {v9, v12, v2, v3, v4}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setupLeaveBehind(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ToastBarOperation;II)Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 741
    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 742
    .local v11, "cc":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-static {v12}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v13

    .line 746
    .local v13, "convList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v3

    const-string/jumbo v4, "list_swipe"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/kingsoft/mail/analytics/Tracker;->sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V

    .line 748
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f0c0271

    if-ne v3, v4, :cond_4

    .line 749
    new-instance v14, Lcom/kingsoft/mail/ui/FolderOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v14, v3, v4}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    .line 750
    .local v14, "folderOp":Lcom/kingsoft/mail/ui/FolderOperation;
    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v17

    .line 752
    .local v17, "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v3, v14, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/FolderList;->copyOf(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v16

    .line 754
    .local v16, "folders":Lcom/kingsoft/mail/providers/FolderList;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/providers/Conversation;->setRawFolders(Lcom/kingsoft/mail/providers/FolderList;)V

    .line 755
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 756
    .local v18, "values":Landroid/content/ContentValues;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v15, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v10, "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    move-object/from16 v0, v18

    invoke-static {v15, v10, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->addFolderUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 761
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->addTargetFolders(Ljava/util/Collection;Landroid/content/ContentValues;)V

    .line 762
    invoke-static {v12}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->mostlyDestructiveUpdate(Ljava/util/Collection;Landroid/content/ContentValues;)I

    .line 768
    .end local v10    # "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v14    # "folderOp":Lcom/kingsoft/mail/ui/FolderOperation;
    .end local v15    # "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v16    # "folders":Lcom/kingsoft/mail/providers/FolderList;
    .end local v17    # "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipedListener:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;

    if-eqz v3, :cond_3

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipedListener:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;

    invoke-interface {v3, v13}, Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;->onListItemSwiped(Ljava/util/Collection;)V

    .line 771
    :cond_3
    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3, v12}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->contains(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3, v12}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->toggle(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 777
    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Conversation;->isMostlyDead()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    goto/16 :goto_0

    .line 763
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f0c0270

    if-ne v3, v4, :cond_5

    .line 764
    invoke-virtual {v11, v13}, Lcom/kingsoft/mail/browse/ConversationCursor;->mostlyArchive(Ljava/util/Collection;)I

    goto :goto_1

    .line 765
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f0c026d

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    const v4, 0x7f0c016d

    if-ne v3, v4, :cond_2

    .line 766
    :cond_6
    invoke-virtual {v11, v13}, Lcom/kingsoft/mail/browse/ConversationCursor;->mostlyDelete(Ljava/util/Collection;)I

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1037
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1038
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mOnTouchEventDispatchListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mOnTouchEventDispatchListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;

    invoke-interface {v1, p1}, Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;->onTouchEventDispatch(Landroid/view/MotionEvent;)V

    .line 1041
    :cond_0
    return v0
.end method

.method public enableSwipe(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnableSwipe:Z

    .line 576
    return-void
.end method

.method public findConversation(Lcom/kingsoft/mail/browse/ConversationItemView;Lcom/kingsoft/mail/providers/Conversation;)I
    .locals 12
    .param p1, "view"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 840
    const/4 v8, -0x1

    .line 841
    .local v8, "position":I
    iget-wide v1, p2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 843
    .local v1, "convId":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 848
    :goto_0
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 852
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 853
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-eqz v9, :cond_1

    .line 855
    check-cast v0, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->getSwipeableItemView()Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v4

    .line 857
    .local v4, "foundConv":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v5, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 858
    .local v5, "foundId":J
    cmp-long v9, v5, v1

    if-nez v9, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v9

    add-int v8, v7, v9

    .line 865
    .end local v4    # "foundConv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v5    # "foundId":J
    .end local v7    # "i":I
    :cond_0
    return v8

    .line 844
    :catch_0
    move-exception v3

    .line 845
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, -0x1

    .line 846
    sget-object v9, Lcom/kingsoft/mail/ui/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exception finding position; using alternate strategy"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v3, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 852
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

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
    .line 1004
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildCount()I

    move-result v1

    .line 655
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 656
    .local v3, "touchY":I
    const/4 v0, 0x0

    .line 658
    .local v0, "childIdx":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 659
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 660
    .local v2, "slidingChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 664
    instance-of v4, v2, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    if-eqz v4, :cond_2

    .line 665
    check-cast v2, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;

    .end local v2    # "slidingChild":Landroid/view/View;
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/SwipeableConversationItemView;->getSwipeableItemView()Lcom/kingsoft/mail/browse/ConversationItemView;

    move-result-object v2

    .line 670
    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getConversationID()J
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->getConversationID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

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
    .line 1008
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getLastSwipedItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;
    .locals 2

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 968
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v1

    .line 971
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    return-object v0
.end method

.method public getSwipeAction()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    return v0
.end method

.method public getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->getCurrView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    return-object v0
.end method

.method public isAnimateDone()Z
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->isAnimateDone()Z

    move-result v0

    return v0
.end method

.method public isDraftOpenClickAgain()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->isDraftOpenClickAgain()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mScrolling:Z

    return v0
.end method

.method public markRead(Lcom/kingsoft/mail/browse/ConversationItemView;Z)V
    .locals 3
    .param p1, "target"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p2, "read"    # Z

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationItemView;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v1

    .line 697
    .local v1, "convList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 698
    .local v0, "cc":Lcom/kingsoft/mail/browse/ConversationCursor;
    const-string/jumbo v2, "read"

    invoke-virtual {v0, v1, v2, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I

    .line 710
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 801
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->cancelDismissCounter()V

    .line 803
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeflag:Z

    .line 807
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeListener:Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeListener:Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;->onBeginSwipe()V

    .line 810
    :cond_0
    return-void
.end method

.method public onChildDismissed(Lcom/kingsoft/mail/ui/SwipeableItemView;Z)V
    .locals 0
    .param p1, "v"    # Lcom/kingsoft/mail/ui/SwipeableItemView;
    .param p2, "moveLeft"    # Z

    .prologue
    .line 680
    if-eqz p1, :cond_0

    .line 681
    invoke-interface {p1, p2}, Lcom/kingsoft/mail/ui/SwipeableItemView;->dismiss(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 555
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->setDensityScale(F)V

    .line 556
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 557
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 558
    return-void
.end method

.method public onDragCancelled(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 1
    .param p1, "v"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 815
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->startDismissCounter()V

    .line 817
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cancelFadeOutLastLeaveBehindItemText()V

    .line 819
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 562
    const-string/jumbo v0, "MailBlankFragment"

    const-string/jumbo v1, "START CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 565
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 566
    const-string/jumbo v0, "MailBlankFragment"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v2, "FINISH CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 569
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnableSwipe:Z

    if-nez v0, :cond_1

    .line 624
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 626
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->DONE:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    .line 418
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->updateHeaderViewByStatus(Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;)V

    .line 419
    return-void
.end method

.method public onScroll()V
    .locals 2

    .prologue
    .line 896
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 898
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    .line 899
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 900
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 901
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 914
    iput p2, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->firstItemIndex:I

    .line 916
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildCount()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 917
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 918
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 919
    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 916
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v4, 0x0

    .line 928
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mScrolling:Z

    .line 930
    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mScrolling:Z

    if-eqz v3, :cond_0

    .line 931
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeflag:Z

    .line 934
    :cond_0
    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mScrolling:Z

    if-nez v3, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 936
    .local v2, "c":Landroid/content/Context;
    instance-of v3, v2, Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 937
    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 938
    .local v0, "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    .line 945
    .end local v0    # "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    .end local v2    # "c":Landroid/content/Context;
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    .line 946
    .local v1, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v1, :cond_2

    .line 947
    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onScrollStateChanged(I)V

    .line 949
    :cond_2
    invoke-static {p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->setScrollStateChanged(I)V

    .line 951
    return-void

    .end local v1    # "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    :cond_3
    move v3, v4

    .line 928
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "flag":Z
    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->firstItemIndex:I

    if-lez v3, :cond_5

    .line 634
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOverScrollMode(I)V

    .line 638
    :goto_0
    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeflag:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mRefreshflag:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnablePullRefresh:Z

    if-eqz v3, :cond_0

    .line 639
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->listTouch(Landroid/view/MotionEvent;)Z

    .line 641
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 642
    :cond_1
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeflag:Z

    .line 644
    :cond_2
    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnableSwipe:Z

    if-eqz v3, :cond_6

    .line 645
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 647
    :cond_4
    :goto_1
    return v1

    .line 636
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOverScrollMode(I)V

    goto :goto_0

    .line 647
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v4, 0x1

    .line 877
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v1

    .line 878
    .local v1, "previousPosition":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    .line 881
    .local v2, "selectionSetEmpty":Z
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 885
    .local v0, "handled":Z
    if-nez v2, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 886
    invoke-virtual {p0, v1, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    .line 890
    :cond_0
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 891
    return v0
.end method

.method public setConversationID(J)V
    .locals 1
    .param p1, "conversationID"    # J

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/ui/SwipeHelper;->setConversationID(J)V

    .line 1021
    return-void
.end method

.method public setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 596
    return-void
.end method

.method public setCurrentFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 600
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Folder;->lastSyncTimestamp:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setLastUpdateTime(J)V

    .line 601
    return-void

    .line 600
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setDraftOpenClickAgain(Z)V
    .locals 1
    .param p1, "opend"    # Z

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->setDraftOpenClickAgain(Z)V

    .line 1001
    return-void
.end method

.method public setEnablePullRefresh(Z)V
    .locals 0
    .param p1, "mEnablePullRefresh"    # Z

    .prologue
    .line 1053
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mEnablePullRefresh:Z

    .line 1054
    return-void
.end method

.method public setOnRefreshListener(Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;)V
    .locals 1
    .param p1, "refreshListener"    # Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->refreshListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnRefreshListener;

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->isRefreshable:Z

    .line 423
    return-void
.end method

.method public setOnTouchEventDispatchListener(Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mOnTouchEventDispatchListener:Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;

    .line 1050
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1
    .param p1, "isRefreshing"    # Z

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->setRefreshing(Z)V

    .line 1013
    return-void
.end method

.method public setSelectionSet(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mConvSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 592
    return-void
.end method

.method public setSwipeAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 579
    iput p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeAction:I

    .line 580
    return-void
.end method

.method public setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 1
    .param p1, "mCurrView"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->setCurrView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 993
    :cond_1
    return-void
.end method

.method public setSwipeListener(Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;

    .prologue
    .line 975
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeListener:Lcom/kingsoft/mail/ui/SwipeableListView$SwipeListener;

    .line 976
    return-void
.end method

.method public setSwipedListener(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipedListener:Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;

    .line 584
    return-void
.end method

.method public snapChild(Lcom/kingsoft/mail/browse/ConversationItemView;)V
    .locals 1
    .param p1, "target"    # Lcom/kingsoft/mail/browse/ConversationItemView;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 789
    :cond_0
    return-void
.end method

.method public snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 1
    .param p1, "view"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 1030
    if-eqz p1, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 1033
    :cond_0
    return-void
.end method

.method public snapChildWithNoAnimate(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
    .locals 1
    .param p1, "view"    # Lcom/kingsoft/mail/ui/SwipeableItemView;

    .prologue
    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChildWithNoAnimate(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 1027
    :cond_0
    return-void
.end method

.method public snapCurrentView()V
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView;->mSwipeHelper:Lcom/kingsoft/mail/ui/SwipeHelper;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 795
    :cond_0
    return-void
.end method
