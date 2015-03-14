.class public Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;
.super Landroid/text/style/ImageSpan;
.source "VisibleRecipientChip.java"

# interfaces
.implements Lcom/kingsoft/ex/chips/recipientchip/DrawableRecipientChip;


# instance fields
.field private final mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/kingsoft/ex/chips/RecipientEntry;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 37
    new-instance v0, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-direct {v0, p2}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;-><init>(Lcom/kingsoft/ex/chips/RecipientEntry;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getDataId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getDisplay()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getEntry()Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isGalContact()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->isGalContact()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->setSelected(Z)V

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/recipientchip/SimpleRecipientChip;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
