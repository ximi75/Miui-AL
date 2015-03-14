.class public Lcom/kingsoft/mail/browse/FolderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "FolderSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;
    }
.end annotation


# instance fields
.field private final mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

.field private final mSpanned:Landroid/text/Spanned;

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;)V
    .locals 1
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "dims"    # Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    .line 67
    iput-object p1, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mSpanned:Landroid/text/Spanned;

    .line 68
    iput-object p2, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    .line 69
    return-void
.end method

.method private measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "includePaddingBefore"    # Z

    .prologue
    .line 87
    iget-object v3, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPadding()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v4}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPaddingExtraWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 88
    .local v1, "paddingW":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getMaxWidth()I

    move-result v0

    .line 90
    .local v0, "maxWidth":I
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v4, v1, 0x2

    add-int v2, v3, v4

    .line 91
    .local v2, "w":I
    if-eqz p5, :cond_0

    .line 92
    iget-object v3, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPaddingBefore()I

    move-result v3

    add-int/2addr v2, v3

    .line 95
    :cond_0
    if-le v2, v0, :cond_1

    .line 96
    move v2, v0

    .line 98
    :cond_1
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 21
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
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPadding()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v3}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPaddingExtraWidth()I

    move-result v3

    add-int v18, v2, v3

    .line 106
    .local v18, "paddingW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPaddingBefore()I

    move-result v17

    .line 107
    .local v17, "paddingBefore":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPaddingAbove()I

    move-result v16

    .line 108
    .local v16, "paddingAbove":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v2}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getMaxWidth()I

    move-result v13

    .line 110
    .local v13, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/CharacterStyle;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/CharacterStyle;

    .line 114
    .local v15, "otherSpans":[Landroid/text/style/CharacterStyle;
    move-object v9, v15

    .local v9, "arr$":[Landroid/text/style/CharacterStyle;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v14, v9, v11

    .line 115
    .local v14, "otherSpan":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v14, v2}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 114
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 118
    .end local v14    # "otherSpan":Landroid/text/style/CharacterStyle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/browse/FolderSpan;->measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I

    move-result v10

    .line 121
    .local v10, "bgWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v19

    .line 123
    .local v19, "prevColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v20

    .line 125
    .local v20, "prevStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    iget v3, v3, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    move/from16 v0, v17

    int-to-float v2, v0

    add-float v3, p5, v2

    add-int v2, p6, v16

    int-to-float v4, v2

    int-to-float v2, v10

    add-float v2, v2, p5

    move/from16 v0, v17

    int-to-float v5, v0

    add-float/2addr v5, v2

    move/from16 v0, p8

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    .end local v19    # "prevColor":I
    .end local v20    # "prevStyle":Landroid/graphics/Paint$Style;
    :cond_1
    if-ne v10, v13, :cond_2

    .line 136
    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    mul-int/lit8 v4, v18, 0x2

    sub-int v4, v10, v4

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 138
    const/16 p3, 0x0

    .line 139
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 141
    :cond_2
    move/from16 v0, v18

    int-to-float v2, v0

    add-float v2, v2, p5

    move/from16 v0, v17

    int-to-float v3, v0

    add-float v6, v2, v3

    add-int v2, p7, v16

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/browse/FolderSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 73
    if-eqz p5, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kingsoft/mail/browse/FolderSpan;->mDims:Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/FolderSpan$FolderSpanDimensions;->getPadding()I

    move-result v6

    .line 75
    .local v6, "paddingV":I
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 77
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 78
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 79
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 80
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 82
    .end local v6    # "paddingV":I
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/browse/FolderSpan;->measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I

    move-result v0

    return v0
.end method
