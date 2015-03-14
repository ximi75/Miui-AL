.class public Lcom/kingsoft/mail/ui/ConversationLongPressTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationLongPressTipView.java"

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

.field private mShow:Z

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    if-nez v1, :cond_0

    .line 76
    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    .line 77
    const v1, 0x7f0e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sShrinkAnimationDuration:I

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 83
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mTabletDevice:Z

    .line 84
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mListCollapsible:Z

    .line 85
    return-void
.end method

.method private checkWhetherToShow()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->shouldShowSenderImage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->isLongPressToSelectTipAlreadyShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDismissed()V
    .locals 6

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setLongPressToSelectTipAlreadyShown()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 187
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "list_swipe"

    const-string/jumbo v2, "long_press_tip"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 189
    :cond_0
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->getHeight()I

    move-result v2

    .line 212
    .local v2, "start":I
    const/4 v0, 0x0

    .line 213
    .local v0, "end":I
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 214
    const-string/jumbo v3, "animatedHeight"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v6

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    .local v1, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    sget v3, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public dismiss(Z)V
    .locals 0
    .param p1, "moveLeft"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->setDismissed()V

    .line 180
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->startDestroyAnimation()V

    .line 181
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 207
    sget v0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->sScrollSlop:I

    int-to-float v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->checkWhetherToShow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 116
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    return v0
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->dismiss(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 164
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mSwipeableContent:Landroid/view/View;

    .line 91
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationLongPressTipView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView$1;-><init>(Lcom/kingsoft/mail/ui/ConversationLongPressTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0c0236

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 99
    return-void
.end method

.method public onGetView()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 251
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 255
    :goto_1
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mTeaserRightEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->checkWhetherToShow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mShow:Z

    .line 106
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    return-void
.end method

.method public setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 134
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mAnimatedHeight:I

    .line 238
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->requestLayout()V

    .line 239
    return-void
.end method

.method protected shouldShowSenderImage()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationLongPressTipView;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v0

    return v0
.end method
