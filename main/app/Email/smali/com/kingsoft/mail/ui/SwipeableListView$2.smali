.class Lcom/kingsoft/mail/ui/SwipeableListView$2;
.super Ljava/lang/Object;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SwipeableListView;->autoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SwipeableListView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SwipeableListView;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$2;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$2;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SwipeableListView;->currentStatus:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    sget-object v1, Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;->RELEASE_To_REFRESH:Lcom/kingsoft/mail/ui/SwipeableListView$PullStatus;

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$2;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$2;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeableListView;->mHeaderViewDefaultHeight:I
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$400(Lcom/kingsoft/mail/ui/SwipeableListView;)I

    move-result v1

    # setter for: Lcom/kingsoft/mail/ui/SwipeableListView;->headContentHeight:I
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$302(Lcom/kingsoft/mail/ui/SwipeableListView;I)I

    .line 261
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$2;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/ui/SwipeableListView;->doActionUp(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$500(Lcom/kingsoft/mail/ui/SwipeableListView;Landroid/view/MotionEvent;)Z

    .line 263
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 273
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 255
    return-void
.end method
