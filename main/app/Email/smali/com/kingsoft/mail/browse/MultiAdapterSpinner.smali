.class public Lcom/kingsoft/mail/browse/MultiAdapterSpinner;
.super Landroid/widget/FrameLayout;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;,
        Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/browse/MergedAdapter",
            "<",
            "Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopup:Landroid/widget/ListPopupWindow;

.field private mSelectedPosition:I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>(Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    .line 100
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    .line 101
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 104
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/MergedAdapter;->getSubAdapterCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 144
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v5, v3}, Lcom/kingsoft/mail/browse/MergedAdapter;->getSubAdapter(I)Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    invoke-interface {v5}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->onShowPopup()V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->getPaddingLeft()I

    move-result v4

    .line 148
    .local v4, "spinnerPaddingLeft":I
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 150
    .local v1, "bgOffset":I
    if-eqz v0, :cond_1

    .line 151
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v1, v5

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 155
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 156
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 157
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 159
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgOffset":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "spinnerPaddingLeft":I
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    if-eq p3, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v1, p3}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 168
    .local v0, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    iget-object v1, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    check-cast v1, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    iget v2, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->canSelect(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iput p3, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    .line 174
    :goto_0
    new-instance v1, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;

    invoke-direct {v1, p0, v0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$1;-><init>(Lcom/kingsoft/mail/browse/MultiAdapterSpinner;Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;)V

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->post(Ljava/lang/Runnable;)Z

    .line 182
    .end local v0    # "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 183
    return-void

    .line 171
    .restart local v0    # "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    goto :goto_0
.end method

.method public varargs setAdapters([Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;)V
    .locals 1
    .param p1, "adapters"    # [Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->setAdapters([Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;)V

    .line 109
    return-void
.end method

.method public setSelectedItem(Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;I)V
    .locals 7
    .param p1, "adapter"    # Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;
    .param p2, "position"    # I

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "globalPosition":I
    const/4 v2, 0x0

    .line 115
    .local v2, "found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MergedAdapter;->getSubAdapterCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 116
    iget-object v6, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter;

    invoke-virtual {v6, v4}, Lcom/kingsoft/mail/browse/MergedAdapter;->getSubAdapter(I)Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    move-result-object v0

    .line 117
    .local v0, "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    if-ne v0, p1, :cond_2

    .line 118
    add-int/2addr v3, p2

    .line 119
    const/4 v2, 0x1

    .line 124
    .end local v0    # "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    :cond_0
    if-eqz v2, :cond_1

    .line 125
    invoke-interface {p1, p2}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->canSelect(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->removeAllViews()V

    .line 127
    const/4 v6, 0x0

    invoke-interface {p1, p2, v6, p0}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, "itemView":Landroid/view/View;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 129
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->addView(Landroid/view/View;)V

    .line 132
    invoke-interface {p1}, Lcom/kingsoft/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->getCount()I

    move-result v6

    if-ge p2, v6, :cond_1

    .line 133
    iput v3, p0, Lcom/kingsoft/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    .line 137
    .end local v5    # "itemView":Landroid/view/View;
    :cond_1
    return-void

    .line 122
    .restart local v0    # "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    :cond_2
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
