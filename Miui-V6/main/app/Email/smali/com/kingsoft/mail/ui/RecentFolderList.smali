.class public final Lcom/kingsoft/mail/ui/RecentFolderList;
.super Ljava/lang/Object;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;,
        Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALPHABET_IGNORECASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EXCLUDED_FOLDERS:I = 0x2

.field private static final MAX_RECENT_FOLDERS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RecentFolderList"


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field private final mContext:Landroid/content/Context;

.field private final mFolderCache:Lcom/kingsoft/mail/utils/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingsoft/mail/utils/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/kingsoft/mail/ui/RecentFolderList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingsoft/mail/ui/RecentFolderList;->$assertionsDisabled:Z

    .line 81
    new-instance v0, Lcom/kingsoft/mail/ui/RecentFolderList$2;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/RecentFolderList$2;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/RecentFolderList;->ALPHABET_IGNORECASE:Ljava/util/Comparator;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 71
    new-instance v0, Lcom/kingsoft/mail/ui/RecentFolderList$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/RecentFolderList$1;-><init>(Lcom/kingsoft/mail/ui/RecentFolderList;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 132
    new-instance v0, Lcom/kingsoft/mail/utils/LruCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/utils/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    .line 134
    iput-object p1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/RecentFolderList;Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/RecentFolderList;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/RecentFolderList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/RecentFolderList;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/providers/Account;->matches(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 154
    .local v0, "accountSwitched":Z
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    invoke-virtual {v1}, Lcom/kingsoft/mail/utils/LruCache;->clear()V

    .line 159
    :cond_1
    return-void

    .line 153
    .end local v0    # "accountSwitched":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 262
    return-void
.end method

.method public getRecentFolderList(Lcom/kingsoft/mail/utils/FolderUri;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "excludedFolderUri"    # Lcom/kingsoft/mail/utils/FolderUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/utils/FolderUri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "excludedUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/utils/FolderUri;>;"
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v6, :cond_5

    sget-object v0, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    .line 234
    .local v0, "defaultInbox":Lcom/kingsoft/mail/utils/FolderUri;
    :goto_0
    sget-object v6, Lcom/kingsoft/mail/utils/FolderUri;->EMPTY:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    .local v4, "recent":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;>;"
    iget-object v6, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    invoke-virtual {v6}, Lcom/kingsoft/mail/utils/LruCache;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 241
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 242
    .local v5, "recentFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;

    .line 243
    .local v1, "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    # getter for: Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 244
    # getter for: Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 252
    .end local v1    # "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    :cond_4
    sget-object v6, Lcom/kingsoft/mail/ui/RecentFolderList;->ALPHABET_IGNORECASE:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    return-object v5

    .line 231
    .end local v0    # "defaultInbox":Lcom/kingsoft/mail/utils/FolderUri;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "recent":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;>;"
    .end local v5    # "recentFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Folder;>;"
    :cond_5
    new-instance v0, Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Settings;->getDefaultInboxUri(Lcom/kingsoft/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/kingsoft/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public initialize(Lcom/kingsoft/mail/ui/ControllableActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 143
    return-void
.end method

.method public loadFromUiProvider(Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 7
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
    .local p1, "c":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    const/4 v6, 0x0

    .line 166
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string/jumbo v2, "RecentFolderList"

    const-string/jumbo v3, "Number of recents = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    const-string/jumbo v2, "RecentFolderList"

    const-string/jumbo v3, "Not able to move to last in recent labels cursor"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 179
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    new-instance v0, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;-><init>(Lcom/kingsoft/mail/providers/Folder;)V

    .line 180
    .local v0, "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    iget-object v3, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/kingsoft/mail/utils/LruCache;->putElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public touchFolder(Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Account;)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :cond_0
    if-eqz p2, :cond_2

    .line 194
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/RecentFolderList;->setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 200
    :cond_1
    sget-boolean v1, Lcom/kingsoft/mail/ui/RecentFolderList;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 196
    :cond_2
    const-string/jumbo v1, "RecentFolderList"

    const-string/jumbo v2, "No account set for setting recent folders?"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    :cond_4
    const-string/jumbo v1, "RecentFolderList"

    const-string/jumbo v2, "Not touching recent folder because it\'s provider or search folder"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 207
    :cond_5
    new-instance v0, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;-><init>(Lcom/kingsoft/mail/providers/Folder;)V

    .line 208
    .local v0, "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/utils/LruCache;->putElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    new-instance v1, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v1, p0, v2, p1}, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;-><init>(Lcom/kingsoft/mail/ui/RecentFolderList;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/RecentFolderList$StoreRecent;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateFolderInfo(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "foldermap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v2, p0, Lcom/kingsoft/mail/ui/RecentFolderList;->mFolderCache:Lcom/kingsoft/mail/utils/LruCache;

    invoke-virtual {v2}, Lcom/kingsoft/mail/utils/LruCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;

    .line 214
    .local v0, "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    # getter for: Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    iget v2, v2, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    # getter for: Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->access$200(Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    iget v2, v2, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/Folder;

    # setter for: Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v0, v2}, Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;->access$202(Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/providers/Folder;

    goto :goto_0

    .line 217
    .end local v0    # "entry":Lcom/kingsoft/mail/ui/RecentFolderList$RecentFolderListEntry;
    :cond_1
    return-void
.end method
