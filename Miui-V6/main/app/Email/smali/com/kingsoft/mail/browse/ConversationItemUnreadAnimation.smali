.class public Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
.super Ljava/lang/Object;
.source "ConversationItemUnreadAnimation.java"


# static fields
.field private static final SENDER_ACCELERATE_X:I = 0x32


# instance fields
.field private alphaAnimationFraction:I

.field private isAlphaAnimatorEnd:Z

.field private isReadAnimationRunning:Z

.field private isUnReadAnimationRunning:Z

.field private mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

.field private mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

.field private mGadgetMode:I

.field private sReadAnimationDuration:I

.field private sSenderAnimationDuration:I

.field private senderXAnimationFraction:I

.field private sendersUnreadMarkMarginRight:I

.field private sizeAnimationFraction:F

.field private unReadDMarkWidth:I

.field private xAnimationFraction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationItemView;ILcom/kingsoft/mail/browse/ConversationItemViewCoordinates;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationItemView"    # Lcom/kingsoft/mail/browse/ConversationItemView;
    .param p3, "unReadDMarkWidth"    # I
    .param p4, "coordinates"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isUnReadAnimationRunning:Z

    .line 29
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z

    .line 30
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z

    .line 43
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 44
    iput p3, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->unReadDMarkWidth:I

    .line 45
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sReadAnimationDuration:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sSenderAnimationDuration:I

    .line 55
    iget-object v0, p2, Lcom/kingsoft/mail/browse/ConversationItemView;->mHeader:Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    iget-boolean v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->unread:Z

    if-eqz v0, :cond_0

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I

    .line 57
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F

    .line 58
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->xAnimationFraction:I

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mConversationItemView:Lcom/kingsoft/mail/browse/ConversationItemView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mGadgetMode:I

    return v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startUnReadAnimation()V

    return-void
.end method

.method static synthetic access$1202(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isUnReadAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->startReadAnimation(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I

    return p1
.end method

.method static synthetic access$402(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z

    return p1
.end method

.method static synthetic access$502(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F

    return p1
.end method

.method static synthetic access$602(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->xAnimationFraction:I

    return p1
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z

    return v0
.end method

.method static synthetic access$702(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    return v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    return-object v0
.end method

.method private startReadAnimation(Z)V
    .locals 12
    .param p1, "sendersUnreadMarkVisible"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 101
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 103
    .local v3, "mSwitchAnimator":Landroid/animation/AnimatorSet;
    const/16 v6, 0xff

    iput v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I

    .line 104
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 105
    .local v2, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$4;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$4;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$5;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    const/high16 v6, 0x3f800000

    iput v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F

    .line 119
    new-array v6, v10, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 120
    .local v4, "sizeAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$6;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$6;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    .line 128
    .local v5, "unreadMarkX":I
    :goto_0
    if-eqz p1, :cond_1

    .line 129
    new-array v6, v10, [I

    aput v5, v6, v9

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v8, v8, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->unReadDMarkWidth:I

    sub-int/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 132
    .local v0, "XAnimator":Landroid/animation/ValueAnimator;
    :goto_1
    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$7;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$7;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    new-array v6, v10, [I

    iget v7, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    aput v7, v6, v9

    aput v9, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 140
    .local v1, "XLeftAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$8;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$8;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sReadAnimationDuration:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 147
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v9

    aput-object v0, v6, v11

    aput-object v4, v6, v10

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 148
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    return-void

    .line 126
    .end local v0    # "XAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "XLeftAnimator":Landroid/animation/ValueAnimator;
    .end local v5    # "unreadMarkX":I
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v5, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkX:I

    goto :goto_0

    .line 131
    .restart local v5    # "unreadMarkX":I
    :cond_1
    new-array v6, v10, [I

    aput v5, v6, v9

    aput v9, v6, v11

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "XAnimator":Landroid/animation/ValueAnimator;
    goto :goto_1

    .line 104
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private startUnReadAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 215
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 216
    .local v0, "xAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$13;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$14;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$14;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sSenderAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 230
    return-void
.end method


# virtual methods
.method protected getAlphaAnimationFraction()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I

    return v0
.end method

.method protected getSenderXAnimationFraction()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I

    return v0
.end method

.method protected getSizeAnimationFraction()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F

    return v0
.end method

.method protected getxAnimationFraction()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->xAnimationFraction:I

    return v0
.end method

.method protected isAnimationRunning()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isUnReadAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setGadgetMode(I)V
    .locals 0
    .param p1, "mGadgetMode"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mGadgetMode:I

    .line 235
    return-void
.end method

.method protected startXReadAnimation(Z)V
    .locals 9
    .param p1, "sendersUnreadMarkVisible"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    iget-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z

    if-eqz v4, :cond_0

    .line 98
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isReadAnimationRunning:Z

    .line 70
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 71
    .local v2, "mSwitchAnimator":Landroid/animation/AnimatorSet;
    iget v3, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->unReadDMarkWidth:I

    .line 72
    .local v3, "unReadMarkWidth":I
    new-array v4, v8, [I

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    add-int/2addr v5, v3

    aput v5, v4, v7

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x32

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 73
    .local v1, "XRightAnimator":Landroid/animation/ValueAnimator;
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    iput v4, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I

    .line 74
    new-instance v4, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$1;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    new-array v4, v8, [I

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x32

    aput v5, v4, v7

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sendersUnreadMarkMarginRight:I

    add-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 82
    .local v0, "XLeftAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    new-instance v4, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$2;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$2;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    new-instance v4, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;

    invoke-direct {v4, p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$3;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sReadAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 96
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    aput-object v0, v4, v6

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 97
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected startXUnReadAnimation(Z)V
    .locals 11
    .param p1, "sendersUnreadMarkVisible"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 156
    iget-boolean v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isUnReadAnimationRunning:Z

    if-eqz v5, :cond_0

    .line 212
    :goto_0
    return-void

    .line 159
    :cond_0
    iput v8, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->senderXAnimationFraction:I

    .line 161
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 162
    .local v2, "mSwitchAnimator":Landroid/animation/AnimatorSet;
    iput-boolean v10, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isUnReadAnimationRunning:Z

    .line 164
    iput v8, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->alphaAnimationFraction:I

    .line 165
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 166
    .local v1, "alphaAnimator":Landroid/animation/ValueAnimator;
    iput-boolean v8, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->isAlphaAnimatorEnd:Z

    .line 167
    new-instance v5, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$9;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    new-instance v5, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;

    invoke-direct {v5, p0, p1}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$10;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;Z)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    new-array v5, v9, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 190
    .local v3, "sizeAnimator":Landroid/animation/ValueAnimator;
    const/4 v5, 0x0

    iput v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sizeAnimationFraction:F

    .line 191
    new-instance v5, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$11;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$11;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersUnreadMarkX:I

    .line 199
    .local v4, "unreadMarkX":I
    :goto_1
    if-eqz p1, :cond_2

    .line 200
    new-array v5, v9, [I

    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v6, v6, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v7, v7, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->unReadDMarkWidth:I

    sub-int/2addr v6, v7

    aput v6, v5, v8

    aput v4, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 203
    .local v0, "XAnimator":Landroid/animation/ValueAnimator;
    :goto_2
    new-instance v5, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$12;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation$12;-><init>(Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->sReadAnimationDuration:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    aput-object v3, v5, v10

    aput-object v0, v5, v9

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 211
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 197
    .end local v0    # "XAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "unreadMarkX":I
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationItemUnreadAnimation;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v4, v5, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->unreadMarkX:I

    goto :goto_1

    .line 202
    .restart local v4    # "unreadMarkX":I
    :cond_2
    new-array v5, v9, [I

    aput v8, v5, v8

    aput v4, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "XAnimator":Landroid/animation/ValueAnimator;
    goto :goto_2

    .line 165
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 189
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
