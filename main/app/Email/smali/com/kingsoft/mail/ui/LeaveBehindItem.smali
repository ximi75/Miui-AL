.class public Lcom/kingsoft/mail/ui/LeaveBehindItem;
.super Landroid/widget/FrameLayout;
.source "LeaveBehindItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/mail/ui/SwipeableItemView;


# static fields
.field private static final OPAQUE:F = 1.0f

.field private static final TRANSPARENT:F

.field private static sFadeInAnimationDuration:I

.field private static sScrollSlop:F

.field private static sShrinkAnimationDuration:I


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private mAnimating:Z

.field private mData:Lcom/kingsoft/mail/providers/Conversation;

.field private mFadeIn:Landroid/animation/ObjectAnimator;

.field private mFadingInText:Z

.field private mHeight:I

.field private mInert:Z

.field private mSwipeableContent:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mUndoOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

.field private mWidth:I

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    sput v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    .line 63
    sput v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mInert:Z

    .line 78
    invoke-static {p1}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->loadStatics(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static loadStatics(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget v1, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    .line 85
    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    .line 86
    const v1, 0x7f0e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sScrollSlop:F

    .line 88
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public static startFadeInTextAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->loadStatics(Landroid/content/Context;)V

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "start":F
    const/high16 v0, 0x3f800000

    .line 216
    .local v0, "end":F
    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 217
    .local v1, "fadeIn":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 221
    :cond_0
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    sget v3, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sFadeInAnimationDuration:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    return-object v1

    .line 216
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method


# virtual methods
.method public bind(ILcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/ui/ToastBarOperation;Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/providers/Folder;I)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "adapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .param p4, "undoOp"    # Lcom/kingsoft/mail/ui/ToastBarOperation;
    .param p5, "target"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p6, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p7, "height"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->position:I

    .line 115
    iput-object p4, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 116
    iput-object p2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 117
    iput-object p3, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 118
    iput p7, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mHeight:I

    .line 119
    invoke-virtual {p0, p5}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->setData(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 120
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    const v0, 0x7f0c0230

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p6}, Lcom/kingsoft/mail/ui/ToastBarOperation;->getSingularDescription(Landroid/content/Context;Lcom/kingsoft/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mInert:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelFadeInTextAnimation()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 252
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 254
    :cond_0
    return-void
.end method

.method public cancelFadeInTextAnimationIfNotStarted()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimation()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelFadeOutText()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 311
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 133
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->delete(Ljava/util/Collection;)I

    .line 136
    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 6
    .param p1, "moveLeft"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "list_swipe"

    const-string/jumbo v2, "leave_behind"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 142
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mData:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->fadeOutSpecificLeaveBehindItem(J)V

    .line 143
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    return-wide v0
.end method

.method public getData()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mData:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getLeaveBehindData()Lcom/kingsoft/mail/ui/LeaveBehindData;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/kingsoft/mail/ui/LeaveBehindData;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getData()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mUndoOp:Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget v3, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/mail/ui/LeaveBehindData;-><init>(Lcom/kingsoft/mail/providers/Conversation;Lcom/kingsoft/mail/ui/ToastBarOperation;I)V

    return-object v0
.end method

.method public getMinAllowScrollDistance()F
    .locals 1

    .prologue
    .line 298
    sget v0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sScrollSlop:F

    return v0
.end method

.method public getSwipeableView()Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;->from(Landroid/view/View;)Lcom/kingsoft/mail/ui/SwipeableItemView$SwipeableView;

    move-result-object v0

    return-object v0
.end method

.method public increaseFadeInDelay(I)V
    .locals 5
    .param p1, "newDelay"    # I

    .prologue
    .line 234
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 235
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 236
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    .line 237
    .local v0, "delay":J
    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    .end local v0    # "delay":J
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v0    # "delay":J
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 241
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    int-to-long v3, p1

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 242
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    return v0
.end method

.method public makeInert()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mInert:Z

    .line 307
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 93
    .local v1, "id":I
    const v2, 0x7f0c0190

    if-ne v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mInert:Z

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setSwipeUndo(Z)V

    .line 100
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->clearLeaveBehind(J)V

    .line 101
    iget-object v2, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 102
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->undo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const v2, 0x7f0c0230

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 280
    iget v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 281
    iget v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mWidth:I

    iget v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->setMeasuredDimension(II)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mHeight:I

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimatedHeight:I

    .line 293
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->requestLayout()V

    .line 294
    return-void
.end method

.method public setData(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mData:Lcom/kingsoft/mail/providers/Conversation;

    .line 272
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 192
    :cond_0
    return-void
.end method

.method public startFadeInTextAnimation(I)V
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadingInText:Z

    .line 202
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mSwipeableContent:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mFadeIn:Landroid/animation/ObjectAnimator;

    .line 204
    :cond_0
    return-void
.end method

.method public startShrinkAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimating:Z

    if-nez v1, :cond_0

    .line 174
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mAnimating:Z

    .line 175
    const-string/jumbo v1, "animatedHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mHeight:I

    aput v3, v2, v4

    aput v4, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 176
    .local v0, "height":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mHeight:I

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->setMinimumHeight(I)V

    .line 177
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/LeaveBehindItem;->mWidth:I

    .line 178
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fe00000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    sget v1, Lcom/kingsoft/mail/ui/LeaveBehindItem;->sShrinkAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 180
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 183
    .end local v0    # "height":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method
