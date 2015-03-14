.class Lcom/kingsoft/email/mail/attachment/FlingListView;
.super Landroid/widget/ListView;
.source "FlingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;
    }
.end annotation


# static fields
.field private static final SWIPE_BIT_ALL:I = -0x1

.field private static final SWIPE_BIT_LEFT:I = 0x1

.field private static final SWIPE_BIT_NONE:I = 0x0

.field private static final SWIPE_BIT_RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FlingListView"

.field public static final UI_POSITION_0:I = 0x0

.field public static final UI_POSITION_DELETE:I = -0x1

.field public static final UI_POSITION_LEFT:I = -0x2

.field public static final UI_POSITION_MAIL:I = 0x3

.field public static final UI_POSITION_MAIL_ATTACHMENT:I = 0x4

.field public static final UI_POSITION_MAIL_CONTENT:I = 0x2

.field public static final UI_POSITION_MAIL_HEAD:I = 0x1

.field public static final UI_POSITION_UNKNOWN:I = -0x3


# instance fields
.field private lastFrameLayout:Landroid/widget/FrameLayout;

.field private mAdapter:Landroid/widget/ListAdapter;

.field mAnimator:Landroid/animation/ObjectAnimator;

.field private mAttachmentContainer:Landroid/view/View;

.field private mCurItemPos:I

.field private mDelete:Landroid/view/View;

.field private mDeletePlaceHolder:Landroid/view/View;

.field private mDownX:I

.field private mDownY:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

.field private mMail:Landroid/view/View;

.field private mMailContent:Landroid/view/ViewGroup;

.field private mSlideOnAttachment:Z

.field private mSwipeMask:I

.field private mSwipeThrehold:F

.field private mTouchSlop:I

.field private mTranslationX:F

.field private mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/mail/attachment/FlingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/mail/attachment/FlingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    .line 41
    new-instance v0, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;-><init>(Lcom/kingsoft/email/mail/attachment/FlingListView;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    .line 153
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTouchSlop:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    .line 156
    return-void
.end method

.method private animateAttachmentItem(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 403
    packed-switch p1, :pswitch_data_0

    .line 446
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "unknown ui cursor state!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 448
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_POSITION_LEFT"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 406
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    neg-float v2, v0

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    const/16 v5, 0x66

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    goto :goto_0

    .line 414
    :pswitch_1
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_POSITION_DELETE"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 415
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    goto :goto_0

    .line 423
    :pswitch_2
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_POSITION_0"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 427
    :pswitch_3
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_POSITION_MAIL_HEAD"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 428
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    const/16 v5, 0x65

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    .line 442
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_POSITION_MAIL_CONTENT"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private animateLastView(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v5, 0x64

    .line 176
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "animateLastView"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .line 178
    .local v3, "vh":Lcom/kingsoft/email/mail/attachment/ViewHolder;
    iget-object v6, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    .line 179
    .local v6, "attachmentContainer":Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget v0, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget v0, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    if-ne v0, v5, :cond_1

    .line 184
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    .line 205
    :goto_0
    iput v5, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    .line 206
    return-void

    .line 192
    :cond_1
    iget v0, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 193
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v0, "FlingListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown last view stable state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "vh"    # Lcom/kingsoft/email/mail/attachment/ViewHolder;
    .param p4, "itemState"    # Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;
    .param p5, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    const-string/jumbo v0, "FlingListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start|end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 280
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-string/jumbo v1, "translationX"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 284
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/kingsoft/email/mail/attachment/FlingListView$1;

    invoke-direct {v1, p0, p4, p3, p5}, Lcom/kingsoft/email/mail/attachment/FlingListView$1;-><init>(Lcom/kingsoft/email/mail/attachment/FlingListView;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 308
    return-void
.end method

.method private drawAttachmentItem(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 398
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "unknown ui cursor state!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    :goto_0
    return-void

    .line 355
    :pswitch_0
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_CURSOR_LEFT"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 363
    :pswitch_1
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_CURSOR_DELETE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 364
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 371
    :pswitch_2
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_CURSOR_0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 380
    :pswitch_3
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_CURSOR_MAIL_HEAD"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 381
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_4
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "UI_CURSOR_MAIL_CONTENT"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private drawMailItem(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    return-void
.end method

.method private getAdapterMode()I
    .locals 2

    .prologue
    .line 159
    const/4 v0, -0x1

    .line 160
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 161
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerAdapter;->getMode()I

    move-result v0

    .line 165
    :cond_0
    return v0
.end method

.method private getMovingPosition(FI)I
    .locals 5
    .param p1, "translationX"    # F
    .param p2, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 322
    float-to-int v2, p1

    add-int v0, v2, p2

    .line 323
    .local v0, "x":I
    const-string/jumbo v2, "FlingListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cursorPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    int-to-float v2, v0

    iget v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 326
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 327
    const/4 v1, -0x2

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 330
    :cond_1
    int-to-float v2, v0

    iget v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    neg-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    if-gez v0, :cond_2

    .line 331
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 332
    const/4 v1, -0x1

    goto :goto_0

    .line 335
    :cond_2
    if-eqz v0, :cond_0

    .line 338
    if-lez v0, :cond_3

    int-to-float v1, v0

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 339
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 340
    const/4 v1, 0x1

    goto :goto_0

    .line 343
    :cond_3
    int-to-float v1, v0

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeThrehold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 344
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 345
    const/4 v1, 0x2

    goto :goto_0

    .line 349
    :cond_4
    const/4 v1, -0x3

    goto :goto_0
.end method

.method private preTranslationX(F)I
    .locals 5
    .param p1, "x"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 456
    const-string/jumbo v1, "FlingListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preTranslationX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 458
    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 464
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    .line 469
    :cond_2
    float-to-int v0, p1

    goto :goto_0
.end method


# virtual methods
.method public clearState()V
    .locals 3

    .prologue
    .line 169
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "clear last item view"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateLastView(Landroid/view/View;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    .line 174
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getAdapterMode()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 270
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownY:I

    .line 220
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownY:I

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/email/mail/attachment/FlingListView;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mCurItemPos:I

    .line 222
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mCurItemPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 223
    const-string/jumbo v1, "FlingListView"

    const-string/jumbo v2, "mCurItemPos invalid "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 227
    :cond_3
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mCurItemPos:I

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 228
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    .line 229
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    .line 230
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 232
    .local v0, "mailContent":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_4

    .line 233
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateLastView(Landroid/view/View;)V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mail:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMail:Landroid/view/View;

    .line 238
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletion:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDelete:Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailContent:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    .line 240
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v1, v1, Lcom/kingsoft/email/mail/attachment/ViewHolder;->deletePlaceHolder:Landroid/view/View;

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDeletePlaceHolder:Landroid/view/View;

    .line 241
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    iget v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 245
    const-string/jumbo v1, "FlingListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mMailContent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v3, v3, Lcom/kingsoft/email/mail/attachment/ViewHolder;->mailboxKey:I

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v4, v4, Lcom/kingsoft/email/mail/attachment/ViewHolder;->accountKey:I

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v5, v5, Lcom/kingsoft/email/mail/attachment/ViewHolder;->messageKey:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kingsoft/email/mail/attachment/AttachmentManagerUtilities;->drawMail(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    .line 250
    const-string/jumbo v1, "FlingListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mAttachmentContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTranslationX:F

    .line 255
    new-instance v1, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;-><init>(Lcom/kingsoft/email/mail/attachment/FlingListView;)V

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    goto/16 :goto_1

    .line 259
    .end local v0    # "mailContent":Landroid/widget/FrameLayout;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSlideOnAttachment:Z

    .line 262
    const-string/jumbo v1, "FlingListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSlide:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSlideOnAttachment:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->clearState()V

    .line 52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 473
    invoke-direct {p0}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getAdapterMode()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSwipeMask:I

    and-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    .line 474
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 552
    :cond_1
    :goto_0
    return v1

    .line 477
    :cond_2
    iget-boolean v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSlideOnAttachment:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mCurItemPos:I

    if-eq v2, v0, :cond_3

    .line 478
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/attachment/FlingListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 480
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 481
    .local v10, "x":I
    const/4 v9, 0x0

    .line 483
    .local v9, "deltaX":I
    packed-switch v6, :pswitch_data_0

    .line 552
    .end local v6    # "action":I
    .end local v9    # "deltaX":I
    .end local v10    # "x":I
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 485
    .restart local v6    # "action":I
    .restart local v9    # "deltaX":I
    .restart local v10    # "x":I
    :pswitch_0
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "onTouchEvent:ACTION_DOWN"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 486
    iput v10, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    goto :goto_1

    .line 489
    :pswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 490
    .local v7, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 492
    invoke-virtual {p0, v7}, Lcom/kingsoft/email/mail/attachment/FlingListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 493
    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    sub-int v9, v2, v10

    .line 495
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTouchSlop:I

    if-le v2, v3, :cond_1

    .line 496
    const-string/jumbo v2, "FlingListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mViewHolder.state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v4, v4, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 498
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v2, v2, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    packed-switch v2, :pswitch_data_1

    .line 514
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v2, "unknown stable state"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 501
    :pswitch_2
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTranslationX:F

    neg-int v2, v9

    invoke-direct {p0, v0, v2}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getMovingPosition(FI)I

    move-result v8

    .line 502
    .local v8, "cursorPos":I
    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/attachment/FlingListView;->drawAttachmentItem(I)V

    .line 503
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    iget v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTranslationX:F

    int-to-float v3, v9

    sub-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/kingsoft/email/mail/attachment/FlingListView;->preTranslationX(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 505
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;->changeState(Lcom/kingsoft/email/mail/attachment/ViewHolder;I)V

    goto/16 :goto_0

    .line 508
    .end local v8    # "cursorPos":I
    :pswitch_3
    invoke-direct {p0, v9}, Lcom/kingsoft/email/mail/attachment/FlingListView;->drawMailItem(I)V

    .line 509
    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v2, v2, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v9, :cond_4

    move v0, v1

    :cond_4
    mul-int/2addr v0, v3

    sub-int/2addr v0, v9

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 520
    .end local v7    # "cancelEvent":Landroid/view/MotionEvent;
    :pswitch_4
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mDownX:I

    sub-int v9, v0, v10

    .line 522
    const-string/jumbo v0, "FlingListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->state:I

    packed-switch v0, :pswitch_data_2

    .line 540
    const-string/jumbo v0, "FlingListView"

    const-string/jumbo v1, "invalid ui stable state!"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    :cond_5
    :goto_2
    iput-boolean v11, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mSlideOnAttachment:Z

    .line 545
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mFrameLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->lastFrameLayout:Landroid/widget/FrameLayout;

    move v1, v11

    .line 546
    goto/16 :goto_0

    .line 526
    :pswitch_5
    iget v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mTranslationX:F

    neg-int v1, v9

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/mail/attachment/FlingListView;->getMovingPosition(FI)I

    move-result v8

    .line 527
    .restart local v8    # "cursorPos":I
    const/4 v0, -0x3

    if-eq v8, v0, :cond_5

    .line 528
    invoke-direct {p0, v8}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateAttachmentItem(I)V

    goto :goto_2

    .line 532
    .end local v8    # "cursorPos":I
    :pswitch_6
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v0, v0, Lcom/kingsoft/email/mail/attachment/ViewHolder;->attachmentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mViewHolder:Lcom/kingsoft/email/mail/attachment/ViewHolder;

    iget-object v4, p0, Lcom/kingsoft/email/mail/attachment/FlingListView;->mItemState:Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;

    const/16 v5, 0x64

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/attachment/FlingListView;->animateView(FFLcom/kingsoft/email/mail/attachment/ViewHolder;Lcom/kingsoft/email/mail/attachment/FlingListView$ItemEventState;I)V

    goto :goto_2

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 498
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 523
    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
