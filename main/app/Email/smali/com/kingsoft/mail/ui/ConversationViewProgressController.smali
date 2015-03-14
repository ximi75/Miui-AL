.class public Lcom/kingsoft/mail/ui/ConversationViewProgressController;
.super Ljava/lang/Object;
.source "ConversationViewProgressController.java"


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private final mFragment:Landroid/app/Fragment;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadingShownTime:J

.field private mProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    sput v0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinDelay:I

    .line 39
    sput v0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinShowTime:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/os/Handler;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J

    .line 52
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    .line 53
    iput-object p2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;

    const-string/jumbo v1, "mDelayedShow"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    invoke-direct {v0, p0, v1, v2}, Lcom/kingsoft/mail/ui/ConversationViewProgressController$1;-><init>(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mDelayedShow:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/ui/ConversationViewProgressController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewProgressController;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/ConversationViewProgressController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewProgressController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/ConversationViewProgressController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method private animateDismiss(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "doAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->enableHardwareLayer(Landroid/view/View;)V

    .line 138
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000d

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 140
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationViewProgressController$3;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController$3;-><init>(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private dismiss(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "doAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J

    .line 118
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->animateDismiss(Ljava/lang/Runnable;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method protected dismissLoadingStatus()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismissLoadingStatus(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method protected dismissLoadingStatus(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "doAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 96
    iget-wide v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismiss(Ljava/lang/Runnable;)V

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mLoadingShownTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 103
    .local v0, "diff":J
    sget v2, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinShowTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismiss(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;

    const-string/jumbo v4, "dismissLoadingStatus"

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    invoke-direct {v3, p0, v4, v5, p1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController$2;-><init>(Lcom/kingsoft/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/Runnable;)V

    sget v4, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinShowTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public instantiateProgressIndicators(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 65
    const v0, 0x7f0c018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    .line 66
    const v0, 0x7f0c018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mProgressView:Landroid/view/View;

    .line 67
    return-void
.end method

.method public showLoadingStatus(Z)V
    .locals 5
    .param p1, "isFragmentUserVisible"    # Z

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    sget v1, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinDelay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinDelay:I

    .line 76
    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinShowTime:I

    .line 80
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->mDelayedShow:Ljava/lang/Runnable;

    sget v3, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->sMinDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
