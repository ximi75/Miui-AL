.class public Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;
.super Landroid/widget/HorizontalScrollView;
.source "FoldMenuContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;
    }
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x2710

.field private static final SCROLL_MAX_DIST:I = 0x7fff


# instance fields
.field private container:Landroid/widget/LinearLayout;

.field private expectWidth:I

.field private isUnfold:Z

.field private listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    .line 40
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iput-boolean v3, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold:Z

    .line 46
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->setVisibility(I)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->setHorizontalScrollBarEnabled(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 99
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public fold()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold:Z

    .line 78
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->expectWidth:I

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    const/16 v3, 0x7fff

    const/16 v5, 0x2710

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->requestLayout()V

    .line 83
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->invalidate()V

    .line 84
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isUnfold()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;

    invoke-interface {v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;->onAnimateFinish()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 120
    .local v0, "curx":I
    iget-boolean v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold:Z

    if-eqz v1, :cond_3

    .line 121
    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->expectWidth:I

    if-lt v0, v1, :cond_2

    .line 122
    iget v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->expectWidth:I

    .line 123
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 124
    const/4 v0, -0x2

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->requestLayout()V

    .line 137
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->invalidate()V

    .line 138
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 127
    :cond_3
    iget v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->expectWidth:I

    sub-int v0, v1, v0

    .line 128
    if-gtz v0, :cond_2

    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 131
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnFoldFinishListener(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;)V
    .locals 0
    .param p1, "l"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;

    .line 36
    return-void
.end method

.method public unfold(I)V
    .locals 6
    .param p1, "expectWidth"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->setVisibility(I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold:Z

    .line 62
    iput p1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->expectWidth:I

    .line 64
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->scroller:Landroid/widget/Scroller;

    const/16 v3, 0x7fff

    const/16 v5, 0x2710

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 66
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->requestLayout()V

    .line 67
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->invalidate()V

    .line 68
    invoke-virtual {p0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
