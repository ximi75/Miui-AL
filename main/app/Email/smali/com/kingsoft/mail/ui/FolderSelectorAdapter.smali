.class public Lcom/kingsoft/mail/ui/FolderSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;,
        Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    }
.end annotation


# instance fields
.field private mExcludedFolder:Lcom/kingsoft/mail/providers/Folder;

.field protected final mFolderRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folders"    # Landroid/database/Cursor;
    .param p3, "layout"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "excludedFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput p3, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mLayout:I

    .line 109
    iput-object p4, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 1
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
    .line 98
    .local p3, "initiallySelected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    iput p4, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mLayout:I

    .line 101
    iput-object p5, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p2, p3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 103
    return-void
.end method

.method private folderSort(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    new-instance v9, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 214
    .local v9, "root":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 216
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    .local v6, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;>;"
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 220
    .local v3, "folderRow":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    # getter for: Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    .line 222
    .local v2, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v11, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v11}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 223
    .local v5, "node":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    if-nez v5, :cond_1

    .line 224
    new-instance v5, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local v5    # "node":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    invoke-direct {v5, v3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 225
    .restart local v5    # "node":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    iget-object v11, v2, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v11}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_1
    # getter for: Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v11

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v11, :cond_0

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v11

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 231
    :cond_0
    invoke-virtual {v9, v5}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->addChild(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;)V

    goto :goto_0

    .line 227
    :cond_1
    iput-object v3, v5, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    goto :goto_1

    .line 234
    :cond_2
    iget-object v11, v2, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 235
    .local v7, "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    if-nez v7, :cond_3

    .line 236
    new-instance v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local v7    # "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 237
    .restart local v7    # "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    iget-object v11, v2, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_3
    invoke-virtual {v7, v5}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->addChild(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;)V

    goto :goto_0

    .line 243
    .end local v2    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v3    # "folderRow":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v5    # "node":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    .end local v7    # "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 247
    new-instance v10, Ljava/util/ArrayDeque;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 248
    .local v10, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;>;"
    invoke-interface {v10, v9}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 250
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .local v1, "currentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    if-eqz v1, :cond_9

    .line 251
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 255
    .restart local v7    # "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    if-eqz v7, :cond_7

    iget-boolean v11, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    if-nez v11, :cond_7

    .line 258
    iget-object v11, v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    if-eqz v11, :cond_6

    iget-object v11, v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    iget-object v11, v11, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 260
    :cond_6
    iget-object v11, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v11}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v11

    iget-object v8, v11, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 269
    .local v8, "pathName":Ljava/lang/String;
    :goto_3
    iget-object v11, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    iput-object v8, v11, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    .line 270
    iget-object v11, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 274
    .end local v8    # "pathName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->pollChild()Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;

    move-result-object v0

    .line 275
    .local v0, "childNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    if-eqz v0, :cond_5

    .line 277
    invoke-interface {v10, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 279
    invoke-interface {v10, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 266
    .end local v0    # "childNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    # getter for: Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v12}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v12

    iget-object v12, v12, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "pathName":Ljava/lang/String;
    goto :goto_3

    .line 283
    .end local v7    # "parentNode":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$TreeNode;
    .end local v8    # "pathName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private hasHeader()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public correctPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method protected createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 9
    .param p1, "folders"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "initiallySelected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "allFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    :cond_1
    new-instance v1, Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v1, p1}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    .line 123
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz p2, :cond_4

    iget-object v7, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v7}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 126
    .local v3, "isSelected":Z
    :goto_1
    new-instance v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-direct {v4, v1, v3}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;-><init>(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 127
    .local v4, "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v3    # "isSelected":Z
    .end local v4    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_2
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->folderSort(Ljava/util/List;)V

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v6, "userUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v5, "systemUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 140
    .restart local v4    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 141
    .restart local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    iget v7, v1, Lcom/kingsoft/mail/providers/Folder;->flags:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 143
    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 144
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v5    # "systemUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    .end local v6    # "userUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 146
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    .restart local v5    # "systemUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    .restart local v6    # "userUnselected":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    :cond_5
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->meetsRequirements(Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 148
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 149
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 151
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v4    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_8
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->correctPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-wide/16 v0, -0x1

    .line 313
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 340
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 341
    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/view/View;
    move-object v7, p2

    .line 343
    .local v7, "view":Landroid/widget/TextView;
    :goto_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .end local v7    # "view":Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 341
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040083

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v7, v8

    goto :goto_0

    .line 348
    :cond_1
    if-nez p2, :cond_4

    .line 349
    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mLayout:I

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 353
    .local v7, "view":Landroid/view/View;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 354
    .local v6, "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    .line 355
    .local v3, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v8, v6, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v4, v6, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    .line 357
    .local v4, "folderDisplay":Ljava/lang/String;
    :goto_3
    const v8, 0x7f0c004c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 358
    .local v0, "checkBox":Landroid/widget/CompoundButton;
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 362
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 365
    :cond_2
    const v8, 0x7f0c022d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 366
    .local v2, "display":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 367
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_3
    const v8, 0x7f0c0118

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 370
    .local v1, "colorBlock":Landroid/view/View;
    const v8, 0x7f0c011a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 371
    .local v5, "iconView":Landroid/widget/ImageView;
    invoke-static {v3, v1}, Lcom/kingsoft/mail/providers/Folder;->setFolderBlockColor(Lcom/kingsoft/mail/providers/Folder;Landroid/view/View;)V

    .line 372
    invoke-static {v3, v5}, Lcom/kingsoft/mail/providers/Folder;->setIcon(Lcom/kingsoft/mail/providers/Folder;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 351
    .end local v0    # "checkBox":Landroid/widget/CompoundButton;
    .end local v1    # "colorBlock":Landroid/view/View;
    .end local v2    # "display":Landroid/widget/TextView;
    .end local v3    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v4    # "folderDisplay":Ljava/lang/String;
    .end local v5    # "iconView":Landroid/widget/ImageView;
    .end local v6    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    move-object v7, p2

    .restart local v7    # "view":Landroid/view/View;
    goto :goto_2

    .line 355
    .restart local v3    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v6    # "row":Lcom/kingsoft/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_5
    iget-object v4, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x2

    return v0
.end method

.method protected final isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected meetsRequirements(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 291
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
