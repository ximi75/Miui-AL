.class public Lcom/kingsoft/mail/ui/CustomQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "CustomQuickContactBadge.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method private getMeasuredSize(I)I
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 40
    move v0, p1

    .line 42
    .local v0, "retSize":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 43
    add-int/lit8 v0, v0, 0x6

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    :cond_0
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->getMeasuredSize(I)I

    move-result v1

    .line 34
    .local v1, "width":I
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->getMeasuredSize(I)I

    move-result v0

    .line 36
    .local v0, "height":I
    invoke-super {p0, v1, v0}, Landroid/widget/QuickContactBadge;->onMeasure(II)V

    .line 37
    return-void
.end method
