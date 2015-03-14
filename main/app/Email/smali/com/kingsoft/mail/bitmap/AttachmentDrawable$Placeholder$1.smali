.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;
.super Ljava/lang/Object;
.source "AttachmentDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000

    div-float/2addr v0, v2

    # setter for: Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F
    invoke-static {v1, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->access$102(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;F)F

    .line 455
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setInnerAlpha(I)V

    .line 456
    return-void
.end method
