.class public Lcom/kingsoft/mail/browse/MergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;,
        Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Lcom/kingsoft/mail/browse/MergedAdapter$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/MergedAdapter$1;-><init>(Lcom/kingsoft/mail/browse/MergedAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 64
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    .prologue
    .line 179
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x1

    .line 180
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 181
    .local v0, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->areAllItemsEnabled()Z

    move-result v3

    and-int/2addr v1, v3

    .line 182
    goto :goto_0

    .line 183
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_0
    return v1
.end method

.method public getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;
    .locals 7
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    .local v1, "adapterCount":I
    const/4 v3, 0x0

    .line 109
    .local v3, "i":I
    const/4 v2, 0x0

    .line 111
    .local v2, "count":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 112
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 113
    .local v0, "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v5

    add-int v4, v2, v5

    .line 114
    .local v4, "newCount":I
    if-ge p1, v4, :cond_0

    .line 115
    new-instance v5, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    sub-int v6, p1, v2

    invoke-direct {v5, v0, v6}, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;-><init>(Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;I)V

    .line 120
    .end local v0    # "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    .end local v4    # "newCount":I
    :goto_1
    return-object v5

    .line 117
    .restart local v0    # "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    .restart local v4    # "newCount":I
    :cond_0
    move v2, v4

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_0

    .line 120
    .end local v0    # "a":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    .end local v4    # "newCount":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 90
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 91
    .local v1, "count":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 92
    .local v0, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_0
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 174
    .local v0, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2, p2, p3}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 126
    .local v0, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 148
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v3

    .line 149
    .local v3, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    const/4 v2, 0x0

    .line 150
    .local v2, "otherViewTypeCount":I
    iget-object v5, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 151
    .local v0, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    iget-object v5, v3, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    if-ne v0, v5, :cond_2

    .line 156
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_0
    iget-object v5, v3, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    iget v6, v3, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v5, v6}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getItemViewType(I)I

    move-result v4

    .line 159
    .local v4, "type":I
    if-ltz v4, :cond_1

    .line 160
    add-int/2addr v4, v2

    .line 162
    :cond_1
    return v4

    .line 154
    .end local v4    # "type":I
    .restart local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_2
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 155
    goto :goto_0
.end method

.method public getSubAdapter(I)Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    return-object v0
.end method

.method public getSubAdapterCount()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 168
    .local v0, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2, p2, p3}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 139
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, "count":I
    iget-object v3, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 141
    .local v0, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    invoke-interface {v0}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 142
    goto :goto_0

    .line 143
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 188
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 189
    .local v0, "result":Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;, "Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/kingsoft/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public varargs setAdapters([Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/kingsoft/mail/browse/MergedAdapter;, "Lcom/kingsoft/mail/browse/MergedAdapter<TT;>;"
    .local p1, "adapters":[Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "[TT;"
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 69
    .local v0, "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 73
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    .line 75
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 76
    .restart local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    iget-object v2, p0, Lcom/kingsoft/mail/browse/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 78
    .end local v0    # "adapter":Lcom/kingsoft/mail/browse/MergedAdapter$ListSpinnerAdapter;, "TT;"
    :cond_1
    return-void
.end method
