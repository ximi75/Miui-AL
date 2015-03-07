.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;
.super Lcom/kingsoft/mail/bitmap/TileDrawable;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Progress"
.end annotation


# instance fields
.field private final mRotateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V
    .locals 6
    .param p1, "progress"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "coordinates"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .param p4, "fadeOutDurationMs"    # I
    .param p5, "tileColor"    # I

    .prologue
    .line 515
    iget v2, p3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarWidth:I

    iget v3, p3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->progressBarHeight:I

    move-object v0, p0

    move-object v1, p1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/bitmap/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 518
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 520
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 522
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$1;-><init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 528
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress$2;-><init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 536
    return-void

    .line 518
    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public setVisible(Z)Z
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 540
    invoke-super {p0, p1}, Lcom/kingsoft/mail/bitmap/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 541
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 554
    :cond_0
    :goto_0
    return v0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->getCurrentAlpha()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
