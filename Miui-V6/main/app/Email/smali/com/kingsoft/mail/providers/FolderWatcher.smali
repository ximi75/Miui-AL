.class public Lcom/kingsoft/mail/providers/FolderWatcher;
.super Ljava/lang/Object;
.source "FolderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/providers/FolderWatcher$1;,
        Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;
    }
.end annotation


# static fields
.field public static final FOLDER_URI:Ljava/lang/String; = "FOLDER-URI"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;

.field private mConsumer:Landroid/widget/BaseAdapter;

.field private final mInboxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnreadBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnreadCallback:Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;

.field private final mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/kingsoft/mail/providers/FolderWatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/ui/RestrictedActivity;Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/RestrictedActivity;
    .param p2, "consumer"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    .line 54
    new-instance v0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;-><init>(Lcom/kingsoft/mail/providers/FolderWatcher;Lcom/kingsoft/mail/providers/FolderWatcher$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadCallback:Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;

    .line 70
    iput-object p1, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;

    .line 71
    iput-object p2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mConsumer:Landroid/widget/BaseAdapter;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/providers/FolderWatcher;)Lcom/kingsoft/mail/ui/RestrictedActivity;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/providers/FolderWatcher;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mConsumer:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private static getLoaderFromPosition(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 164
    add-int/lit8 v0, p0, 0x64

    return v0
.end method

.method private insertAtNextEmptyLocation(Landroid/net/Uri;)I
    .locals 5
    .param p1, "newElement"    # Landroid/net/Uri;

    .prologue
    .line 138
    const/4 v1, -0x1

    .line 139
    .local v1, "location":I
    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 140
    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 142
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 143
    move v1, v0

    .line 148
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    if-gez v1, :cond_2

    .line 150
    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 151
    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 155
    :goto_1
    return v1

    .line 139
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private startWatching(Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "unread"    # Z

    .prologue
    const/4 v8, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/FolderWatcher;->insertAtNextEmptyLocation(Landroid/net/Uri;)I

    move-result v2

    .line 119
    .local v2, "location":I
    sget-object v3, Lcom/kingsoft/mail/providers/FolderWatcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Watching %s, at position %d."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    if-nez p2, :cond_0

    .line 122
    iget-object v3, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    invoke-interface {v3, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 126
    .local v1, "lm":Landroid/app/LoaderManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "FOLDER-URI"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v2}, Lcom/kingsoft/mail/providers/FolderWatcher;->getLoaderFromPosition(I)I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadCallback:Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;

    invoke-virtual {v1, v3, v0, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    return-void

    .line 124
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "lm":Landroid/app/LoaderManager;
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    invoke-interface {v3, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private stopWatching(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 184
    .local v1, "lm":Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/kingsoft/mail/providers/FolderWatcher;->getLoaderFromPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 185
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 219
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v2, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 222
    .local v0, "candidate":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v0, :cond_0

    .line 226
    .end local v0    # "candidate":Lcom/kingsoft/mail/providers/Folder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getUnreadCount(Lcom/kingsoft/mail/providers/Account;)I
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/FolderWatcher;->getUnreadVirtualMailbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    .line 200
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v0, :cond_0

    .line 201
    iget v1, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getUnreadVirtualMailbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getUnreadVirtualMailboxUri()Landroid/net/Uri;

    move-result-object v1

    .line 209
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 211
    .local v0, "candidate":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v0, :cond_0

    .line 215
    .end local v0    # "candidate":Lcom/kingsoft/mail/providers/Folder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putFolderIntoMap(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v1}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public updateAccountList([Lcom/kingsoft/mail/providers/Account;)V
    .locals 10
    .param p1, "allAccounts"    # [Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 84
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    array-length v9, p1

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v5, "newAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v6, Ljava/util/ArrayList;

    array-length v9, p1

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v6, "newUnreadAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    move-object v1, p1

    .local v1, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 87
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v9, v9, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getUnreadVirtualMailboxUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_2
    iget-object v9, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-static {v9}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 92
    .local v8, "uriCopy":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 93
    .local v7, "previous":Landroid/net/Uri;
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 95
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/providers/FolderWatcher;->stopWatching(Landroid/net/Uri;)V

    goto :goto_1

    .line 99
    .end local v7    # "previous":Landroid/net/Uri;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 100
    .local v2, "fresh":Landroid/net/Uri;
    iget-object v9, p0, Lcom/kingsoft/mail/providers/FolderWatcher;->mUris:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 101
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/kingsoft/mail/providers/FolderWatcher;->startWatching(Landroid/net/Uri;Z)V

    goto :goto_2
.end method
