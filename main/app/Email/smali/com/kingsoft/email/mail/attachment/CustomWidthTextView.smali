.class public Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;
.super Landroid/widget/TextView;
.source "CustomWidthTextView.java"


# instance fields
.field private fWidthPercent:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/high16 v0, 0x3f800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;

    .line 27
    sget-object v1, Lcom/android/email/R$styleable;->CustomWidthTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/high16 v0, 0x3f800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 50
    .local v1, "widthSize":I
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    .local v0, "charSequence":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    int-to-float v2, v1

    iget-object v3, p0, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->fWidthPercent:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/attachment/CustomWidthTextView;->setMaxWidth(I)V

    .line 57
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 58
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 45
    return-void
.end method
