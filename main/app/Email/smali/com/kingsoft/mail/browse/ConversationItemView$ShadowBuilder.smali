.class Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowBuilder"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mDragDesc:Ljava/lang/String;

.field private mDragDescX:I

.field private mDragDescY:I

.field private final mTouchX:I

.field private final mTouchY:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/ConversationItemView;Landroid/view/View;III)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "count"    # I
    .param p4, "touchX"    # I
    .param p5, "touchY"    # I

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    .line 2996
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2997
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    .line 2998
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 3000
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-static {v0, v1, p3}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    .line 3002
    iput p4, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mTouchX:I

    .line 3003
    iput p5, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mTouchY:I

    .line 3004
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 3021
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3022
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3023
    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$100()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v1, v1, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3024
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescY:I

    int-to-float v2, v2

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$100()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$100()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3026
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3009
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3010
    .local v1, "width":I
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3012
    .local v0, "height":I
    # getter for: Lcom/kingsoft/mail/browse/ConversationItemView;->sPaint:Landroid/text/TextPaint;
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemView;->access$100()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v3, v3, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3013
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescX:I

    .line 3014
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/kingsoft/mail/browse/ConversationItemView;

    iget-object v2, v2, Lcom/kingsoft/mail/browse/ConversationItemView;->mCoordinates:Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/kingsoft/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    float-to-int v2, v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescY:I

    .line 3015
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 3016
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mTouchX:I

    iget v3, p0, Lcom/kingsoft/mail/browse/ConversationItemView$ShadowBuilder;->mTouchY:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 3017
    return-void
.end method
