.class public Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;
.super Landroid/widget/FrameLayout;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
.implements Lcom/kingsoft/mail/ui/SwipeableItemView;


# static fields
.field private static final LOADER_FOLDER_LIST:I = 0x44c

.field private static sScrollSlop:I

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private final mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFolderSelector:Lcom/kingsoft/mail/ui/FolderSelector;

.field private final mListCollapsible:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mOutbox:Lcom/kingsoft/mail/providers/Folder;

.field private mOutboxCount:I

.field private mSwipeableContent:Landroid/view/View;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;

.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 62
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    .line 67
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 152
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$3;-><init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    if-nez v1, :cond_0

    .line 93
    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    .line 94
    const v1, 0x7f0e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sShrinkAnimationDuration:I

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mTabletDevice:Z

    .line 99
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mListCollapsible:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->goToOutbox()V

    return-void
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/providers/Folder;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/kingsoft/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->onOutboxTotalCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    return-object v0
.end method

.method private goToOutbox()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mFolderSelector:Lcom/kingsoft/mail/ui/FolderSelector;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/FolderSelector;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 140
    :cond_0
    return-void
.end method

.method private onOutboxTotalCount(I)V
    .locals 2
    .param p1, "outboxCount"    # I

    .prologue
    .line 186
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    .line 188
    if-lez p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->updateText()V

    .line 194
    :cond_0
    if-nez p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setLastSeenOutboxCount(I)V

    .line 199
    :cond_1
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->getHeight()I

    move-result v2

    .line 302
    .local v2, "start":I
    const/4 v0, 0x0

    .line 303
    .local v0, "end":I
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 304
    const-string/jumbo v3, "animatedHeight"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v6

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 306
    .local v1, "heightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    sget v3, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sShrinkAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    new-instance v3, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$4;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$4;-><init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 331
    return-void
.end method

.method private updateText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutbox:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v5, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 205
    .local v3, "subString":Ljava/lang/String;
    const v5, 0x7f1003be

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "entireString":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    .local v4, "text":Landroid/text/SpannableString;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "index":I
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f11003f

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public bind(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/FolderSelector;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "folderSelector"    # Lcom/kingsoft/mail/ui/FolderSelector;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 104
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/preferences/AccountPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    .line 105
    iput-object p2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mFolderSelector:Lcom/kingsoft/mail/ui/FolderSelector;

    .line 106
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 237
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public dismiss(Z)V
    .locals 2
    .param p1, "moveLeft"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setLastSeenOutboxCount(I)V

    .line 282
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->startDestroyAnimation()V

    .line 283
    return-void
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->sScrollSlop:I

    int-to-float v0, v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mOutboxCount:I

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAccountPreferences:Lcom/kingsoft/mail/preferences/AccountPreferences;

    invoke-virtual {v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getLastSeenOutboxCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f0c01cd

    .line 115
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mSwipeableContent:Landroid/view/View;

    .line 117
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mText:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$1;-><init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0c0193

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$2;-><init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0c0236

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    .line 134
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
    .line 346
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mTabletDevice:Z

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mListCollapsible:Z

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :goto_0
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 358
    :goto_1
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mTeaserRightEdge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    iget v0, p1, Lcom/kingsoft/mail/providers/Folder;->type:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x44c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 150
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    return-void
.end method

.method public setAdapter(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 232
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAnimatedHeight:I

    .line 341
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->requestLayout()V

    .line 342
    return-void
.end method
