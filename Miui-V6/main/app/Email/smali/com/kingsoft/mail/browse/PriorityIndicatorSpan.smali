.class public Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PriorityIndicatorSpan.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaddingAbove:I

.field private final mPaddingH:I

.field private final mPaddingV:I

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "paddingV"    # I
    .param p4, "paddingH"    # I
    .param p5, "paddingAbove"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mResId:I

    .line 60
    iput p3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingV:I

    .line 61
    iput p4, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingH:I

    .line 62
    iput p5, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingAbove:I

    .line 63
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 73
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 78
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 83
    :cond_1
    return-object v0
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    add-int v2, p6, p8

    iget v3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingAbove:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 110
    .local v1, "transY":I
    iget v2, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingH:I

    int-to-float v2, v2

    add-float/2addr v2, p5

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 91
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 92
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 93
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingV:I

    sub-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 94
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 95
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingV:I

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 96
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingV:I

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 99
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/kingsoft/mail/browse/PriorityIndicatorSpan;->mPaddingH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    return v2
.end method
