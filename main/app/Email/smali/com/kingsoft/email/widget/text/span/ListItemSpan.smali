.class public Lcom/kingsoft/email/widget/text/span/ListItemSpan;
.super Ljava/lang/Object;
.source "ListItemSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/span/ListItemSpan$1;,
        Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;,
        Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;
    }
.end annotation


# static fields
.field private static MEASURE_TEMPLATE:Ljava/lang/String; = null

.field public static final STANDARD_GAP_WIDTH:I = 0xf

.field private static mPaint:Landroid/graphics/Paint;


# instance fields
.field private mFontColor:I

.field private mFontSize:F

.field private mIsFontBold:Z

.field private mIsItalic:Z

.field private mIsUnderLine:Z

.field private mNumber:I

.field private mNumberWidth:F

.field private mStyleChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "XXXXXXXXXX"

    sput-object v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontColor:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    .line 55
    iput-boolean v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsItalic:Z

    .line 56
    iput-boolean v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsFontBold:Z

    .line 57
    iput-boolean v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsUnderLine:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/widget/text/span/ListItemSpan$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/widget/text/span/ListItemSpan$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/kingsoft/email/widget/text/span/ListItemSpan;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    return p1
.end method

.method private restorePaint(Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;)V
    .locals 2
    .param p1, "args"    # Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 180
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->isFakeBoldText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 183
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->getTextSkewX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 184
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    return-void
.end method

.method public static setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 49
    sput-object p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    .line 50
    return-void
.end method

.method private setPaintByProperties(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 188
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 193
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsFontBold:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsItalic:Z

    if-eqz v0, :cond_1

    .line 201
    const/high16 v0, -0x41800000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 203
    :cond_1
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "l"    # Landroid/text/Layout;

    .prologue
    .line 167
    check-cast p8, Landroid/text/Spanned;

    .end local p8    # "text":Ljava/lang/CharSequence;
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p9, :cond_0

    .line 168
    new-instance v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;

    invoke-direct {v2, p2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->save()Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;

    move-result-object v1

    .line 170
    .local v1, "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    invoke-direct {p0, p2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setPaintByProperties(Landroid/graphics/Paint;)V

    .line 171
    iget v2, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "numberStr":Ljava/lang/String;
    :goto_0
    add-int v2, p3, p4

    int-to-float v2, v2

    int-to-float v3, p6

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    invoke-direct {p0, v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->restorePaint(Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;)V

    .line 176
    .end local v0    # "numberStr":Ljava/lang/String;
    .end local v1    # "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    :cond_0
    return-void

    .line 171
    .restart local v1    # "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    :cond_1
    const-string/jumbo v0, "\u2022"

    goto :goto_0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    return v0
.end method

.method public getLeadingMargin(Z)I
    .locals 8
    .param p1, "first"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const v5, 0x989680

    const v3, 0xf4240

    const/4 v4, 0x0

    .line 130
    iget-boolean v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->save()Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;

    move-result-object v0

    .line 132
    .local v0, "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setPaintByProperties(Landroid/graphics/Paint;)V

    .line 133
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-gez v1, :cond_1

    .line 134
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    .line 157
    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->restorePaint(Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;)V

    .line 158
    iput-boolean v4, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 160
    .end local v0    # "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    :cond_0
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xf

    return v1

    .line 135
    .restart local v0    # "paintArgs":Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    :cond_1
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-ge v1, v7, :cond_2

    .line 136
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto :goto_0

    .line 137
    :cond_2
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-lt v1, v7, :cond_3

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    .line 138
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto :goto_0

    .line 139
    :cond_3
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_4

    .line 140
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto :goto_0

    .line 141
    :cond_4
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_5

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_5

    .line 142
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto :goto_0

    .line 143
    :cond_5
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const v2, 0x186a0

    if-ge v1, v2, :cond_6

    .line 144
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto :goto_0

    .line 145
    :cond_6
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-ge v1, v3, :cond_7

    .line 146
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto/16 :goto_0

    .line 147
    :cond_7
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-lt v1, v3, :cond_8

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-ge v1, v5, :cond_8

    .line 148
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto/16 :goto_0

    .line 149
    :cond_8
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-lt v1, v3, :cond_9

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-ge v1, v5, :cond_9

    .line 150
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto/16 :goto_0

    .line 151
    :cond_9
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    if-lt v1, v5, :cond_a

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    const v2, 0x5f5e100

    if-ge v1, v2, :cond_a

    .line 152
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto/16 :goto_0

    .line 154
    :cond_a
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    sget-object v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->MEASURE_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumberWidth:F

    goto/16 :goto_0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    return v0
.end method

.method public isFontBold()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsFontBold:Z

    return v0
.end method

.method public isFontItalic()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsItalic:Z

    return v0
.end method

.method public isFontUnderline()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsUnderLine:Z

    return v0
.end method

.method public setFontBold(Z)V
    .locals 1
    .param p1, "isBold"    # Z

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsFontBold:Z

    if-eq v0, p1, :cond_0

    .line 122
    iput-boolean p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsFontBold:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 126
    :cond_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 1
    .param p1, "fontColor"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontColor:I

    if-eq v0, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontColor:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 82
    :cond_0
    return-void
.end method

.method public setFontItalic(Z)V
    .locals 1
    .param p1, "isItalic"    # Z

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsItalic:Z

    if-eq v0, p1, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsItalic:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 110
    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 86
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mFontSize:F

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mStyleChanged:Z

    .line 90
    :cond_0
    return-void
.end method

.method public setFontUnderline(Z)V
    .locals 0
    .param p1, "isUnderline"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mIsUnderLine:Z

    .line 94
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I

    .line 70
    return-void
.end method
