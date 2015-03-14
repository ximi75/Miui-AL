.class Lcom/kingsoft/mail/ui/TwoPaneLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwoPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/TwoPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    # getter for: Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$100(Lcom/kingsoft/mail/ui/TwoPaneLayout;)Lcom/kingsoft/mail/ui/ConversationListCopy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListCopy;->unbind()V

    .line 348
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/ui/TwoPaneLayout;->useHardwareLayer(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$200(Lcom/kingsoft/mail/ui/TwoPaneLayout;Z)V

    .line 349
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    # getter for: Lcom/kingsoft/mail/ui/TwoPaneLayout;->mListCopyView:Lcom/kingsoft/mail/ui/ConversationListCopy;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$100(Lcom/kingsoft/mail/ui/TwoPaneLayout;)Lcom/kingsoft/mail/ui/ConversationListCopy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListCopy;->unbind()V

    .line 341
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/ui/TwoPaneLayout;->useHardwareLayer(Z)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$200(Lcom/kingsoft/mail/ui/TwoPaneLayout;Z)V

    .line 342
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    # invokes: Lcom/kingsoft/mail/ui/TwoPaneLayout;->fixupListCopyWidth()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$300(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V

    .line 343
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneLayout$2;->this$0:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    # invokes: Lcom/kingsoft/mail/ui/TwoPaneLayout;->onTransitionComplete()V
    invoke-static {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->access$000(Lcom/kingsoft/mail/ui/TwoPaneLayout;)V

    .line 344
    return-void
.end method
