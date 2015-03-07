.class Lcom/kingsoft/mail/chat/ChatViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;Z)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iput-boolean p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$1;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$1;->val$enter:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->initData()V
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$000(Lcom/kingsoft/mail/chat/ChatViewController;)V

    .line 238
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$1;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/chat/ChatViewController;->mIsAnimation:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->access$102(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z

    .line 240
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 234
    return-void
.end method
