.class public Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;
.super Ljava/lang/Object;
.source "FoldMenuManager.java"

# interfaces
.implements Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView$OnFoldListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;,
        Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;,
        Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;
    }
.end annotation


# static fields
.field private static final MAX_UNFOLD_VIEW:I = 0x2


# instance fields
.field private groupInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tmpRect0:Landroid/graphics/Rect;

.field private tmpRect1:Landroid/graphics/Rect;

.field private unfoldViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;",
            ">;"
        }
    .end annotation
.end field

.field private viewInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->unfoldViews:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect0:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect1:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->groupInfoMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->viewInfoMap:Ljava/util/Map;

    return-void
.end method

.method private adjustScroll(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;II)V
    .locals 0
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    .param p2, "expectWidth"    # I
    .param p3, "releaseWidth"    # I

    .prologue
    .line 128
    return-void
.end method

.method private notifyViewUnfold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V
    .locals 3
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->viewInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;

    .line 141
    .local v0, "vi":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v1, v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;

    invoke-interface {v1, p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;->onUnfold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    goto :goto_0
.end method

.method private updateGroupTitleVisibility(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V
    .locals 9
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .prologue
    .line 154
    iget-object v7, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->viewInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;

    .line 155
    .local v4, "vi":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;
    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->groupInfoMap:Ljava/util/Map;

    iget v8, v4, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->groupId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;

    .line 157
    .local v1, "gi":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;->title:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 160
    iget-object v3, v1, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;->title:Landroid/view/View;

    .line 162
    .local v3, "title":Landroid/view/View;
    iget-object v7, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect0:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 164
    iget-object v7, v1, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$GroupInfo;->foldViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 165
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;>;"
    const/4 v6, 0x1

    .line 166
    .local v6, "visible":Z
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .line 168
    .local v0, "a":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->isUnfold()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getContainer()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect1:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 172
    iget-object v7, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect0:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->tmpRect1:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    const/4 v6, 0x0

    .line 178
    .end local v0    # "a":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    :cond_3
    if-eqz v6, :cond_4

    const/4 v5, 0x0

    .line 180
    .local v5, "visibility":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 181
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 178
    .end local v5    # "visibility":I
    :cond_4
    const/16 v5, 0x8

    goto :goto_1
.end method

.method private updateMenuImageView(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    .param p2, "hilight"    # Z

    .prologue
    .line 131
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->viewInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;

    .line 132
    .local v0, "vi":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->imageView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->imageView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimateFinish(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V
    .locals 2
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->updateGroupTitleVisibility(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    .line 188
    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->adjustScroll(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;II)V

    .line 189
    return-void
.end method

.method public onFold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V
    .locals 1
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->unfoldViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->updateMenuImageView(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;Z)V

    .line 151
    return-void
.end method

.method public onUnfold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;I)V
    .locals 4
    .param p1, "view"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    .param p2, "expectWidth"    # I

    .prologue
    .line 93
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->unfoldViews:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "foldReleaseWidth":I
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->unfoldViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 98
    iget-object v2, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->unfoldViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;

    .line 101
    .local v1, "v":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getLeft()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->getWidth()I

    move-result v0

    .line 104
    :cond_0
    invoke-virtual {v1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;->fold()V

    .line 107
    .end local v1    # "v":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->adjustScroll(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;II)V

    .line 109
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->updateMenuImageView(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;Z)V

    .line 110
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->notifyViewUnfold(Lcom/kingsoft/mail/compose/mailEditor/FoldMenuView;)V

    .line 111
    return-void
.end method

.method public regist(II)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "foldViewId"    # I

    .prologue
    .line 79
    return-void
.end method

.method public registUnfoldListener(ILcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;)V
    .locals 3
    .param p1, "foldViewId"    # I
    .param p2, "l"    # Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager;->viewInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;

    .line 84
    .local v0, "vi":Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object p2, v0, Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$ViewInfo;->listener:Lcom/kingsoft/mail/compose/mailEditor/FoldMenuManager$OnUnfoldListener;

    goto :goto_0
.end method
