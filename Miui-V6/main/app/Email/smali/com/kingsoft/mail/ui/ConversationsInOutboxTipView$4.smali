.class Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$4;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$4;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView$4;->this$0:Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;->access$400(Lcom/kingsoft/mail/ui/ConversationsInOutboxTipView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    return-void
.end method
