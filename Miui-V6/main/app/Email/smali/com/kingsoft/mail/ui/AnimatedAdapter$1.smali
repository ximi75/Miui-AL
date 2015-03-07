.class Lcom/kingsoft/mail/ui/AnimatedAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v8, 0x0

    .line 135
    instance-of v5, p1, Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    move-object v4, p1

    .line 136
    check-cast v4, Landroid/animation/AnimatorSet;

    .line 137
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 141
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local p1    # "animation":Landroid/animation/Animator;
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    invoke-static {v5, v2, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 142
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    invoke-static {v5, v2, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 143
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeUndoingItems:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$500(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    invoke-static {v5, v2, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 144
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    invoke-static {v5, v2, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 145
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mRestoringItems:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$600(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->updateAnimatingConversationItems(Ljava/lang/Object;Ljava/util/HashSet;)V
    invoke-static {v5, v2, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$400(Lcom/kingsoft/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 147
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z
    invoke-static {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$700(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v2, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    if-eqz v5, :cond_1

    move-object v3, v2

    .line 148
    check-cast v3, Lcom/kingsoft/mail/ui/LeaveBehindItem;

    .line 149
    .local v3, "objItem":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->getConversationId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->clearLeaveBehind(J)V

    .line 150
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->commit()V

    .line 151
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->hasFadeLeaveBehinds()Z
    invoke-static {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$700(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/kingsoft/mail/ui/LeaveBehindItem;

    move-result-object v1

    .line 155
    .local v1, "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimationIfNotStarted()Z

    move-result v0

    .line 157
    .local v0, "cancelled":Z
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1, v8}, Lcom/kingsoft/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(I)V

    .line 163
    .end local v0    # "cancelled":Z
    .end local v1    # "item":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 166
    .end local v3    # "objItem":Lcom/kingsoft/mail/ui/LeaveBehindItem;
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$800(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/ControllableActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-interface {v5, v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    .line 169
    :cond_2
    return-void

    .line 139
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local p1    # "animation":Landroid/animation/Animator;
    :cond_3
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "obj":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mUndoingItems:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$000(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mDeletingItems:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$100(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 127
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mLastDeletingItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$200(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$1;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # getter for: Lcom/kingsoft/mail/ui/AnimatedAdapter;->mSwipeDeletingItems:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$300(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 130
    :cond_0
    return-void
.end method
