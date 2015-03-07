.class final Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;
.super Ljava/lang/Object;
.source "SoftKeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/SoftKeyboardUtil;->addOnSoftKeyBoardVisibleListener(Landroid/app/Activity;Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$listener:Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;->val$decorView:Landroid/view/View;

    iput-object p2, p0, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;->val$listener:Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 15
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 17
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v5

    .line 18
    .local v0, "displayHight":I
    iget-object v4, p0, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 19
    .local v1, "hight":I
    int-to-double v4, v0

    int-to-double v6, v1

    div-double/2addr v4, v6

    const-wide v6, 0x3fe999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const/4 v3, 0x1

    .line 26
    .local v3, "visible":Z
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$1;->val$listener:Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;

    invoke-interface {v4, v3}, Lcom/kingsoft/mail/compose/SoftKeyboardUtil$OnSoftKeyBoardVisibleListener;->onSoftKeyBoardVisible(Z)V

    .line 27
    return-void

    .line 19
    .end local v3    # "visible":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
