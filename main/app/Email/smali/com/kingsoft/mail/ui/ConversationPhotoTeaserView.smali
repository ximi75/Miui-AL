.class public Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;
.super Landroid/widget/FrameLayout;
.source "ConversationPhotoTeaserView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
.implements Lcom/kingsoft/mail/ui/SwipeableItemView;


# static fields
.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mListCollapsible:Z

.field private final mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mNeedLayout:Z

.field private mShown:Z

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mTextTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "resources":Landroid/content/res/Resources;
    const-class v2, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    monitor-enter v2

    .line 62
    :try_start_0
    sget v1, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    if-nez v1, :cond_0

    .line 63
    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    .line 64
    const v1, 0x7f0e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sShrinkAnimationDuration:I

    .line 67
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    .line 73
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTabletDevice:Z

    .line 74
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mListCollapsible:Z

    .line 75
    return-void

    .line 67
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mNeedLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;

    .prologue
    .line 26
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTextTop:I

    return v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTextTop:I

    return p1
.end method

.method private setDismissed()V
    .locals 6

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setConversationPhotoTeaserAlreadyShown()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    .line 200
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "list_swipe"

    const-string/jumbo v2, "photo_teaser"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 202
    :cond_0
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->getHeight()I

    move-result v2

    .line 225
    .local v2, "start":I
    const/4 v0, 0x0

    .line 226
    .local v0, "end":I
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 227
    const-string/jumbo v3, "animatedHeight"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v6

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 229
    .local v1, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    sget v3, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 241
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public dismiss(Z)V
    .locals 0
    .param p1, "moveLeft"    # Z

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->setDismissed()V

    .line 193
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->startDestroyAnimation()V

    .line 194
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->sScrollSlop:I

    int-to-float v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->shouldShowSenderImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->isConversationPhotoTeaserAlreadyShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    .line 136
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mShown:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->dismiss(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 177
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mSwipeableContent:Landroid/view/View;

    .line 81
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$1;-><init>(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0c0236

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    .line 89
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 93
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 95
    const v2, 0x7f0c0191

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, "text":Landroid/widget/TextView;
    const v2, 0x7f0c00a4

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, "arrow":Landroid/widget/ImageView;
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView$2;-><init>(Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 268
    :goto_1
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mTeaserRightEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 124
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    return-void
.end method

.method public setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 147
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mAnimatedHeight:I

    .line 251
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->requestLayout()V

    .line 252
    return-void
.end method

.method protected shouldShowSenderImage()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationPhotoTeaserView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v0

    return v0
.end method
