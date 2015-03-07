.class Lcom/kingsoft/mail/browse/MessageHeaderView$3;
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
    .line 1491
    iput-object p1, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$3;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1506
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$3;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # invokes: Lcom/kingsoft/mail/browse/MessageHeaderView;->hideCollapsedDetails()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$200(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 1500
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MessageHeaderView$3;->this$0:Lcom/kingsoft/mail/browse/MessageHeaderView;

    # invokes: Lcom/kingsoft/mail/browse/MessageHeaderView;->showExpandedDetails()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->access$300(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 1501
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1511
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1495
    return-void
.end method
