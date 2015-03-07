.class Lcom/kingsoft/mail/ui/SwipeableListView$1;
.super Ljava/lang/Object;
.source "SwipeableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 242
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$1;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeableListView$1;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/kingsoft/mail/ui/SwipeableListView;->mAutoRefreshListPosition:I
    invoke-static {v1, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$002(Lcom/kingsoft/mail/ui/SwipeableListView;I)I

    .line 246
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$1;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    # getter for: Lcom/kingsoft/mail/ui/SwipeableListView;->headerPullTipsView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$100(Lcom/kingsoft/mail/ui/SwipeableListView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f100337

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeableListView$1;->this$0:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/ui/SwipeableListView;->doActionMove(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->access$200(Lcom/kingsoft/mail/ui/SwipeableListView;Landroid/view/MotionEvent;)Z

    .line 249
    return-void
.end method
