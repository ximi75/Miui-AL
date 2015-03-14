.class Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initFolderLoader(I)V
    .locals 5
    .param p1, "loaderId"    # I

    .prologue
    .line 537
    const-string/jumbo v0, "NestedFolderTeaserView"

    const-string/jumbo v1, "Initializing folder loader %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 538
    iget-object v0, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$900(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$1000(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 539
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
    .line 543
    new-instance v0, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$1100(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

    sget-object v4, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .line 546
    .local v0, "loader":Lcom/kingsoft/mail/content/ObjectCursorLoader;, "Lcom/kingsoft/mail/content/ObjectCursorLoader<Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderItemUpdateDelayMs:I
    invoke-static {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$1200(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/content/ObjectCursorLoader;->setUpdateThrottle(J)V

    .line 547
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 11
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    const/4 v10, 0x1

    .line 473
    if-eqz p2, :cond_8

    .line 475
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v7, "oldFolderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 477
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 482
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 483
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    iget v9, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 485
    .local v2, "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    if-eqz v2, :cond_5

    .line 486
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v6

    .line 487
    .local v6, "oldFolder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->setFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 493
    if-eqz v6, :cond_2

    iget v8, v6, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iget v9, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    if-ne v8, v9, :cond_2

    iget-object v8, v6, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 494
    :cond_2
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->updateViews(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    invoke-static {v8, v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$500(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 515
    .end local v6    # "oldFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_3
    :goto_1
    iget v8, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 519
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v2    # "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 521
    .local v1, "folderId":I
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 522
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$900(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;

    move-result-object v8

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getLoaderId(I)I
    invoke-static {v1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$800(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 523
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # setter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z
    invoke-static {v8, v10}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$202(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z

    goto :goto_2

    .line 498
    .end local v1    # "folderId":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .restart local v2    # "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_5
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    iget-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->createFolderHolder(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-static {v8, v9}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$600(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    move-result-object v5

    .line 499
    .local v5, "newHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-virtual {v5, v0}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->setFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 500
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v8

    iget v9, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-virtual {v8, v9, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 506
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    iget-object v9, v0, Lcom/kingsoft/mail/providers/Folder;->unreadSenders:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->populateUnreadSenders(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Ljava/lang/String;)V
    invoke-static {v8, v5, v9}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$700(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->updateViews(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    invoke-static {v8, v5}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$500(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 510
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # setter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z
    invoke-static {v8, v10}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$202(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Z)Z

    goto :goto_1

    .line 528
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v2    # "holder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .end local v5    # "newHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mListUpdated:Z
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$200(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 529
    iget-object v8, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;
    invoke-static {v8}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$300(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 534
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "oldFolderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    return-void

    .line 532
    :cond_8
    const-string/jumbo v8, "NestedFolderTeaserView"

    const-string/jumbo v9, "Problem with folder list cursor returned from loader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 464
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$3;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

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
    .line 468
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    return-void
.end method
