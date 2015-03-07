.class public Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;
.super Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;
.source "ColorImageText.java"


# instance fields
.field private mDefaultColor:I

.field private mDefaultFontSize:Ljava/lang/String;

.field private mFontSize:F

.field private mPosIndex:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v2, 0x41400000

    iput v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    .line 21
    const-string/jumbo v2, "#36363d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultColor:I

    .line 37
    if-eqz p2, :cond_6

    .line 39
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "text"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 41
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    const-string/jumbo v3, "^[0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    const-string/jumbo v3, "@"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "^[0-9]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    const-string/jumbo v4, "@"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "resText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 47
    iput-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    .line 51
    .end local v1    # "resText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "textSize"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 53
    const-string/jumbo v2, "12sp"

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    const-string/jumbo v4, "@"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    .line 67
    :cond_5
    const/4 v2, 0x2

    iget v3, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    .line 70
    :cond_6
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "12sp"

    iput-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultFontSize:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getPosIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mPosIndex:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 76
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .local v3, "targetRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 78
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x40400000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget v4, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mFontSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget v4, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mDefaultColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 83
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v4, v5

    .line 84
    .local v0, "baseline":I
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    iget-object v4, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {p1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method public setPosIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/kingsoft/mail/compose/mailEditor/ColorImageText;->mPosIndex:I

    .line 91
    return-void
.end method
