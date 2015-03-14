.class Lcom/kingsoft/mail/ui/SwipeHelper$2;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SwipeHelper;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SwipeHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 461
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 451
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCallback:Lcom/kingsoft/mail/ui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$400(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrView:Lcom/kingsoft/mail/ui/SwipeableItemView;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$300(Lcom/kingsoft/mail/ui/SwipeHelper;)Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper$Callback;->onDragCancelled(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 452
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->val$animView:Landroid/view/View;

    # invokes: Lcom/kingsoft/mail/ui/SwipeHelper;->dismissUnderLayout(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$700(Lcom/kingsoft/mail/ui/SwipeHelper;Landroid/view/View;)V

    .line 453
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mInitialPosX:F
    invoke-static {v0, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$002(Lcom/kingsoft/mail/ui/SwipeHelper;F)F

    .line 454
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$900(Lcom/kingsoft/mail/ui/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    # getter for: Lcom/kingsoft/mail/ui/SwipeHelper;->mCurrAnimView:Landroid/view/View;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$900(Lcom/kingsoft/mail/ui/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SwipeHelper$2;->this$0:Lcom/kingsoft/mail/ui/SwipeHelper;

    const-wide/16 v1, -0x1

    # setter for: Lcom/kingsoft/mail/ui/SwipeHelper;->conversationID:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeHelper;->access$202(Lcom/kingsoft/mail/ui/SwipeHelper;J)J

    .line 458
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 464
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 447
    return-void
.end method
