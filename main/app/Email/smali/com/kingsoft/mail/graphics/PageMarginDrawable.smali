.class public Lcom/kingsoft/mail/graphics/PageMarginDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "PageMarginDrawable.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeft"    # I
    .param p3, "insetTop"    # I
    .param p4, "insetRight"    # I
    .param p5, "insetBottom"    # I
    .param p6, "color"    # I

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/graphics/PageMarginDrawable;->mPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/kingsoft/mail/graphics/PageMarginDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/kingsoft/mail/graphics/PageMarginDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/graphics/PageMarginDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method
