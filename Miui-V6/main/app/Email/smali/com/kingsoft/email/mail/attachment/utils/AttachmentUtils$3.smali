.class final Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->startAnimation(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animationEndImageId:Ljava/lang/Integer;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mime:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mime:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$animationEndImageId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 436
    const-string/jumbo v0, "AttachmentUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 438
    .local v3, "width":I
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 439
    .local v4, "height":I
    iget-object v0, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mime:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$animationEndImageId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$3;->val$mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/email/mail/attachment/ThumbnailUtility;->loadBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIILandroid/content/Context;)V

    .line 440
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 432
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 426
    return-void
.end method
