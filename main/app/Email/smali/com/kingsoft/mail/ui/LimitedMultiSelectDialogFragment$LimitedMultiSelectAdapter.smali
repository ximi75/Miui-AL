.class Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "LimitedMultiSelectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedMultiSelectAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSelectedValues:I

.field private final mSelectedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "maxSelectedValues"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    .line 168
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    .line 170
    invoke-static {p4}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    .line 172
    iput p4, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    .line 174
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Each entry must have a corresponding value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public addSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedValue"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 210
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 213
    return-object v0

    .end local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    :cond_0
    move-object v0, p2

    .line 207
    check-cast v0, Landroid/widget/CheckedTextView;

    .restart local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 245
    iget v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    iget-object v2, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedValue"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 272
    return-void
.end method

.method public setSelected(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "selectedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 260
    iget-object v0, p0, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method
