.class Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;
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
    name = "FolderDestruction"
.end annotation


# instance fields
.field private final mAction:I

.field private final mActionFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mCompleted:Z

.field private final mFolderOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDestructive:Z

.field private final mIsSelectedSet:Z

.field private final mShowUndo:Z

.field private final mTarget:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p4, "isDestructive"    # Z
    .param p5, "isBatch"    # Z
    .param p6, "showUndo"    # Z
    .param p7, "action"    # I
    .param p8, "actionFolder"    # Lcom/kingsoft/mail/providers/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;ZZZI",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4882
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .local p3, "folders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    .line 4883
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    .line 4884
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4885
    iput-boolean p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    .line 4886
    iput-boolean p5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    .line 4887
    iput-boolean p6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mShowUndo:Z

    .line 4888
    iput p7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mAction:I

    .line 4889
    iput-object p8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mActionFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 4890
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "x1"    # Ljava/util/Collection;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/kingsoft/mail/providers/Folder;
    .param p9, "x8"    # Lcom/kingsoft/mail/ui/AbstractActivityController$1;

    .prologue
    .line 4864
    invoke-direct/range {p0 .. p8}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/kingsoft/mail/providers/Folder;)V

    return-void
.end method

.method private declared-synchronized isPerformed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4941
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4945
    :goto_0
    monitor-exit p0

    return v0

    .line 4944
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4945
    const/4 v0, 0x0

    goto :goto_0

    .line 4941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public performAction()V
    .locals 14

    .prologue
    .line 4894
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->isPerformed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4934
    :cond_0
    :goto_0
    return-void

    .line 4897
    :cond_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mShowUndo:Z

    if-eqz v1, :cond_2

    .line 4898
    new-instance v0, Lcom/kingsoft/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mAction:I

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mActionFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/ToastBarOperation;-><init>(IIIZLcom/kingsoft/mail/providers/Folder;)V

    .line 4900
    .local v0, "undoOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 4904
    .end local v0    # "undoOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4907
    .local v11, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mTarget:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kingsoft/mail/providers/Conversation;

    .line 4908
    .local v12, "target":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v13

    .line 4910
    .local v13, "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4911
    .local v7, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4912
    .local v6, "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsDestructive:Z

    if-eqz v1, :cond_3

    .line 4913
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    .line 4915
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mFolderOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/mail/ui/FolderOperation;

    .line 4916
    .local v10, "op":Lcom/kingsoft/mail/ui/FolderOperation;
    iget-object v1, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4917
    iget-boolean v1, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mAdd:Z

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4918
    iget-boolean v1, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mAdd:Z

    if-eqz v1, :cond_5

    .line 4919
    iget-object v1, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4917
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 4921
    :cond_5
    iget-object v1, v10, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, v1, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4924
    .end local v10    # "op":Lcom/kingsoft/mail/ui/FolderOperation;
    :cond_6
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v12, v7, v6, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4927
    .end local v6    # "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7    # "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "target":Lcom/kingsoft/mail/providers/Conversation;
    .end local v13    # "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v1, :cond_8

    .line 4928
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1, v11}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    .line 4930
    :cond_8
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 4931
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->mIsSelectedSet:Z

    if-eqz v1, :cond_0

    .line 4932
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$1200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    goto/16 :goto_0
.end method
