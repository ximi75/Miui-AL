.class Lcom/kingsoft/mail/ui/ConversationListFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationListFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$402(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 458
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # getter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$100(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onConversationListStatusUpdated()V

    .line 460
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment$4;->this$0:Lcom/kingsoft/mail/ui/ConversationListFragment;

    # setter for: Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->access$102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z

    .line 462
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 455
    return-void
.end method
