.class Lcom/kingsoft/mail/ui/ActionableToastBar$5;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/ActionableToastBar;->getHideAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/ActionableToastBar;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$5;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 244
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ActionableToastBar$5;->this$0:Lcom/kingsoft/mail/ui/ActionableToastBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 234
    return-void
.end method
