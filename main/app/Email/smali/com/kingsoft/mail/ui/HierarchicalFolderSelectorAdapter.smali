.class public Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;
.super Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
.source "HierarchicalFolderSelectorAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folders"    # Landroid/database/Cursor;
    .param p3, "layout"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "excludedFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V

    .line 50
    iput-object p1, p0, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folders"    # Landroid/database/Cursor;
    .param p4, "layout"    # I
    .param p5, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "initiallySelected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->isHeader(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    :goto_0
    return-object v5

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 60
    .local v4, "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    .line 61
    .local v3, "folder":Lcom/kingsoft/mail/providers/Folder;
    const v6, 0x7f0c004c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 62
    .local v0, "checkBox":Landroid/widget/CompoundButton;
    const v6, 0x7f0c022d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "display":Landroid/widget/TextView;
    iget-object v6, v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v2, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 65
    .local v2, "displayText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v0, :cond_3

    .line 66
    iget-object v6, v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    :goto_2
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v6, v7}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 63
    .end local v2    # "displayText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->truncateHierarchy(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_1

    .line 66
    .restart local v2    # "displayText":Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->truncateHierarchy(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    goto :goto_2

    .line 69
    :cond_3
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method protected truncateHierarchy(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .param p1, "hierarchy"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    const-string/jumbo v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "splitHierarchy":[Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 94
    .local v1, "display":Landroid/text/SpannableStringBuilder;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-lez v7, :cond_0

    .line 95
    array-length v4, v5

    .line 96
    .local v4, "length":I
    if-le v4, v9, :cond_3

    .line 97
    aget-object v6, v5, v10

    .line 98
    .local v6, "topParentName":Ljava/lang/String;
    add-int/lit8 v7, v4, -0x2

    aget-object v0, v5, v7

    .line 99
    .local v0, "directParentName":Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    aget-object v2, v5, v7

    .line 109
    .local v2, "folderName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 111
    const/4 v7, 0x3

    if-le v4, v7, :cond_5

    .line 112
    const v3, 0x7f1001fb

    .line 116
    .local v3, "formatString":I
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v0, v8, v11

    invoke-virtual {v7, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    .end local v3    # "formatString":I
    :cond_2
    :goto_3
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, 0x7f0b0066

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v10, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 100
    .end local v0    # "directParentName":Ljava/lang/String;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v6    # "topParentName":Ljava/lang/String;
    :cond_3
    if-le v4, v11, :cond_4

    .line 101
    aget-object v6, v5, v10

    .line 102
    .restart local v6    # "topParentName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .restart local v0    # "directParentName":Ljava/lang/String;
    add-int/lit8 v7, v4, -0x1

    aget-object v2, v5, v7

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v0    # "directParentName":Ljava/lang/String;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v6    # "topParentName":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 106
    .restart local v6    # "topParentName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .restart local v0    # "directParentName":Ljava/lang/String;
    aget-object v2, v5, v10

    .restart local v2    # "folderName":Ljava/lang/String;
    goto :goto_1

    .line 114
    :cond_5
    const v3, 0x7f1001fa

    .restart local v3    # "formatString":I
    goto :goto_2

    .line 118
    .end local v3    # "formatString":I
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 119
    iget-object v7, p0, Lcom/kingsoft/mail/ui/HierarchicalFolderSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1001fc

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v0, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3
.end method
