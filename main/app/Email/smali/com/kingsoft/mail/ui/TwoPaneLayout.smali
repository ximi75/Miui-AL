.class final Lcom/kingsoft/mail/ui/TwoPaneLayout;
.super Landroid/widget/FrameLayout;
.source "TwoPaneLayout.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TwoPaneLayout"

.field public static final MISCELLANEOUS_VIEW_ID:I = 0x7f0c023d

.field private static final SLIDE_DURATION_MS:J = 0x12cL


# instance fields
.field private mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field private mConversationListLeftView:Landroid/view/View;

.field private mConversationListWeight:D

.field private mConversationView:Landroid/view/View;

.field private mCurrentMode:I

.field private mDrawerInitialSetupComplete:Z

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mFolderListWeight:D

.field private mFoldersView:Landroid/view/View;

.field private mIsExpansiveLayout:Z

.field private mIsSearchResult:Z

.field private mListCollapsible:Z

.field private mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

.field private mListCopyWidthOnComplete:Ljava/lang/Integer;

.field private mListener:Lcom/kingsoft/mail/ui/LayoutListener;

.field private mMiscellaneousView:Landroid/view/View;

.field private final mPaneAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPositionedMode:I

.field private mSlideInterpolator:Landroid/animation/TimeInterpolator;

.field private final mTransitionCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    .line 92
    iput v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    .line 107
    new-instance v0, Lcom/kingsoft/mail/ui/TwoPaneLayout$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout$1;-><init>(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mTransitionCompleteRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;-><init>(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPaneAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 139
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->onConfigurationChanged(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/TwoPaneLayout;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->onTransitionComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/TwoPaneLayout;)Lcom/kingsoft/mail/ui/ConversationListCopy;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/TwoPaneLayout;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/TwoPaneLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/TwoPaneLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->useHardwareLayer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/TwoPaneLayout;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->fixupListCopyWidth()V

    return-void
.end method

.method private animatePanes(III)V
    .locals 7
    .param p1, "foldersX"    # I
    .param p2, "listX"    # I
    .param p3, "convX"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 361
    iget v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    if-nez v3, :cond_1

    .line 362
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 363
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    int-to-float v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 364
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 365
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mTransitionCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->post(Ljava/lang/Runnable;)Z

    .line 406
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 377
    .local v0, "useListCopy":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 379
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/ConversationListCopy;->bind(Landroid/view/View;)V

    .line 380
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/ConversationListCopy;->setX(F)V

    .line 382
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v3, v6}, Lcom/kingsoft/mail/ui/ConversationListCopy;->setAlpha(F)V

    .line 383
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 386
    :cond_2
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->useHardwareLayer(Z)V

    .line 388
    iget v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    invoke-static {v3}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 389
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, p3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 394
    :goto_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 397
    :cond_3
    if-eqz v0, :cond_4

    .line 398
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationListCopy;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 400
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPaneAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 404
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    aput-object v2, v3, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    aput-object v2, v3, v1

    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->configureAnimations([Landroid/view/View;)V

    goto/16 :goto_0

    .end local v0    # "useListCopy":Z
    :cond_5
    move v0, v2

    .line 375
    goto/16 :goto_1

    .line 391
    .restart local v0    # "useListCopy":Z
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, p3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method private computeConversationListWidth(I)I
    .locals 4
    .param p1, "totalWidth"    # I

    .prologue
    .line 496
    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 502
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeFolderListWidth(I)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0

    .line 506
    :pswitch_2
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private computeConversationWidth(I)I
    .locals 4
    .param p1, "totalWidth"    # I

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCollapsible:Z

    if-eqz v0, :cond_0

    .line 523
    .end local p1    # "totalWidth":I
    :goto_0
    return p1

    .restart local p1    # "totalWidth":I
    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private computeFolderListWidth(I)I
    .locals 4
    .param p1, "parentWidth"    # I

    .prologue
    const/4 v0, 0x0

    .line 531
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsSearchResult:Z

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFolderListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method private varargs configureAnimations([Landroid/view/View;)V
    .locals 7
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 409
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 410
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mSlideInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 417
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private dispatchConversationListVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 541
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListener:Lcom/kingsoft/mail/ui/LayoutListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListener:Lcom/kingsoft/mail/ui/LayoutListener;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/LayoutListener;->onConversationListVisibilityChanged(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method private dispatchConversationVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 547
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListener:Lcom/kingsoft/mail/ui/LayoutListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListener:Lcom/kingsoft/mail/ui/LayoutListener;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/LayoutListener;->onConversationVisibilityChanged(Z)V

    .line 550
    :cond_0
    return-void
.end method

.method private fixupListCopyWidth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 442
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 444
    :cond_0
    iput-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    .line 451
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string/jumbo v0, "TwoPaneLayout"

    const-string/jumbo v1, "onAnimationEnd of list view, setting copy width to %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    .line 450
    iput-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private getPaneWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "pane"    # Landroid/view/View;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private isDrawerView(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 558
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTransitionComplete()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string/jumbo v0, "TwoPaneLayout"

    const-string/jumbo v2, "IN TPL.onTransitionComplete, activity destroyed->quitting early"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 483
    :goto_0
    return-void

    .line 460
    :cond_0
    iget v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 471
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationVisibilityChanged(Z)V

    .line 472
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationListVisibilityChange(Z)V

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationVisibilityChanged(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationListVisibilityChange(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 476
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationVisibilityChanged(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->dispatchConversationListVisibilityChange(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private positionPanes(I)V
    .locals 13
    .param p1, "width"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, "hasPositions":Z
    const/4 v0, 0x0

    .local v0, "convX":I
    const/4 v5, 0x0

    .local v5, "listX":I
    const/4 v2, 0x0

    .line 289
    .local v2, "foldersX":I
    iget v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    packed-switch v6, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_0

    .line 331
    invoke-direct {p0, v2, v5, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->animatePanes(III)V

    .line 334
    :cond_0
    iget v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    iput v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    .line 335
    return-void

    .line 293
    :pswitch_1
    iget-object v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v1

    .line 295
    .local v1, "foldersW":I
    iget-object v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v4

    .line 297
    .local v4, "listW":I
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCollapsible:Z

    if-eqz v6, :cond_1

    .line 298
    const/4 v0, 0x0

    .line 299
    neg-int v5, v4

    .line 300
    sub-int v2, v5, v1

    .line 306
    :goto_1
    const/4 v3, 0x1

    .line 307
    const-string/jumbo v6, "TwoPaneLayout"

    const-string/jumbo v7, "conversation mode layout, x=%d/%d/%d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 302
    :cond_1
    move v0, v4

    .line 303
    const/4 v5, 0x0

    .line 304
    neg-int v2, v1

    goto :goto_1

    .line 318
    .end local v1    # "foldersW":I
    .end local v4    # "listW":I
    :pswitch_2
    move v0, p1

    .line 319
    iget-object v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v5

    .line 320
    const/4 v2, 0x0

    .line 322
    const/4 v3, 0x1

    .line 323
    const-string/jumbo v6, "TwoPaneLayout"

    const-string/jumbo v7, "conv-list mode layout, x=%d/%d/%d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setPaneWidth(Landroid/view/View;I)V
    .locals 7
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "w"    # I

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 661
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, p2, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    const-string/jumbo v2, "TwoPaneLayout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 669
    const-string/jumbo v1, "folders"

    .line 679
    .local v1, "s":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "TwoPaneLayout"

    const-string/jumbo v3, "TPL: setPaneWidth, w=%spx pane=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 670
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    if-ne p1, v2, :cond_3

    .line 671
    const-string/jumbo v1, "conv-list"

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    .line 672
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    if-ne p1, v2, :cond_4

    .line 673
    const-string/jumbo v1, "conv-view"

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    .line 674
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    if-ne p1, v2, :cond_5

    .line 675
    const-string/jumbo v1, "misc-view"

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    .line 677
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "???:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method private setupPaneWidths(I)V
    .locals 12
    .param p1, "parentWidth"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeFolderListWidth(I)I

    move-result v3

    .line 221
    .local v3, "foldersWidth":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 226
    .local v2, "foldersFragmentWidth":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationWidth(I)I

    move-result v0

    .line 228
    .local v0, "convWidth":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    .line 231
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v5

    if-eq p1, v5, :cond_0

    .line 232
    const-string/jumbo v5, "TwoPaneLayout"

    const-string/jumbo v6, "setting up new TPL, w=%d fw=%d cv=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    .line 236
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getPaneWidth(Landroid/view/View;)I

    move-result v1

    .line 240
    .local v1, "currListWidth":I
    move v4, v1

    .line 241
    .local v4, "listWidth":I
    iget v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    packed-switch v5, :pswitch_data_0

    .line 264
    :cond_1
    :goto_1
    :pswitch_0
    const-string/jumbo v5, "TwoPaneLayout"

    const-string/jumbo v6, "conversation list width change, w=%d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-direct {p0, v5, v4}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    .line 267
    iget v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    iget v6, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 269
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyWidthOnComplete:Ljava/lang/Integer;

    .line 273
    :goto_2
    return-void

    .line 224
    .end local v0    # "convWidth":I
    .end local v1    # "currListWidth":I
    .end local v2    # "foldersFragmentWidth":I
    .end local v4    # "listWidth":I
    :cond_4
    move v2, v3

    .restart local v2    # "foldersFragmentWidth":I
    goto :goto_0

    .line 245
    .restart local v0    # "convWidth":I
    .restart local v1    # "currListWidth":I
    .restart local v4    # "listWidth":I
    :pswitch_1
    iget-boolean v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCollapsible:Z

    if-nez v5, :cond_1

    .line 246
    sub-int v4, p1, v0

    goto :goto_1

    .line 259
    :pswitch_2
    sub-int v4, p1, v3

    .line 260
    goto :goto_1

    .line 271
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-direct {p0, v5, v4}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setPaneWidth(Landroid/view/View;I)V

    goto :goto_2

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private useHardwareLayer(Z)V
    .locals 3
    .param p1, "useHardware"    # Z

    .prologue
    const/4 v2, 0x0

    .line 420
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 421
    .local v0, "layerType":I
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 425
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/mail/ui/ConversationListCopy;->setLayerType(ILandroid/graphics/Paint;)V

    .line 426
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 427
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 428
    if-eqz p1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildLayer()V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildLayer()V

    .line 435
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListCopy;->buildLayer()V

    .line 436
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildLayer()V

    .line 437
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildLayer()V

    .line 439
    :cond_2
    return-void

    .line 420
    .end local v0    # "layerType":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeConversationListWidth()I
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationListWidth(I)I

    move-result v0

    return v0
.end method

.method public computeConversationWidth()I
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationWidth(I)I

    move-result v0

    return v0
.end method

.method public isConversationListCollapsed()Z
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCollapsible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsExpansiveLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerInitialSetupComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpansiveLayout()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsExpansiveLayout:Z

    return v0
.end method

.method public isModeChangePending()Z
    .locals 2

    .prologue
    .line 656
    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    iget v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 149
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCollapsible:Z

    .line 151
    const v4, 0x10c0003

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mSlideInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    const v4, 0x7f0e0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 155
    .local v2, "folderListWeight":I
    const v4, 0x7f0e0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 156
    .local v0, "convListWeight":I
    const v4, 0x7f0e0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 157
    .local v1, "convViewWeight":I
    int-to-double v4, v2

    add-int v6, v2, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFolderListWeight:D

    .line 159
    int-to-double v4, v0

    add-int v6, v0, v1

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListWeight:D

    .line 162
    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsExpansiveLayout:Z

    .line 163
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerInitialSetupComplete:Z

    .line 164
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 170
    const v0, 0x7f0c01ed

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    .line 171
    const v0, 0x7f0c023a

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    .line 172
    const v0, 0x7f0c023c

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ConversationListCopy;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    .line 173
    const v0, 0x7f0c01ce

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    .line 174
    const v0, 0x7f0c023d

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListCopy;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 205
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 206
    const-string/jumbo v0, "MailBlankFragment"

    const-string/jumbo v1, "TPL(%s).onLayout()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    if-nez p1, :cond_0

    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    iget v1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mPositionedMode:I

    if-eq v0, v1, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->positionPanes(I)V

    .line 210
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 198
    const-string/jumbo v0, "MailBlankFragment"

    const-string/jumbo v1, "TPL(%s).onMeasure()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setupPaneWidths(I)V

    .line 200
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 201
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 14
    .param p1, "newMode"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x6

    const/4 v10, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 571
    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    if-nez v7, :cond_0

    .line 572
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationListLeftView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;

    invoke-virtual {v7, v9}, Lcom/kingsoft/mail/ui/ConversationListCopy;->setVisibility(I)V

    .line 577
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 578
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :goto_0
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 587
    .local v2, "foldersParent":Landroid/view/ViewParent;
    iget-boolean v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsExpansiveLayout:Z

    if-eqz v7, :cond_9

    if-eq v2, p0, :cond_9

    .line 588
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eq v2, v7, :cond_2

    .line 589
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid Folders fragment parent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 581
    .end local v2    # "foldersParent":Landroid/view/ViewParent;
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mMiscellaneousView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 592
    .restart local v2    # "foldersParent":Landroid/view/ViewParent;
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v11, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/support/v4/widget/DrawerLayout;->removeView(Landroid/view/View;)V

    .line 593
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {p0, v7, v9}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->addView(Landroid/view/View;I)V

    .line 594
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    const v11, 0x7f0c0239

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    :cond_3
    :goto_1
    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    invoke-static {v7}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 610
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disablePagerUpdates()V

    .line 612
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v13, :cond_5

    .line 613
    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    const/4 v11, 0x4

    if-ne v7, v11, :cond_a

    if-ne p1, v12, :cond_a

    .line 614
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/ui/MailActionBarView;->changeChatSwitcherVisibility(I)V

    .line 619
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v7}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 620
    .local v3, "fragMgr":Landroid/app/FragmentManager;
    const v7, 0x7f0c023b

    invoke-virtual {v3, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    .line 621
    .local v4, "fragment":Landroid/app/Fragment;
    instance-of v7, v4, Lcom/kingsoft/mail/chat/ChatViewFragment;

    if-eqz v7, :cond_8

    move-object v0, v4

    .line 622
    check-cast v0, Lcom/kingsoft/mail/chat/ChatViewFragment;

    .line 623
    .local v0, "chat":Lcom/kingsoft/mail/chat/ChatViewFragment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewFragment;->getChatController()Lcom/kingsoft/mail/chat/ChatViewController;

    move-result-object v1

    .line 624
    .local v1, "controller":Lcom/kingsoft/mail/chat/ChatViewController;
    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    const/16 v11, 0xb

    if-eq v7, v11, :cond_6

    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    if-ne v7, v12, :cond_b

    :cond_6
    if-ne p1, v12, :cond_b

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v13, :cond_b

    move v5, v10

    .line 627
    .local v5, "hide":Z
    :goto_3
    if-eqz v5, :cond_c

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Lcom/kingsoft/mail/chat/ChatViewController;->setBarVisibile(I)V

    .line 628
    if-eqz v5, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v1, v8}, Lcom/kingsoft/mail/chat/ChatViewController;->setRightDividerVisibile(I)V

    .line 629
    if-nez v5, :cond_d

    move v7, v10

    :goto_5
    invoke-virtual {v1, v7}, Lcom/kingsoft/mail/chat/ChatViewController;->enableLongClick(Z)V

    .line 646
    .end local v0    # "chat":Lcom/kingsoft/mail/chat/ChatViewFragment;
    .end local v1    # "controller":Lcom/kingsoft/mail/chat/ChatViewController;
    .end local v5    # "hide":Z
    :cond_8
    iput-boolean v10, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerInitialSetupComplete:Z

    .line 647
    iput p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    .line 648
    const-string/jumbo v7, "TwoPaneLayout"

    const-string/jumbo v8, "onViewModeChanged(%d)"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v8, v10}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 652
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->requestLayout()V

    .line 653
    return-void

    .line 597
    .end local v3    # "fragMgr":Landroid/app/FragmentManager;
    .end local v4    # "fragment":Landroid/app/Fragment;
    :cond_9
    iget-boolean v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsExpansiveLayout:Z

    if-nez v7, :cond_3

    if-ne v2, p0, :cond_3

    .line 598
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->removeView(Landroid/view/View;)V

    .line 599
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v11, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 600
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 602
    .local v6, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const v7, 0x800003

    iput v7, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 603
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    const v11, 0x7f0c0239

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mFoldersView:Landroid/view/View;

    const v11, 0x7f0b006d

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 615
    .end local v6    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_a
    iget v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mCurrentMode:I

    if-ne v7, v12, :cond_5

    const/4 v7, 0x4

    if-ne p1, v7, :cond_5

    .line 616
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v7, v9}, Lcom/kingsoft/mail/ui/MailActionBarView;->changeChatSwitcherVisibility(I)V

    goto/16 :goto_2

    .restart local v0    # "chat":Lcom/kingsoft/mail/chat/ChatViewFragment;
    .restart local v1    # "controller":Lcom/kingsoft/mail/chat/ChatViewController;
    .restart local v3    # "fragMgr":Landroid/app/FragmentManager;
    .restart local v4    # "fragment":Landroid/app/Fragment;
    :cond_b
    move v5, v9

    .line 624
    goto :goto_3

    .restart local v5    # "hide":Z
    :cond_c
    move v7, v9

    .line 627
    goto :goto_4

    :cond_d
    move v7, v9

    .line 629
    goto :goto_5
.end method

.method public setController(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)V
    .locals 0
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "isSearchResult"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 188
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListener:Lcom/kingsoft/mail/ui/LayoutListener;

    .line 189
    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mIsSearchResult:Z

    .line 190
    return-void
.end method

.method public setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 0
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 194
    return-void
.end method
