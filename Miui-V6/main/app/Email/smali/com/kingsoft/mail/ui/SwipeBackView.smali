.class public Lcom/kingsoft/mail/ui/SwipeBackView;
.super Landroid/widget/RelativeLayout;
.source "SwipeBackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/SwipeBackView$1;,
        Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;
    }
.end annotation


# instance fields
.field private mBackDragDp:I

.field private mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalMinDp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mBackDragDp:I

    .line 27
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I

    .line 33
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mBackDragDp:I

    .line 27
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I

    .line 38
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mBackDragDp:I

    .line 27
    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I

    .line 43
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/SwipeBackView;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeBackView;

    .prologue
    .line 19
    iget v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/SwipeBackView;)Lcom/kingsoft/mail/ui/AbstractActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SwipeBackView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;-><init>(Lcom/kingsoft/mail/ui/SwipeBackView;Lcom/kingsoft/mail/ui/SwipeBackView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 48
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mBackDragDp:I

    .line 49
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I

    .line 50
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 63
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 68
    .local v0, "startX":F
    iget v3, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mBackDragDp:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SwipeBackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 70
    .local v1, "v":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 77
    .end local v0    # "startX":F
    .end local v1    # "v":Landroid/view/ViewParent;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public setController(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 54
    return-void
.end method
