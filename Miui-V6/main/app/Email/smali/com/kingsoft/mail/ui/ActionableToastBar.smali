.class public Lcom/kingsoft/mail/ui/ActionableToastBar;
.super Landroid/widget/LinearLayout;
.source "ActionableToastBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    }
.end annotation


# static fields
.field private static final TOAST_LIFETIME:J = 0x1388L


# instance fields
.field private errorArr:Landroid/view/ViewGroup;

.field private mActionButton:Landroid/view/View;

.field private mActionDescriptionIcon:Landroid/widget/ImageView;

.field private mActionDescriptionView:Landroid/widget/TextView;

.field private mActionIcon:Landroid/view/View;

.field private mActionText:Landroid/widget/TextView;

.field private mArrClickListener:Landroid/view/View$OnClickListener;

.field private mEmptyClickListener:Landroid/view/View$OnClickListener;

.field private final mFadeOutHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mHideAnimation:Landroid/animation/Animator;

.field private mOperation:Lcom/kingsoft/mail/ui/ToastBarOperation;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mShowAnimation:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z

    .line 59
    new-instance v0, Lcom/kingsoft/mail/ui/ActionableToastBar$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/ActionableToastBar$1;-><init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mEmptyClickListener:Landroid/view/View$OnClickListener;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mArrClickListener:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/kingsoft/mail/ui/ActionableToastBar$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/ActionableToastBar$2;-><init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ActionableToastBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ActionableToastBar;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/ActionableToastBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ActionableToastBar;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z

    return v0
.end method

.method private getHideAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    .line 231
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/kingsoft/mail/ui/ActionableToastBar$5;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ActionableToastBar$5;-><init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHideAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getShowAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    .line 207
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/kingsoft/mail/ui/ActionableToastBar$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ActionableToastBar$4;-><init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public getOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mOperation:Lcom/kingsoft/mail/ui/ToastBarOperation;

    return-object v0
.end method

.method public hide(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "actionClicked"    # Z

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z

    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getHideAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 197
    :goto_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mOperation:Lcom/kingsoft/mail/ui/ToastBarOperation;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mOperation:Lcom/kingsoft/mail/ui/ToastBarOperation;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ToastBarOperation;->onToastBarTimeout(Landroid/content/Context;)V

    .line 201
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setAlpha(F)V

    .line 194
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEventInToastBar(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    :goto_0
    return v4

    .line 255
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 256
    .local v1, "xy":[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 257
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 258
    .local v2, "y":F
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getLocationOnScreen([I)V

    .line 259
    aget v5, v1, v4

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    aget v5, v1, v4

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    aget v5, v1, v3

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    aget v5, v1, v3

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 270
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0c00a9

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    .line 99
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionIcon:Landroid/view/View;

    .line 100
    const v0, 0x7f0c00ac

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c00a7

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->errorArr:Landroid/view/ViewGroup;

    .line 102
    return-void
.end method

.method public setOnArrClickListner(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "arrClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mArrClickListener:Landroid/view/View$OnClickListener;

    .line 283
    return-void
.end method

.method public show(Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 4
    .param p1, "listener"    # Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .param p2, "descriptionIconResourceId"    # I
    .param p3, "descriptionText"    # Ljava/lang/CharSequence;
    .param p4, "showActionIcon"    # Z
    .param p5, "actionTextResource"    # I
    .param p6, "replaceVisibleToast"    # Z
    .param p7, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 126
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z

    if-nez v0, :cond_0

    if-nez p6, :cond_0

    .line 174
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iput-object p7, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mOperation:Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 134
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionButton:Landroid/view/View;

    new-instance v3, Lcom/kingsoft/mail/ui/ActionableToastBar$3;

    invoke-direct {v3, p0, p7, p1}, Lcom/kingsoft/mail/ui/ActionableToastBar$3;-><init>(Lcom/kingsoft/mail/ui/ActionableToastBar;Lcom/kingsoft/mail/ui/ToastBarOperation;Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    if-nez p2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionIcon:Landroid/view/View;

    if-eqz p4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionText:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->errorArr:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mArrClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mHidden:Z

    .line 167
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mFadeOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mEmptyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar;->mActionDescriptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 155
    goto :goto_2
.end method
