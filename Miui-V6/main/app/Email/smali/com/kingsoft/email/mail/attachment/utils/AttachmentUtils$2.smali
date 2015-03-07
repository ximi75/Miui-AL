.class final Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->startAnimation(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animationEndImageId:Ljava/lang/Integer;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;->val$animationEndImageId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$2;->val$animationEndImageId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 404
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 398
    return-void
.end method
