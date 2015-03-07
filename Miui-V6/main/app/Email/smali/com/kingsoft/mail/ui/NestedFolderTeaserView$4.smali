.class Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;
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
        "Lcom/kingsoft/mail/providers/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 668
    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getFolderId(I)I
    invoke-static {p1}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$1300(I)I

    move-result v0

    .line 669
    .local v0, "folderId":I
    iget-object v2, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->access$1400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v2

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "use_network"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "limit"

    const-string/jumbo v4, "20"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 675
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/kingsoft/mail/content/ObjectCursorLoader;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/kingsoft/mail/providers/Conversation;->FACTORY:Lcom/kingsoft/mail/content/CursorCreator;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/kingsoft/mail/content/ObjectCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/kingsoft/mail/content/CursorCreator;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Conversation;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 602
    .local v2, "emailToNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 604
    .local v13, "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Loader;->getId()I

    move-result v15

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->getFolderId(I)I
    invoke-static {v15}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$1300(I)I

    move-result v5

    .line 606
    .local v5, "folderId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v15}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 607
    .local v4, "folderHolder":Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;
    # getter for: Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/kingsoft/mail/providers/Folder;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->access$1400(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v15

    iget v8, v15, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    .line 609
    .local v8, "maxSenders":I
    if-lez v8, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 610
    const-string/jumbo v15, "NestedFolderTeaserView"

    const-string/jumbo v16, "Folder id %d loader finished"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 613
    const/4 v14, 0x0

    .line 616
    .local v14, "sendersFound":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 618
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v15, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v15, :cond_4

    .line 619
    const/4 v11, 0x0

    .line 620
    .local v11, "sender":Ljava/lang/String;
    const/4 v12, 0x0

    .line 621
    .local v12, "senderEmail":Ljava/lang/String;
    const/high16 v10, -0x80000000

    .line 625
    .local v10, "priority":I
    iget-object v15, v1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v15, v15, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 626
    .local v9, "messageInfo":Lcom/kingsoft/mail/providers/MessageInfo;
    if-eqz v11, :cond_2

    iget v15, v9, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    if-ge v10, v15, :cond_1

    .line 627
    :cond_2
    iget-object v11, v9, Lcom/kingsoft/mail/providers/MessageInfo;->sender:Ljava/lang/String;

    .line 628
    iget-object v12, v9, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    .line 629
    iget v10, v9, Lcom/kingsoft/mail/providers/MessageInfo;->priority:I

    goto :goto_0

    .line 633
    .end local v9    # "messageInfo":Lcom/kingsoft/mail/providers/MessageInfo;
    :cond_3
    if-eqz v11, :cond_4

    .line 634
    add-int/lit8 v14, v14, 0x1

    .line 635
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "existingSender":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 638
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 640
    move-object v11, v3

    .line 649
    :goto_1
    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v3    # "existingSender":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "priority":I
    .end local v11    # "sender":Ljava/lang/String;
    .end local v12    # "senderEmail":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    if-lt v14, v8, :cond_0

    .line 657
    .end local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v14    # "sendersFound":I
    :cond_5
    :goto_2
    invoke-virtual {v4, v13}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;->setUnreadSenders(Ljava/util/List;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->this$0:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    # invokes: Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->updateViews(Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    invoke-static {v15, v4}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->access$500(Lcom/kingsoft/mail/ui/NestedFolderTeaserView;Lcom/kingsoft/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 664
    return-void

    .line 643
    .restart local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v3    # "existingSender":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v10    # "priority":I
    .restart local v11    # "sender":Ljava/lang/String;
    .restart local v12    # "senderEmail":Ljava/lang/String;
    .restart local v14    # "sendersFound":I
    :cond_6
    invoke-interface {v13, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 644
    .local v7, "index":I
    invoke-interface {v13, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 647
    .end local v7    # "index":I
    :cond_7
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    .end local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v3    # "existingSender":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "priority":I
    .end local v11    # "sender":Ljava/lang/String;
    .end local v12    # "senderEmail":Ljava/lang/String;
    .end local v14    # "sendersFound":I
    :cond_8
    const-string/jumbo v15, "NestedFolderTeaserView"

    const-string/jumbo v16, "Problem with folder cursor returned from loader"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 590
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView$4;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

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
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Conversation;>;>;"
    return-void
.end method
