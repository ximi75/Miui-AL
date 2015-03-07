.class public Lcom/kingsoft/mail/ui/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private newColor:I

.field private newSize:I

.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;II)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/graphics/Typeface;
    .param p3, "size"    # I
    .param p4, "color"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    .line 46
    iput p3, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newSize:I

    .line 47
    iput p4, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newColor:I

    .line 48
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "newSize"    # I
    .param p3, "newColor"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 63
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 64
    const/4 v2, 0x0

    .line 69
    .local v2, "oldStyle":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 70
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 75
    const/high16 v3, -0x41800000

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 78
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    return-void

    .line 66
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newSize:I

    iget v2, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newColor:I

    invoke-static {p1, v0, v1, v2}, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V

    .line 53
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newSize:I

    iget v2, p0, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->newColor:I

    invoke-static {p1, v0, v1, v2}, Lcom/kingsoft/mail/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;II)V

    .line 58
    return-void
.end method
