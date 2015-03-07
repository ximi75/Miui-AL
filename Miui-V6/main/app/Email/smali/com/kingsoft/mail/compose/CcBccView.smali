.class public Lcom/kingsoft/mail/compose/CcBccView;
.super Landroid/widget/RelativeLayout;
.source "CcBccView.java"


# instance fields
.field private cc_label:Landroid/widget/TextView;

.field private final mBcc:Landroid/view/View;

.field private final mCc:Landroid/view/View;

.field private mCcBottomLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/CcBccView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mCc:Landroid/view/View;

    .line 47
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    .line 48
    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->cc_label:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/CcBccView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mCcBottomLine:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->cc_label:Landroid/widget/TextView;

    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method private animate(Z)V
    .locals 5
    .param p1, "ccWasAlreadyShown"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/CcBccView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 75
    .local v1, "fadeDuration":I
    iget-object v2, p0, Lcom/kingsoft/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 77
    .local v0, "bccAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 79
    return-void

    .line 75
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method


# virtual methods
.method public isBccVisible()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCcVisible()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mCc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(ZZZ)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "showCc"    # Z
    .param p3, "showBcc"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 54
    if-eqz p3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->cc_label:Landroid/widget/TextView;

    const v3, 0x7f10010e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mCc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v3, p0, Lcom/kingsoft/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mCcBottomLine:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    if-eqz p1, :cond_3

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/compose/CcBccView;->animate(Z)V

    .line 71
    :goto_3
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->cc_label:Landroid/widget/TextView;

    const v3, 0x7f100110

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 60
    goto :goto_1

    :cond_2
    move v1, v2

    .line 61
    goto :goto_2

    .line 66
    :cond_3
    if-eqz p3, :cond_4

    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/compose/CcBccView;->mBcc:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/CcBccView;->requestLayout()V

    goto :goto_3
.end method
