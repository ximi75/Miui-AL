.class Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeBackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SwipeBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SwipeBackView;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/SwipeBackView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/SwipeBackView;Lcom/kingsoft/mail/ui/SwipeBackView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/SwipeBackView;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/SwipeBackView$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;-><init>(Lcom/kingsoft/mail/ui/SwipeBackView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeBackView;->mHorizontalMinDp:I
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SwipeBackView;->access$100(Lcom/kingsoft/mail/ui/SwipeBackView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->access$200(Lcom/kingsoft/mail/ui/SwipeBackView;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->access$200(Lcom/kingsoft/mail/ui/SwipeBackView;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchBarController()Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    move-result-object v0

    .line 94
    .local v0, "searchBarController":Lcom/kingsoft/mail/maillist/controller/SearchBarController;
    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->access$200(Lcom/kingsoft/mail/ui/SwipeBackView;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SwipeBackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 96
    .local v1, "v":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 97
    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SwipeBackView$GestureListener;->this$0:Lcom/kingsoft/mail/ui/SwipeBackView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeBackView;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/SwipeBackView;->access$200(Lcom/kingsoft/mail/ui/SwipeBackView;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUpPressed()Z

    .line 105
    .end local v0    # "searchBarController":Lcom/kingsoft/mail/maillist/controller/SearchBarController;
    .end local v1    # "v":Landroid/view/ViewParent;
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method
