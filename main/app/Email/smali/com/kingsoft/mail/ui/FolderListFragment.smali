.class public Lcom/kingsoft/mail/ui/FolderListFragment;
.super Lmiui/app/ListFragment;
.source "FolderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;,
        Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;,
        Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ALL_FOLDER_LIST_LOADER_ID:I = 0x1

.field private static final ARG_EXCLUDED_FOLDER_TYPES:Ljava/lang/String; = "arg-excluded-folder-types"

.field private static final ARG_FOLDER_LIST_URI:Ljava/lang/String; = "arg-folder-list-uri"

.field private static final ARG_PARENT_FOLDER:Ljava/lang/String; = "arg-parent-folder"

.field private static final BUNDLE_LIST_STATE:Ljava/lang/String; = "flf-list-state"

.field private static final BUNDLE_SELECTED_FOLDER:Ljava/lang/String; = "flf-selected-folder"

.field private static final BUNDLE_SELECTED_TYPE:Ljava/lang/String; = "flf-selected-type"

.field private static final FOLDER_LIST_LOADER_ID:I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected actionBarTitle:Landroid/widget/TextView;

.field private mAccountController:Lcom/kingsoft/mail/ui/AccountController;

.field private mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field public mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

.field private mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field public mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

.field private mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

.field private mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

.field private mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

.field protected mDropDownSingleChoiceMenu:Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

.field private mExcludedFolderTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderChanger:Lcom/kingsoft/mail/ui/FolderSelector;

.field private mFolderListUri:Landroid/net/Uri;

.field private mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

.field protected mHideAccounts:Z

.field protected mIsDivided:Z

.field private mListView:Landroid/widget/ListView;

.field private mNextAccount:Lcom/kingsoft/mail/providers/Account;

.field private mNextFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mParentFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mSelectedFolderType:I

.field private mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lmiui/app/ListFragment;-><init>()V

    .line 119
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mIsDivided:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mHideAccounts:Z

    .line 130
    sget-object v0, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 155
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 157
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 159
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    .line 161
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    .line 167
    iput v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 171
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    .line 173
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 176
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedFolder(Lcom/kingsoft/mail/providers/Folder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Account;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/providers/Folder;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/FolderSelector;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderChanger:Lcom/kingsoft/mail/ui/FolderSelector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/ui/AccountController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/FolderListFragment;)Lcom/kingsoft/mail/utils/FolderUri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/FolderListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/FolderListFragment;

    .prologue
    .line 102
    iget v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    return v0
.end method

.method private static getBundleFromArgs(Lcom/kingsoft/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parentFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p1, "folderListUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Folder;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "excludedFolderTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 237
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 238
    const-string/jumbo v1, "arg-parent-folder"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    :cond_0
    if-eqz p1, :cond_1

    .line 241
    const-string/jumbo v1, "arg-folder-list-uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    if-eqz p2, :cond_2

    .line 244
    const-string/jumbo v1, "arg-excluded-folder-types"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    :cond_2
    return-object v0
.end method

.method private getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-nez v0, :cond_1

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    goto :goto_0
.end method

.method private isFolderTypeExcluded(Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v3, 0x0

    .line 1389
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move v2, v3

    .line 1399
    :goto_0
    return v2

    .line 1393
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1394
    .local v0, "excludedType":I
    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1395
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "excludedType":I
    :cond_2
    move v2, v3

    .line 1399
    goto :goto_0
.end method

.method public static ofTopLevelTree(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/kingsoft/mail/ui/FolderListFragment;
    .locals 2
    .param p0, "folderListUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kingsoft/mail/ui/FolderListFragment;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "excludedFolderTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;-><init>()V

    .line 221
    .local v0, "fragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lcom/kingsoft/mail/ui/FolderListFragment;->getBundleFromArgs(Lcom/kingsoft/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    return-object v0
.end method

.method public static ofTree(Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/FolderListFragment;
    .locals 3
    .param p0, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 206
    new-instance v0, Lcom/kingsoft/mail/ui/FolderListFragment;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;-><init>()V

    .line 207
    .local v0, "fragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    iget-object v1, p0, Lcom/kingsoft/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/kingsoft/mail/ui/FolderListFragment;->getBundleFromArgs(Lcom/kingsoft/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 208
    return-object v0
.end method

.method private setInstanceFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string/jumbo v1, "arg-parent-folder"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 389
    const-string/jumbo v1, "arg-folder-list-uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "folderUri":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 391
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    .line 393
    :cond_1
    const-string/jumbo v1, "arg-excluded-folder-types"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mExcludedFolderTypes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private setSelectedAccount(Lcom/kingsoft/mail/providers/Account;Z)V
    .locals 6
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "force"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1348
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1350
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    .line 1351
    if-nez p1, :cond_3

    .line 1354
    sget-object v3, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "FLF.setSelectedAccount(null) called! Destroying existing loader."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1355
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1356
    .local v1, "manager":Landroid/app/LoaderManager;
    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1383
    .end local v1    # "manager":Landroid/app/LoaderManager;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v0, v2

    .line 1348
    goto :goto_0

    .line 1360
    .restart local v0    # "changed":Z
    :cond_3
    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    .line 1362
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v3, v5}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    .line 1367
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1368
    .restart local v1    # "manager":Landroid/app/LoaderManager;
    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1369
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1376
    sget-object v3, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 1377
    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    .line 1378
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    if-eqz v3, :cond_5

    .line 1379
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v3, p1}, Lcom/kingsoft/mail/ui/AccountController;->changeAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 1381
    :cond_5
    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_1
.end method

.method private setSelectedFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1299
    if-nez p1, :cond_1

    .line 1300
    sget-object v1, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 1301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    .line 1302
    sget-object v1, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "FolderListFragment.setSelectedFolder(null) called!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {p1, v2}, Lcom/kingsoft/mail/ui/FolderItemView;->areSameViews(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1316
    .local v0, "viewChanged":Z
    :cond_2
    iget v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1318
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    iput v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 1322
    :cond_4
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    .line 1323
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 1324
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1318
    :cond_5
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private viewFolderOrChangeAccount(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    .line 503
    .local v11, "item":Ljava/lang/Object;
    sget-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "viewFolderOrChangeAccount(%d): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v11, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 505
    const/4 v10, 0x0

    .line 507
    .local v10, "folderType":I
    instance-of v0, v11, Lcom/kingsoft/mail/adapter/DrawerItem;

    if-eqz v0, :cond_5

    move-object v8, v11

    .line 508
    check-cast v8, Lcom/kingsoft/mail/adapter/DrawerItem;

    .line 510
    .local v8, "drawerItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, v8}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getItemType(Lcom/kingsoft/mail/adapter/DrawerItem;)I

    move-result v12

    .line 511
    .local v12, "itemType":I
    const/4 v0, 0x2

    if-ne v12, v0, :cond_3

    .line 513
    const-string/jumbo v0, "A11"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 516
    const/4 v9, 0x0

    .line 517
    .local v9, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v6, v8, Lcom/kingsoft/mail/adapter/DrawerItem;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 519
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    add-int/lit8 v7, p1, 0x1

    .line 522
    .local v7, "defaultInboxPosition":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lcom/kingsoft/mail/ui/AccountController;->closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 551
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v7    # "defaultInboxPosition":I
    .end local v8    # "drawerItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    .end local v12    # "itemType":I
    :goto_0
    if-eqz v9, :cond_1

    .line 553
    const/4 v13, 0x0

    .line 556
    .local v13, "nextAccount":Lcom/kingsoft/mail/providers/Account;
    iput-object v9, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 557
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v13, v9}, Lcom/kingsoft/mail/ui/AccountController;->closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    .line 559
    const/4 v0, 0x2

    if-ne v10, v0, :cond_7

    const-string/jumbo v3, "recent"

    .line 560
    .local v3, "label":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "switch_folder"

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/Folder;->getTypeDescription()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 563
    .end local v3    # "label":Ljava/lang/String;
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v13    # "nextAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    :goto_2
    return-void

    .line 529
    .restart local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v8    # "drawerItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v12    # "itemType":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->changeAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    goto :goto_0

    .line 531
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_3
    if-nez v12, :cond_4

    .line 532
    const-string/jumbo v0, "A15"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 534
    iget-object v9, v8, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 535
    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    iget v10, v8, Lcom/kingsoft/mail/adapter/DrawerItem;->mFolderType:I

    iput v10, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 536
    sget-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "FLF.viewFolderOrChangeAccount folder=%s, type=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 540
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_4
    sget-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FolderListFragment: viewFolderOrChangeAccount(): Clicked on unset item in drawer. Offending item is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 544
    .end local v8    # "drawerItem":Lcom/kingsoft/mail/adapter/DrawerItem;
    .end local v12    # "itemType":I
    :cond_5
    instance-of v0, v11, Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_6

    move-object v9, v11

    .line 545
    check-cast v9, Lcom/kingsoft/mail/providers/Folder;

    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_0

    .line 548
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_6
    sget-object v0, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "viewFolderOrChangeAccount(): invalid item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 549
    const/4 v9, 0x0

    .restart local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_0

    .line 559
    .restart local v13    # "nextAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_7
    const-string/jumbo v3, "normal"

    goto :goto_1
.end method


# virtual methods
.method protected changeAccount(Lcom/kingsoft/mail/providers/Account;Z)V
    .locals 4
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "keepOpen"    # Z

    .prologue
    const/4 v3, 0x1

    .line 487
    iput-object p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    .line 488
    if-eqz p2, :cond_0

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 494
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "B01"

    invoke-static {v0, v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 491
    :cond_0
    iput v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 492
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mNextAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/FolderListFragment;->getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/kingsoft/mail/ui/AccountController;->closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0
.end method

.method protected getAllAccounts()[Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AllAccountObserver;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/kingsoft/mail/providers/Account;

    goto :goto_0
.end method

.method protected getListViewChoiceMode()I
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getFolderListViewChoiceMode()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 266
    .local v1, "activity":Landroid/app/Activity;
    instance-of v5, v1, Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v5, :cond_1

    .line 267
    sget-object v5, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "FolderListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 378
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_1
    check-cast v1, Lcom/kingsoft/mail/ui/ControllableActivity;

    .end local v1    # "activity":Landroid/app/Activity;
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 273
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 274
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v2

    .line 276
    .local v2, "controller":Lcom/kingsoft/mail/ui/FolderController;
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$1;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$1;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 283
    if-eqz v2, :cond_4

    .line 285
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-virtual {v5, v2}, Lcom/kingsoft/mail/providers/FolderObserver;->initialize(Lcom/kingsoft/mail/ui/FolderController;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v3

    .line 286
    .local v3, "currentFolder":Lcom/kingsoft/mail/providers/Folder;
    iput-object v3, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentFolderForUnreadCheck:Lcom/kingsoft/mail/providers/Folder;

    .line 294
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_5

    .line 295
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v5, p0, v6, v7}, Lcom/kingsoft/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;Lcom/kingsoft/mail/content/ObjectCursor;Lcom/kingsoft/mail/providers/Folder;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    .line 296
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v4

    .line 304
    .local v4, "selectedFolder":Lcom/kingsoft/mail/providers/Folder;
    :goto_2
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v5, v6}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    .line 311
    .local v0, "accountController":Lcom/kingsoft/mail/ui/AccountController;
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$2;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$2;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 317
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderSelector()Lcom/kingsoft/mail/ui/FolderSelector;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderChanger:Lcom/kingsoft/mail/ui/FolderSelector;

    .line 318
    if-eqz v0, :cond_3

    .line 320
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v5, v0}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/kingsoft/mail/ui/FolderListFragment;->setSelectedAccount(Lcom/kingsoft/mail/providers/Account;Z)V

    .line 322
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$3;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$3;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    .line 347
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    invoke-virtual {v5, v0}, Lcom/kingsoft/mail/providers/AllAccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)[Lcom/kingsoft/mail/providers/Account;

    .line 348
    iput-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountController:Lcom/kingsoft/mail/ui/AccountController;

    .line 351
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$4;

    invoke-direct {v5, p0}, Lcom/kingsoft/mail/ui/FolderListFragment$4;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    .line 368
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    invoke-virtual {v5, v0}, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)V

    .line 371
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/FolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "accountController":Lcom/kingsoft/mail/ui/AccountController;
    .end local v3    # "currentFolder":Lcom/kingsoft/mail/providers/Folder;
    .end local v4    # "selectedFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "currentFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_1

    .line 298
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-nez v5, :cond_6

    .line 299
    new-instance v5, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mIsDivided:Z

    invoke-direct {v5, p0, v6}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;-><init>(Lcom/kingsoft/mail/ui/FolderListFragment;Z)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    .line 301
    :cond_6
    move-object v4, v3

    .restart local v4    # "selectedFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    sget v0, Lmiui/R$style;->Theme_Light_NoTitle:I

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->setThemeRes(I)V

    .line 255
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 569
    if-nez p1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    .line 583
    .local v0, "folderListUri":Landroid/net/Uri;
    :goto_0
    new-instance v1, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .end local v0    # "folderListUri":Landroid/net/Uri;
    :goto_1
    return-object v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v1, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .restart local v0    # "folderListUri":Landroid/net/Uri;
    goto :goto_0

    .line 577
    .end local v0    # "folderListUri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 578
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCurrentAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v1, Lcom/kingsoft/mail/providers/Account;->allFolderListUri:Landroid/net/Uri;

    .restart local v0    # "folderListUri":Landroid/net/Uri;
    goto :goto_0

    .line 580
    .end local v0    # "folderListUri":Landroid/net/Uri;
    :cond_2
    sget-object v2, Lcom/kingsoft/mail/ui/FolderListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "FLF.onCreateLoader() with weird type"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 456
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 460
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AllAccountObserver;->unregisterAndDestroy()V

    .line 464
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mAllAccountsObserver:Lcom/kingsoft/mail/providers/AllAccountObserver;

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/DrawerClosedObserver;->unregisterAndDestroy()V

    .line 468
    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mDrawerObserver:Lcom/kingsoft/mail/providers/DrawerClosedObserver;

    .line 470
    :cond_3
    invoke-super {p0}, Lmiui/app/ListFragment;->onDestroyView()V

    .line 471
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->setInstanceFromBundle(Landroid/os/Bundle;)V

    .line 401
    const v1, 0x7f040085

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    .line 403
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 405
    if-eqz p3, :cond_0

    const-string/jumbo v1, "flf-list-state"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    const-string/jumbo v2, "flf-list-state"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 408
    :cond_0
    if-eqz p3, :cond_2

    const-string/jumbo v1, "flf-selected-folder"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    new-instance v1, Lcom/kingsoft/mail/utils/FolderUri;

    const-string/jumbo v2, "flf-selected-folder"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    .line 411
    const-string/jumbo v1, "flf-selected-type"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 417
    :cond_1
    :goto_0
    return-object v0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 475
    invoke-direct {p0, p3}, Lcom/kingsoft/mail/ui/FolderListFragment;->viewFolderOrChangeAccount(I)V

    .line 476
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, p2}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, p2}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setAllFolderListCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/FolderListFragment;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->setAllFolderListCursor(Lcom/kingsoft/mail/content/ObjectCursor;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Lmiui/app/ListFragment;->onPause()V

    .line 433
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 437
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 439
    const-string/jumbo v0, "flf-list-state"

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    if-eqz v0, :cond_1

    .line 442
    const-string/jumbo v0, "flf-selected-folder"

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v1}, Lcom/kingsoft/mail/utils/FolderUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_1
    const-string/jumbo v0, "flf-selected-type"

    iget v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Lmiui/app/ListFragment;->onStart()V

    .line 423
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 427
    invoke-super {p0}, Lmiui/app/ListFragment;->onStop()V

    .line 428
    return-void
.end method

.method public refreshActionBarTitle()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/FolderListFragment;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 630
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->actionBarTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public refreshBackground()V
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mListView:Landroid/widget/ListView;

    const-string/jumbo v1, "#eeeeee"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1411
    return-void
.end method

.method public setSelectedFolderType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1330
    iput p1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mSelectedFolderType:I

    .line 1331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lmiui/app/ListFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    const-string/jumbo v1, " folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mFolderListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mParentFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, " adapterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getCount()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 194
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public updateScroll()V
    .locals 2

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/kingsoft/mail/ui/FolderListFragment;->mCursorAdapter:Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;->getSelectedPosition()I

    move-result v0

    .line 1335
    .local v0, "selectedPosition":I
    if-ltz v0, :cond_0

    .line 1341
    :cond_0
    return-void
.end method
