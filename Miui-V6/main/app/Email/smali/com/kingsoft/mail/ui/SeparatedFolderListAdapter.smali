.class public Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedFolderListAdapter.java"


# static fields
.field public static final TYPE_ITEM:I = 0x1

.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/FolderSelectorAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSection(Lcom/kingsoft/mail/ui/FolderSelectorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/kingsoft/mail/ui/FolderSelectorAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "total":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;

    .line 58
    .local v0, "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 59
    goto :goto_0

    .line 60
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;

    .line 41
    .local v0, "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getCount()I

    move-result v2

    .line 44
    .local v2, "size":I
    if-eqz p1, :cond_0

    if-ge p1, v2, :cond_1

    .line 45
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 50
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 48
    .restart local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .restart local v2    # "size":I
    :cond_1
    sub-int/2addr p1, v2

    .line 49
    goto :goto_0

    .line 50
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "type":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;

    .line 76
    .local v0, "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getCount()I

    move-result v2

    .line 78
    .local v2, "size":I
    if-eqz p1, :cond_0

    if-ge p1, v2, :cond_1

    .line 79
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 86
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :goto_1
    return v4

    .line 83
    .restart local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .restart local v2    # "size":I
    :cond_1
    sub-int/2addr p1, v2

    .line 84
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 85
    goto :goto_0

    .line 86
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;

    .line 102
    .local v0, "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getCount()I

    move-result v2

    .line 103
    .local v2, "size":I
    if-eqz p1, :cond_0

    if-ge p1, v2, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 109
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 107
    .restart local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .restart local v2    # "size":I
    :cond_1
    sub-int/2addr p1, v2

    .line 108
    goto :goto_0

    .line 109
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
    .end local v2    # "size":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "total":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 68
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 69
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/SeparatedFolderListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
