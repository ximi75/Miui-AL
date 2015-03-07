.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    # getter for: Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->access$300(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    # getter for: Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->access$300(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 534
    :cond_0
    return-void
.end method
