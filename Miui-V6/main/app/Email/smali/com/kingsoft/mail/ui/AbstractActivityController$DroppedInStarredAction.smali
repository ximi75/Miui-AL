.class Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/DestructiveAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DroppedInStarredAction"
.end annotation


# instance fields
.field private final mConversations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mStarred:Lcom/kingsoft/mail/providers/Folder;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p3, "initialFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p4, "starredFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/providers/Folder;",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4295
    .local p2, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4296
    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    .line 4297
    iput-object p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 4298
    iput-object p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/kingsoft/mail/providers/Folder;

    .line 4299
    return-void
.end method


# virtual methods
.method public performAction()V
    .locals 15

    .prologue
    const/4 v4, 0x1

    .line 4303
    new-instance v0, Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const v2, 0x7f0c0275

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/ToastBarOperation;-><init>(IIIZLcom/kingsoft/mail/providers/Folder;)V

    .line 4305
    .local v0, "undoOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 4306
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    .local v13, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 4311
    .local v10, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mConversations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    .line 4312
    .local v6, "target":Lcom/kingsoft/mail/providers/Conversation;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4313
    .local v7, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4314
    .local v8, "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4315
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4316
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4317
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4318
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v14

    .line 4320
    .local v14, "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mStarred:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4321
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->mInitialFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4322
    const-string/jumbo v1, "starred"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4323
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v5, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual/range {v5 .. v10}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Landroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v12

    .line 4325
    .local v12, "operation":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4327
    .end local v6    # "target":Lcom/kingsoft/mail/providers/Conversation;
    .end local v7    # "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v8    # "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v12    # "operation":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .end local v14    # "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v1, :cond_1

    .line 4328
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1, v13}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    .line 4330
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 4331
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 4332
    return-void
.end method
