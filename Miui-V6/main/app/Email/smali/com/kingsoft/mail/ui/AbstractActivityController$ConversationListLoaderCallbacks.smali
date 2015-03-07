.class Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;
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
    name = "ConversationListLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0

    .prologue
    .line 4367
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/AbstractActivityController$1;

    .prologue
    .line 4367
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4372
    const-string/jumbo v9, "account"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 4373
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    const-string/jumbo v9, "folder"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    .line 4374
    .local v3, "folder":Lcom/kingsoft/mail/providers/Folder;
    const-string/jumbo v9, "message"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4375
    .local v5, "josnCondition":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 4376
    :cond_0
    const/4 v9, 0x0

    .line 4396
    :goto_0
    return-object v9

    .line 4378
    :cond_1
    iget-object v8, v3, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    .line 4379
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 4381
    iget-object v9, v3, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4383
    .local v1, "builder":Landroid/net/Uri$Builder;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4384
    .local v6, "json":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 4385
    .local v4, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4387
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4388
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4391
    .end local v4    # "iter":Ljava/util/Iterator;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 4392
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4394
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 4396
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    new-instance v10, Lcom/kingsoft/mail/ui/ConversationCursorLoader;

    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v9, v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v9, Landroid/app/Activity;

    iget-object v11, v3, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-direct {v10, v9, v0, v8, v11}, Lcom/kingsoft/mail/ui/ConversationCursorLoader;-><init>(Landroid/app/Activity;Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;)V

    move-object v9, v10

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 8
    .param p2, "data"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            ">;",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/browse/ConversationCursor;>;"
    const/4 v7, 0x1

    .line 4402
    sget-object v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "IN AAC.ConversationCursor.onLoadFinished, data=%s loader=%s this=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object p1, v5, v7

    const/4 v6, 0x2

    aput-object p0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4405
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v4, 0x0

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->destroyPending(Lcom/kingsoft/mail/ui/DestructiveAction;)V
    invoke-static {v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1300(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 4406
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object p2, v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 4407
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->addListener(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;)V

    .line 4408
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1400(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/utils/DrawIdler;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/utils/DrawIdler;->setListener(Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;)V

    .line 4409
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v3, v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->onCursorUpdated()V

    .line 4410
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4412
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;

    .line 4413
    .local v0, "callback":Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;->onLoadFinished()V

    goto :goto_0

    .line 4415
    .end local v0    # "callback":Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4417
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    .line 4418
    .local v1, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->isFragmentVisible(Landroid/app/Fragment;)Z
    invoke-static {v3, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1700(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4422
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v3, v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->informCursorVisiblity(Z)V

    .line 4424
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # invokes: Lcom/kingsoft/mail/ui/AbstractActivityController;->perhapsShowFirstSearchResult()V
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1800(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 4425
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4367
    check-cast p2, Lcom/kingsoft/mail/browse/ConversationCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/browse/ConversationCursor;>;"
    const/4 v5, 0x0

    .line 4429
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IN AAC.ConversationCursor.onLoaderReset, data=%s loader=%s this=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4433
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 4435
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->removeListener(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;)V

    .line 4436
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1400(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/utils/DrawIdler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/utils/DrawIdler;->setListener(Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;)V

    .line 4437
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 4440
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->onCursorUpdated()V

    .line 4441
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4443
    :cond_0
    return-void
.end method
