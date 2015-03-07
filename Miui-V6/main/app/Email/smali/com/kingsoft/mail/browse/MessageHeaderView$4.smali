.class Lcom/kingsoft/mail/browse/MessageHeaderView$4;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$4;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1534
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$4;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # getter for: Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessageHeaderItem:Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$400(Lcom/kingsoft/mail/browse/MessageHeaderView;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$4;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # getter for: Lcom/kingsoft/mail/browse/MessageHeaderView;->mMessage:Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$500(Lcom/kingsoft/mail/browse/MessageHeaderView;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$4;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # invokes: Lcom/kingsoft/mail/browse/MessageHeaderView;->hideExpandedDetails()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$600(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 1528
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$4;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # invokes: Lcom/kingsoft/mail/browse/MessageHeaderView;->showCollapsedDetails()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$700(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1539
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1518
    return-void
.end method
