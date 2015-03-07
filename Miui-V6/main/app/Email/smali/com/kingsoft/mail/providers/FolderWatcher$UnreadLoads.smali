.class Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;
.super Ljava/lang/Object;
.source "FolderWatcher.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/FolderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnreadLoads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final projection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/providers/FolderWatcher;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/providers/FolderWatcher;)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->projection:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/providers/FolderWatcher;Lcom/kingsoft/mail/providers/FolderWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/providers/FolderWatcher;
    .param p2, "x1"    # Lcom/kingsoft/mail/providers/FolderWatcher$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;-><init>(Lcom/kingsoft/mail/providers/FolderWatcher;)V

    return-void
.end method


# virtual methods
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
    .line 246
    const-string/jumbo v1, "FOLDER-URI"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v2, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;
    invoke-static {v2}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$100(Lcom/kingsoft/mail/providers/FolderWatcher;)Lcom/kingsoft/mail/ui/RestrictedActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->projection:[Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 7
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
    .line 253
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 257
    .local v0, "f":Lcom/kingsoft/mail/providers/Folder;
    iget-object v5, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-virtual {v5}, Lcom/kingsoft/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v4

    .line 258
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$200(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mInboxMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$200(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mActivity:Lcom/kingsoft/mail/ui/RestrictedActivity;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$100(Lcom/kingsoft/mail/providers/FolderWatcher;)Lcom/kingsoft/mail/ui/RestrictedActivity;

    move-result-object v5

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/RestrictedActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 264
    :cond_2
    iget v2, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 265
    .local v2, "unreadCount":I
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$300(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 266
    .local v1, "previousFolder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v1, :cond_3

    iget v5, v1, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    if-eq v2, v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 270
    .local v3, "unreadCountChanged":Z
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mUnreadBoxMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$300(Lcom/kingsoft/mail/providers/FolderWatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-eqz v3, :cond_0

    .line 273
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mConsumer:Landroid/widget/BaseAdapter;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$400(Lcom/kingsoft/mail/providers/FolderWatcher;)Landroid/widget/BaseAdapter;

    move-result-object v5

    instance-of v5, v5, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mConsumer:Landroid/widget/BaseAdapter;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$400(Lcom/kingsoft/mail/providers/FolderWatcher;)Landroid/widget/BaseAdapter;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/FolderListFragment$FolderListAdapter;->notifyAllAccountsChanged()V

    goto :goto_0

    .line 266
    .end local v3    # "unreadCountChanged":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 276
    .restart local v3    # "unreadCountChanged":Z
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->this$0:Lcom/kingsoft/mail/providers/FolderWatcher;

    # getter for: Lcom/kingsoft/mail/providers/FolderWatcher;->mConsumer:Landroid/widget/BaseAdapter;
    invoke-static {v5}, Lcom/kingsoft/mail/providers/FolderWatcher;->access$400(Lcom/kingsoft/mail/providers/FolderWatcher;)Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/providers/FolderWatcher$UnreadLoads;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 283
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    return-void
.end method
