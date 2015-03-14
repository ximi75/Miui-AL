.class Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;
.super Lcom/kingsoft/mail/bitmap/TileDrawable;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/bitmap/AttachmentDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Placeholder"
.end annotation


# instance fields
.field private mPulseAlphaFraction:F

.field private final mPulseAnimator:Landroid/animation/ValueAnimator;

.field private mPulseEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;II)V
    .locals 7
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "coordinates"    # Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;
    .param p4, "fadeOutDurationMs"    # I
    .param p5, "tileColor"    # I

    .prologue
    const/4 v6, 0x2

    .line 445
    iget v2, p3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderWidth:I

    iget v3, p3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->placeholderHeight:I

    move-object v0, p0

    move-object v1, p1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/bitmap/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    .line 440
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    .line 447
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    .line 449
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 450
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 451
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$1;-><init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder$2;-><init>(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    return-void

    .line 447
    :array_0
    .array-data 4
        0x37
        0xff
    .end array-data
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;F)F
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;
    .param p1, "x1"    # F

    .prologue
    .line 436
    iput p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    return p1
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    return-void
.end method

.method private stopPulsing()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 481
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    .line 482
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->setInnerAlpha(I)V

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method public setInnerAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 468
    int-to-float v0, p1

    iget v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAlphaFraction:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/kingsoft/mail/bitmap/TileDrawable;->setInnerAlpha(I)V

    .line 469
    return-void
.end method

.method public setPulseEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    .line 473
    iget-boolean v0, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    .line 476
    :cond_0
    return-void
.end method

.method public setVisible(Z)Z
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 488
    invoke-super {p0, p1}, Lcom/kingsoft/mail/bitmap/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 489
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseEnabled:Z

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/kingsoft/mail/bitmap/AttachmentDrawable$Placeholder;->stopPulsing()V

    goto :goto_0
.end method
