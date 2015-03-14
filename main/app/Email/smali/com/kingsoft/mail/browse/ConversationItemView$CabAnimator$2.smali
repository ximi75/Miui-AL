.class Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;
.super Ljava/lang/Object;
.source "ConversationItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;)V
    .locals 0

    .prologue
    .line 3076
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3095
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->access$200(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->mReversing:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->access$202(Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;Z)Z

    .line 3088
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    const-wide/16 v1, -0x1

    # setter for: Lcom/kingsoft/mail/browse/ConversationItemView;->mLastSelectedId:J
    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$302(Lcom/kingsoft/mail/browse/ConversationItemView;J)J

    .line 3090
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3100
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3080
    return-void
.end method
