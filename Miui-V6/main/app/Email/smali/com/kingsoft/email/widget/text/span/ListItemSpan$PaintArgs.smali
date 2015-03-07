.class Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
.super Ljava/lang/Object;
.source "ListItemSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/span/ListItemSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaintArgs"
.end annotation


# instance fields
.field private isFakeBoldText:Z

.field private mOldColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mStyle:Landroid/graphics/Paint$Style;

.field private mTextSize:F

.field private mTextSkewX:F


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    .line 215
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mOldColor:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mTextSize:F

    return v0
.end method

.method public getTextSkewX()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mTextSkewX:F

    return v0
.end method

.method public isFakeBoldText()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->isFakeBoldText:Z

    return v0
.end method

.method public save()Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mStyle:Landroid/graphics/Paint$Style;

    .line 243
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mOldColor:I

    .line 244
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFakeBoldText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->isFakeBoldText:Z

    .line 245
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mTextSize:F

    .line 246
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$PaintArgs;->mTextSkewX:F

    .line 247
    return-object p0
.end method
