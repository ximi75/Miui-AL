.class Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$4;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$4;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 373
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView$4;->this$0:Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;

    # getter for: Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;->access$200(Lcom/kingsoft/mail/ui/ConversationSyncDisabledTipView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    return-void
.end method
