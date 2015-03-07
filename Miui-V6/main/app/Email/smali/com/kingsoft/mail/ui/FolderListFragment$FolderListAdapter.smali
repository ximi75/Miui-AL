.class public Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderListFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderListAdapter"
.end annotation


# static fields
.field private static final NO_HEADER_RESOURCE:I = -0x1


# instance fields
.field folderNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllFolderListCursor:Lcom/kingsoft/mail/content/ObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Lcom/kingsoft/mail/content/ObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

.field private final mIsDivided:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentFolderObserver:Lcom/kingsoft/mail/providers/RecentFolderObserver;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

.field unsortedFolderDrawerItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/FolderListFragment;Z)V
    .locals 2
    .param p2, "isDivided"    # Z

    .prologue
    const/4 v1, 0x0

    .line 696
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    .line 697
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 665
    new-instance v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$1;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mRecentFolderObserver:Lcom/kingsoft/mail/providers/RecentFolderObserver;

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    .line 683
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    .line 685
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mAllFolderListCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    .line 687
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mRegistered:Z

    .line 864
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->folderNames:Ljava/util/Map;

    .line 865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->unsortedFolderDrawerItems:Ljava/util/Map;

    .line 698
    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mIsDivided:Z

    .line 705
    new-instance v0, Lcom/kingsoft/mail/providers/FolderWatcher;

    iget-object v1, p1, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-direct {v0, v1, p0}, Lcom/kingsoft/mail/providers/FolderWatcher;-><init>(Lcom/kingsoft/mail/ui/RestrictedActivity;Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    .line 706
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/FolderWatcher;->updateAccountList([Lcom/kingsoft/mail/providers/Account;)V

    .line 707
    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->isCursorInvalid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateList()V

    return-void
.end method

.method private addFolderDivision(Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .param p3, "headerStringResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p1, "destination":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    .local p2, "source":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1036
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofHeader(Lcom/kingsoft/mail/ui/ControllableActivity;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 1041
    .local v0, "di":Lcom/kingsoft/mail/adapter/DrawerItem;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v2, v0, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-direct {p0, v2, p1, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->sortFolderDrawerItem(Ljava/util/List;Ljava/util/List;Lcom/kingsoft/mail/adapter/DrawerItem;)V

    goto :goto_0

    .line 1046
    .end local v0    # "di":Lcom/kingsoft/mail/adapter/DrawerItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V
    .locals 6
    .param p2, "folderType"    # I
    .param p3, "parent"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;I",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 1073
    .local v0, "ff":Lcom/kingsoft/mail/providers/Folder;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->unsortedFolderDrawerItems:Ljava/util/Map;

    iget v3, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v5

    invoke-static {v4, v0, p2, v5}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1076
    iget-object v2, v0, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-direct {p0, v2, p2, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 1079
    .end local v0    # "ff":Lcom/kingsoft/mail/providers/Folder;
    :cond_1
    return-void
.end method

.method private getCurrentAccountUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getRecentFolders(Lcom/kingsoft/mail/ui/RecentFolderList;)Ljava/util/List;
    .locals 4
    .param p1, "recentList"    # Lcom/kingsoft/mail/ui/RecentFolderList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/ui/RecentFolderList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v1, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    if-nez p1, :cond_1

    .line 803
    :cond_0
    return-object v1

    .line 798
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/kingsoft/mail/ui/RecentFolderList;->getRecentFolderList(Lcom/kingsoft/mail/utils/FolderUri;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 799
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v3

    if-nez v3, :cond_2

    .line 800
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isCursorInvalid()Z
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/content/ObjectCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateList()V
    .locals 2

    .prologue
    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "newFolderList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-boolean v1, v1, Lcom/kingsoft/mail/ui/FolderListFragment;->mHideAccounts:Z

    if-nez v1, :cond_0

    .line 835
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateListAccounts(Ljava/util/List;)V

    .line 837
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateListFolders(Ljava/util/List;)V

    .line 838
    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    .line 840
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->notifyDataSetChanged()V

    .line 841
    return-void
.end method

.method private recalculateListAccounts(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    .line 851
    .local v1, "allAccounts":[Lcom/kingsoft/mail/providers/Account;
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getCurrentAccountUri()Landroid/net/Uri;

    move-result-object v3

    .line 852
    .local v3, "currentAccountUri":Landroid/net/Uri;
    move-object v2, v1

    .local v2, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 853
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    invoke-virtual {v7, v0}, Lcom/kingsoft/mail/providers/FolderWatcher;->getUnreadCount(Lcom/kingsoft/mail/providers/Account;)I

    move-result v6

    .line 855
    .local v6, "unreadCount":I
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v8, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v9}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v9

    invoke-static {v7, v0, v6, v8, v9}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofAccount(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 858
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v6    # "unreadCount":I
    :cond_0
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v7, :cond_1

    .line 859
    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1200()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "recalculateListAccounts() with null current account."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 861
    :cond_1
    return-void
.end method

.method private recalculateListFolders(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->isCursorInvalid()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 877
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Account;->isAccountReady()Z

    move-result v12

    if-nez v12, :cond_0

    .line 878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v13}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofWaitView(Lcom/kingsoft/mail/ui/ControllableActivity;Landroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mIsDivided:Z

    if-nez v12, :cond_4

    .line 886
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    .line 887
    .local v3, "f":Lcom/kingsoft/mail/providers/Folder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z
    invoke-static {v12, v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1300(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    .line 896
    .end local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 898
    .local v5, "foldermap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Folder;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    .line 899
    .restart local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z
    invoke-static {v12, v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1300(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 900
    iget v12, v3, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 903
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    .line 905
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    .line 906
    .restart local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z
    invoke-static {v12, v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1300(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 907
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v12, :cond_8

    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 908
    :cond_8
    const/4 v12, 0x0

    iput v12, v3, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 927
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 928
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    .line 931
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v8, "localFoldersList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v7, "inboxFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v11, "remoteFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->folderNames:Ljava/util/Map;

    .line 936
    const/4 v2, 0x0

    .line 938
    .local v2, "currentFolderFound":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    .line 939
    .restart local v3    # "f":Lcom/kingsoft/mail/providers/Folder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # invokes: Lcom/kingsoft/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z
    invoke-static {v12, v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1300(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 940
    if-nez v2, :cond_b

    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v13}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 941
    const/4 v2, 0x1

    .line 943
    :cond_b
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v12, :cond_c

    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 944
    :cond_c
    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 945
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 948
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V

    .line 982
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    invoke-virtual {v12}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1003
    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v12}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v12

    sget-object v13, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    if-eq v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;
    invoke-static {v12}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$700(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;
    invoke-static {v12}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$700(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v12

    invoke-interface {v12}, Lcom/kingsoft/mail/ui/AccountController;->isDrawerPullEnabled()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1006
    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1200()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Current folder (%1$s) has disappeared for %2$s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/utils/FolderUri;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v13, v13, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->changeAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 1015
    :cond_e
    const v12, 0x7f100200

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v12}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->addFolderDivision(Ljava/util/List;Ljava/util/List;I)V

    .line 1017
    const/4 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v12}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->addFolderDivision(Ljava/util/List;Ljava/util/List;I)V

    .line 1019
    const v12, 0x7f10033a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->addFolderDivision(Ljava/util/List;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 910
    .end local v2    # "currentFolderFound":Z
    .end local v7    # "inboxFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    .end local v8    # "localFoldersList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    .end local v11    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    :cond_f
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 911
    .local v9, "parent":Ljava/lang/Integer;
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/providers/Folder;

    .line 912
    .local v10, "parentFolder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v10, :cond_9

    .line 913
    iget v12, v10, Lcom/kingsoft/mail/providers/Folder;->level:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v3, Lcom/kingsoft/mail/providers/Folder;->level:I

    .line 914
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_10

    .line 915
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Folder;

    .line 916
    .local v4, "ff":Lcom/kingsoft/mail/providers/Folder;
    iget v12, v4, Lcom/kingsoft/mail/providers/Folder;->level:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v4, Lcom/kingsoft/mail/providers/Folder;->level:I

    goto :goto_3

    .line 919
    .end local v4    # "ff":Lcom/kingsoft/mail/providers/Folder;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-object v12, v10, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 920
    iget-object v12, v10, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 951
    .end local v9    # "parent":Ljava/lang/Integer;
    .end local v10    # "parentFolder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v2    # "currentFolderFound":Z
    .restart local v7    # "inboxFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    .restart local v8    # "localFoldersList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    .restart local v11    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    :cond_11
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 952
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 955
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V

    goto/16 :goto_2

    .line 958
    :cond_12
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 962
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V

    goto/16 :goto_2

    .line 967
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->folderNames:Ljava/util/Map;

    iget-object v13, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_d

    .line 968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->folderNames:Ljava/util/Map;

    iget-object v13, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v14, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;
    invoke-static {v14}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lcom/kingsoft/mail/adapter/DrawerItem;->ofFolder(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/kingsoft/mail/adapter/DrawerItem;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 972
    iget-object v12, v3, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->generateFolderDrawerItem(Ljava/util/List;ILcom/kingsoft/mail/providers/Folder;)V

    goto/16 :goto_2
.end method

.method private sortFolderDrawerItem(Ljava/util/List;Ljava/util/List;Lcom/kingsoft/mail/adapter/DrawerItem;)V
    .locals 10
    .param p3, "parentDrawerItem"    # Lcom/kingsoft/mail/adapter/DrawerItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ">;",
            "Lcom/kingsoft/mail/adapter/DrawerItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "subFolders":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Folder;>;"
    .local p2, "destination":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/adapter/DrawerItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/Folder;

    .line 1050
    .local v2, "ff":Lcom/kingsoft/mail/providers/Folder;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->unsortedFolderDrawerItems:Ljava/util/Map;

    iget v8, v2, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 1052
    .local v3, "folderItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    iget v7, v2, Lcom/kingsoft/mail/providers/Folder;->level:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1053
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1064
    .local v4, "fullNameBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/adapter/DrawerItem;->setFolderFullName(Landroid/text/SpannableStringBuilder;)V

    .line 1065
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1067
    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->subFolders:Ljava/util/List;

    invoke-direct {p0, v7, p2, v3}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->sortFolderDrawerItem(Ljava/util/List;Ljava/util/List;Lcom/kingsoft/mail/adapter/DrawerItem;)V

    goto :goto_0

    .line 1055
    .end local v4    # "fullNameBuilder":Landroid/text/SpannableStringBuilder;
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Lcom/kingsoft/mail/adapter/DrawerItem;->getFolderFullName()Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1056
    .restart local v4    # "fullNameBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v0, " / "

    .line 1057
    .local v0, "divider":Ljava/lang/String;
    const-string/jumbo v7, " / "

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1058
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 1059
    .local v6, "start":I
    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v1, v6, v7

    .line 1060
    .local v1, "end":I
    iget-object v7, v2, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1061
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget v9, Lmiui/R$style;->TextAppearance_PreferenceCategory:I

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v8, 0x21

    invoke-virtual {v4, v7, v6, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1070
    .end local v0    # "divider":Ljava/lang/String;
    .end local v1    # "end":I
    .end local v2    # "ff":Lcom/kingsoft/mail/providers/Folder;
    .end local v3    # "folderItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    .end local v4    # "fullNameBuilder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "start":I
    :cond_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mRecentFolderObserver:Lcom/kingsoft/mail/providers/RecentFolderObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/RecentFolderObserver;->unregisterAndDestroy()V

    .line 1153
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/providers/FolderWatcher;->getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    .line 1160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1139
    const/4 v0, 0x0

    .line 1141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1147
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemType(Lcom/kingsoft/mail/adapter/DrawerItem;)I
    .locals 1
    .param p1, "item"    # Lcom/kingsoft/mail/adapter/DrawerItem;

    .prologue
    .line 1165
    iget v0, p1, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    iget v0, v0, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 5

    .prologue
    .line 1170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1171
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 1172
    .local v2, "item":Lcom/kingsoft/mail/adapter/DrawerItem;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I
    invoke-static {v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$900(Lcom/kingsoft/mail/ui/FolderListFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/adapter/DrawerItem;->isHighlighted(Lcom/kingsoft/mail/utils/FolderUri;I)Z

    move-result v1

    .line 1174
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    .line 1179
    .end local v0    # "i":I
    .end local v1    # "isSelected":Z
    .end local v2    # "item":Lcom/kingsoft/mail/adapter/DrawerItem;
    :goto_1
    return v0

    .line 1170
    .restart local v0    # "i":I
    .restart local v1    # "isSelected":Z
    .restart local v2    # "item":Lcom/kingsoft/mail/adapter/DrawerItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1179
    .end local v1    # "isSelected":Z
    .end local v2    # "item":Lcom/kingsoft/mail/adapter/DrawerItem;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 724
    .local v1, "item":Lcom/kingsoft/mail/adapter/DrawerItem;
    invoke-virtual {v1, p2, p3}, Lcom/kingsoft/mail/adapter/DrawerItem;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 725
    .local v3, "view":Landroid/view/View;
    iget v2, v1, Lcom/kingsoft/mail/adapter/DrawerItem;->mType:I

    .line 726
    .local v2, "type":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$900(Lcom/kingsoft/mail/ui/FolderListFragment;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/kingsoft/mail/adapter/DrawerItem;->isHighlighted(Lcom/kingsoft/mail/utils/FolderUri;I)Z

    move-result v0

    .line 732
    .local v0, "isSelected":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v4, v4, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v5

    iget v5, v5, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    if-eq v4, v5, :cond_0

    move-object v4, v3

    .line 739
    check-cast v4, Lcom/kingsoft/mail/ui/FolderItemView;

    iget-object v5, v1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v5, v5, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/ui/FolderItemView;->overrideUnreadCount(I)V

    .line 741
    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    iget-object v5, v1, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v5, v5, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iput v5, v4, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 743
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter$2;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 752
    :cond_0
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Lcom/kingsoft/mail/adapter/DrawerItem;->getViewTypes()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 774
    .local v0, "drawerItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/adapter/DrawerItem;->isItemEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyAllAccountsChanged()V
    .locals 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$700(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    # getter for: Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->access$700(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/AccountController;->setFolderWatcher(Lcom/kingsoft/mail/providers/FolderWatcher;)V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mRegistered:Z

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/FolderWatcher;->updateAccountList([Lcom/kingsoft/mail/providers/Account;)V

    .line 717
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->this$0:Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->refreshActionBarTitle()V

    .line 718
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateList()V

    .line 719
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
    .line 1131
    .local p1, "cursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mAllFolderListCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    .line 1132
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateList()V

    .line 1133
    return-void
.end method

.method public setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V
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
    .line 1123
    .local p1, "cursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->mCursor:Lcom/kingsoft/mail/content/ObjectCursor;

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->recalculateList()V

    .line 1127
    :cond_0
    return-void
.end method
