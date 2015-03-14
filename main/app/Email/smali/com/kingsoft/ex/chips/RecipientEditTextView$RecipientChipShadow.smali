.class final Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientChipShadow"
.end annotation


# instance fields
.field private final mChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

.field final synthetic this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/ex/chips/RecipientEditTextView;Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 0
    .param p2, "chip"    # Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .prologue
    .line 3200
    iput-object p1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;->this$0:Lcom/kingsoft/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 3201
    iput-object p2, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3202
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, p1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->draw(Landroid/graphics/Canvas;)V

    .line 3214
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3206
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v1}, Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3207
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3208
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3209
    return-void
.end method
