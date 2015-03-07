.class Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderLoads"
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
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 4449
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/AbstractActivityController$1;

    .prologue
    .line 4449
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 11
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
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4452
    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 4453
    .local v1, "everything":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 4504
    :pswitch_0
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "FolderLoads.onCreateLoader(%d) for invalid id"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4507
    :cond_0
    :goto_0
    return-object v4

    .line 4455
    :pswitch_1
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "LOADER_FOLDER_CURSOR created"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4456
    new-instance v4, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v7, v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v7, v7, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    sget-object v8, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v4, v6, v7, v1, v8}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    .line 4459
    .local v4, "loader":Lcom/kingsoft/mail/content/ObjectCursorLoader;, "Lcom/kingsoft/mail/content/ObjectCursorLoader<Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderItemUpdateDelayMs:I
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1900(Lcom/kingsoft/mail/ui/AbstractActivityController;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/kingsoft/mail/content/ObjectCursorLoader;->setUpdateThrottle(J)V

    goto :goto_0

    .line 4470
    .end local v4    # "loader":Lcom/kingsoft/mail/content/ObjectCursorLoader;, "Lcom/kingsoft/mail/content/ObjectCursorLoader<Lcom/kingsoft/mail/providers/Folder;>;"
    :pswitch_2
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "LOADER_RECENT_FOLDERS created"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4471
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v6, :cond_0

    .line 4472
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Account;->getUnreadVirtualMailboxUri()Landroid/net/Uri;

    move-result-object v5

    .line 4473
    .local v5, "unreadFolder":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 4474
    new-instance v4, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v4, v6, v5, v1, v7}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    goto :goto_0

    .line 4480
    .end local v5    # "unreadFolder":Landroid/net/Uri;
    :pswitch_3
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "LOADER_ACCOUNT_INBOX created"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4481
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-static {v6}, Lcom/kingsoft/mail/providers/Settings;->getDefaultInboxUri(Lcom/kingsoft/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v0

    .line 4482
    .local v0, "defaultInbox":Landroid/net/Uri;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v6, Lcom/kingsoft/mail/providers/Account;->folderListUri:Landroid/net/Uri;

    .line 4484
    .local v3, "inboxUri":Landroid/net/Uri;
    :goto_1
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Loading the default inbox: %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4485
    if-eqz v3, :cond_0

    .line 4486
    new-instance v4, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v4, v6, v3, v1, v7}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    goto/16 :goto_0

    .end local v3    # "inboxUri":Landroid/net/Uri;
    :cond_1
    move-object v3, v0

    .line 4482
    goto :goto_1

    .line 4491
    .end local v0    # "defaultInbox":Landroid/net/Uri;
    :pswitch_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const-string/jumbo v7, "query"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v8, v8, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/providers/Folder;->forSearchResults(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/Context;)Lcom/kingsoft/mail/content/ObjectCursorLoader;

    move-result-object v4

    goto/16 :goto_0

    .line 4495
    :pswitch_5
    sget-object v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "LOADER_FIRST_FOLDER created"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4496
    const-string/jumbo v6, "folderUri"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4497
    .local v2, "folderUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const-string/jumbo v6, "conversationUri"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v7, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2002(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/providers/Conversation;

    .line 4498
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v6

    iget v6, v6, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-gez v6, :cond_2

    .line 4499
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v6

    iput v10, v6, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 4501
    :cond_2
    new-instance v4, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/kingsoft/mail/providers/Folder;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v4, v6, v2, v1, v7}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    goto/16 :goto_0

    .line 4453
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 14
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
    .line 4512
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;"
    if-nez p2, :cond_0

    .line 4513
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Received null cursor from loader id: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4515
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 4665
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4517
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4519
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 4520
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    const-string/jumbo v9, "EMail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LOADER_FOLDER_CURSOR and folder.name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4521
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->setHasFolderChanged(Lcom/kingsoft/mail/providers/Folder;)V
    invoke-static {v9, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2100(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;)V

    .line 4522
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v1, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 4523
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderObservable:Landroid/database/DataSetObservable;
    invoke-static {v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    .line 4525
    .end local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_2
    sget-object v10, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Unable to get the folder %s"

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v9, v9, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    :goto_1
    aput-object v9, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v9, ""

    goto :goto_1

    .line 4561
    :pswitch_2
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4562
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Folder;

    .line 4563
    .local v6, "unread":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v6, :cond_1

    .line 4564
    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/mail/providers/Folder;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    goto/16 :goto_0

    .line 4569
    .end local v6    # "unread":Lcom/kingsoft/mail/providers/Folder;
    :pswitch_3
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 4570
    const/4 v3, 0x0

    .line 4572
    .local v3, "inbox":Lcom/kingsoft/mail/providers/Folder;
    const-wide/32 v9, 0x10000000

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v7

    .line 4575
    .local v7, "virtualInboxId":J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4576
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/providers/Folder;

    .line 4577
    .local v5, "tmpInbox":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v5, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-nez v9, :cond_5

    .line 4580
    :cond_4
    move-object v3, v5

    .line 4583
    .end local v5    # "tmpInbox":Lcom/kingsoft/mail/providers/Folder;
    :cond_5
    if-nez v3, :cond_8

    .line 4584
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4585
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/providers/Folder;

    .line 4586
    .restart local v5    # "tmpInbox":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v5, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    cmp-long v9, v9, v7

    if-nez v9, :cond_6

    .line 4589
    :cond_7
    move-object v3, v5

    .line 4613
    .end local v5    # "tmpInbox":Lcom/kingsoft/mail/providers/Folder;
    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 4615
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 4619
    :cond_9
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 4594
    :catch_0
    move-exception v0

    .line 4595
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 4622
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "inbox":Lcom/kingsoft/mail/providers/Folder;
    .end local v7    # "virtualInboxId":J
    :cond_a
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Unable to get the account inbox for account"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 4626
    :pswitch_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v9

    if-lez v9, :cond_c

    .line 4627
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    .line 4628
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Folder;

    .line 4629
    .local v4, "search":Lcom/kingsoft/mail/providers/Folder;
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v10, 0x0

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V
    invoke-static {v9, v4, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2300(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 4630
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v10, v10, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v11, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v11, v11, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v12, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v12, v12, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v12}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string/jumbo v13, "query"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/ConversationListContext;->forSearchQuery(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v10

    iput-object v10, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 4633
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v10, v10, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-virtual {v9, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 4634
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 4635
    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget v9, v4, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    if-lez v9, :cond_b

    const/4 v9, 0x1

    :goto_3
    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z
    invoke-static {v10, v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2402(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 4636
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 4635
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 4638
    .end local v4    # "search":Lcom/kingsoft/mail/providers/Folder;
    :cond_c
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Null/empty cursor returned by LOADER_SEARCH loader"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 4642
    :pswitch_5
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4645
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    .line 4646
    .restart local v1    # "folder":Lcom/kingsoft/mail/providers/Folder;
    const/4 v2, 0x0

    .line 4647
    .local v2, "handled":Z
    if-eqz v1, :cond_d

    .line 4648
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 4649
    const/4 v2, 0x1

    .line 4651
    :cond_d
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 4653
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v10

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    invoke-static {v9, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2500(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;)V

    .line 4654
    const/4 v2, 0x1

    .line 4656
    :cond_e
    if-nez v2, :cond_f

    .line 4658
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->loadAccountInbox()V

    .line 4660
    :cond_f
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v10, 0x0

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {v9, v10}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$2002(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/providers/Conversation;

    .line 4662
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 4515
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4449
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

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
    .line 4669
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Folder;>;>;"
    return-void
.end method
