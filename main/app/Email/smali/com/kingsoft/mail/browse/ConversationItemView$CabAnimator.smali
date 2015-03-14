.class abstract Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;
.super Ljava/lang/Object;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CabAnimator"
.end annotation


# instance fields
.field private isShowOrHide:Z

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mDuration:J

.field private final mEndValue:F

.field private final mPropertyName:Ljava/lang/String;

.field private mReversing:Z

.field private final mStartValue:F

.field private mValue:F

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V
    .locals 2
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F
    .param p5, "duration"    # J

    .prologue
    const/4 v1, 0x0

    .line 3051
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 3046
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 3048
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->isShowOrHide:Z

    .line 3076
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 3052
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mPropertyName:Ljava/lang/String;

    .line 3054
    iput p3, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mStartValue:F

    .line 3055
    iput p4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mEndValue:F

    .line 3057
    iput-wide p5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mDuration:J

    .line 3058
    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    .prologue
    .line 3034
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 3034
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    return p1
.end method

.method private createAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    .line 3061
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mStartValue:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mEndValue:F

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3064
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-wide v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3065
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3066
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$1;-><init>(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3072
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3073
    return-object v0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 3114
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    return v0
.end method

.method public abstract invalidateArea()V
.end method

.method public isShowOrHide()Z
    .locals 1

    .prologue
    .line 3153
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->isShowOrHide:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsShowOrHide(Z)V
    .locals 0
    .param p1, "mIsShowOrHide"    # Z

    .prologue
    .line 3157
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->isShowOrHide:Z

    .line 3158
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 3106
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 3111
    :goto_0
    return-void

    .line 3109
    :cond_0
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mValue:F

    .line 3110
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->invalidateArea()V

    goto :goto_0
.end method

.method public startAnimation(Z)V
    .locals 1
    .param p1, "reverse"    # Z

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3126
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->createAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 3127
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 3129
    if-eqz p1, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 3134
    :goto_0
    return-void

    .line 3132
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3137
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 3142
    :cond_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z

    .line 3143
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->isShowOrHide:Z

    .line 3145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->setValue(F)V

    .line 3146
    return-void
.end method
