.class Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FolderListFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchicalFolderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;",
        "Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;"
    }
.end annotation


# static fields
.field private static final CHILD:I = 0x1

.field private static final PARENT:I


# instance fields
.field private final mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

.field private final mParent:Lcom/kingsoft/mail/providers/Folder;

.field private final mParentUri:Lcom/kingsoft/mail/utils/FolderUri;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderListFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/content/ObjectCursor;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p3, "parentFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1192
    .local p2, "c":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    .line 1193
    iget-object v0, p1, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040084

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1194
    iget-object v0, p1, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mDropHandler:Lcom/kingsoft/mail/ui/FolderItemView$DropHandler;

    .line 1195
    iput-object p3, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/kingsoft/mail/providers/Folder;

    .line 1196
    iget-object v0, p3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 1197
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    .line 1198
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 1262
    return-void
.end method

.method public getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 1266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemType(Lcom/kingsoft/mail/adapter/DrawerItem;)I
    .locals 1
    .param p1, "item"    # Lcom/kingsoft/mail/adapter/DrawerItem;

    .prologue
    .line 1272
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 1209
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    iget-object v1, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 6

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getCount()I

    move-result v0

    .line 1283
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1284
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 1285
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v4, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1286
    .local v3, "isSelected":Z
    if-eqz v3, :cond_0

    .line 1290
    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v2    # "i":I
    .end local v3    # "isSelected":Z
    :goto_1
    return v2

    .line 1283
    .restart local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v2    # "i":I
    .restart local v3    # "isSelected":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v3    # "isSelected":Z
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 1216
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v5, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1217
    .local v2, "isParent":Z
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 1218
    check-cast v1, Lcom/kingsoft/mail/ui/FolderItemView;

    .line 1225
    .local v1, "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    :goto_0
    iget-object v5, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1229
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iget-object v6, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    iget v6, v6, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    if-eq v5, v6, :cond_3

    const/4 v4, 0x1

    .line 1231
    .local v4, "unreadCountDiffers":Z
    :goto_1
    if-eqz v4, :cond_0

    .line 1232
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    iget v5, v5, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/ui/FolderItemView;->overrideUnreadCount(I)V

    .line 1235
    .end local v4    # "unreadCountDiffers":Z
    :cond_0
    const v5, 0x7f0c0118

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/kingsoft/mail/providers/Folder;->setFolderBlockColor(Lcom/kingsoft/mail/providers/Folder;Landroid/view/View;)V

    .line 1236
    const v5, 0x7f0c011a

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/kingsoft/mail/providers/Folder;->setIcon(Lcom/kingsoft/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 1237
    return-object v1

    .line 1220
    .end local v1    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    :cond_1
    if-eqz v2, :cond_2

    const v3, 0x7f040084

    .line 1221
    .local v3, "resId":I
    :goto_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/FolderItemView;

    .restart local v1    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    goto :goto_0

    .line 1220
    .end local v1    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    .end local v3    # "resId":I
    :cond_2
    const v3, 0x7f040041

    goto :goto_2

    .line 1229
    .restart local v1    # "folderItemView":Lcom/kingsoft/mail/ui/FolderItemView;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x2

    return v0
.end method

.method public notifyAllAccountsChanged()V
    .locals 0

    .prologue
    .line 1278
    return-void
.end method

.method public setAllFolderListCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p1, "cursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    return-void
.end method

.method public setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p1, "cursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->clear()V

    .line 1243
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->add(Ljava/lang/Object;)V

    .line 1246
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1247
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    .line 1249
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->add(Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    :cond_2
    return-void
.end method
