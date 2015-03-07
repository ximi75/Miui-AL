.class Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->createAnimator()Landroid/animation/ObjectAnimator;
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
    .line 3066
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$1;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator$1;->this$1:Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationItemView$CabAnimator;->invalidateArea()V

    .line 3070
    return-void
.end method
