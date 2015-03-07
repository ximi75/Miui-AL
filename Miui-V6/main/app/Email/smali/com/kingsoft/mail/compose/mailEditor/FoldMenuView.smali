.class public Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
.super Landroid/widget/LinearLayout;
.source "FoldMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;
    }
.end annotation


# instance fields
.field private container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

.field private listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->setOrientation(I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private getUnfoldWidth()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 63
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    .line 32
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->setOnFoldFinishListener(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer$OnAnimateFinishListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    .line 37
    invoke-virtual {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-super {p0, p1, v3, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0, p1, p3}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public fold()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->fold()V

    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;->onFold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    .line 73
    :cond_0
    return-void
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    return-object v0
.end method

.method public isUnfold()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold()Z

    move-result v0

    return v0
.end method

.method public onAnimateFinish()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;->onAnimateFinish(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->isUnfold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->fold()V

    .line 51
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    invoke-interface {v0, p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;->onFold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v0, v1, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->measure(II)V

    .line 54
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->container:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;

    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuContainer;->unfold(I)V

    .line 55
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    invoke-direct {p0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getUnfoldWidth()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;->onUnfold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;I)V

    goto :goto_0
.end method

.method public setOnFoldListener(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;

    .line 68
    return-void
.end method
