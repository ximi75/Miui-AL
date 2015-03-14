.class public Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;
.super Ljava/lang/Object;
.source "SelectedConversationsActionMenu.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/kingsoft/mail/ui/ConversationSetObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field private mActionMode:Landroid/view/ActionMode;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mActivated:Z

.field private final mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private final mContext:Landroid/content/Context;

.field private final mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

.field private mMenu:Landroid/view/Menu;

.field protected final mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private final mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

.field private strSelectAll:Ljava/lang/String;

.field private strSelectNone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p2, "selectionSet"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .param p3, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    .line 111
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 112
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    .line 113
    iput-object p2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 114
    new-instance v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$1;-><init>(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 120
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 121
    iput-object p3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 122
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    .line 123
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    .line 124
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->setDialogDismissed()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)Lcom/kingsoft/mail/ui/ConversationUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    return-object v0
.end method

.method private clearSelection()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 302
    return-void
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->deactivate()V

    .line 706
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->removeObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V

    .line 707
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->clearSelection()V

    .line 708
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ConversationUpdater;->refreshConversationList()V

    .line 709
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 713
    :cond_0
    return-void
.end method

.method private destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 6
    .param p1, "actionId"    # I
    .param p3, "action"    # Lcom/kingsoft/mail/ui/DestructiveAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/DestructiveAction;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v5, 0x1

    .line 383
    sget-object v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "About to remove %d converations"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 384
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v0, p1, p2, p3, v5}, Lcom/kingsoft/mail/ui/ConversationUpdater;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    .line 385
    return-void
.end method

.method private enableMenuItem(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 732
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 734
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 738
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private markConversationsImportant(Z)V
    .locals 6
    .param p1, "important"    # Z

    .prologue
    .line 430
    iget-object v4, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    .line 431
    .local v3, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 433
    .local v2, "priority":I
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const-string/jumbo v5, "priority"

    invoke-interface {v4, v3, v5, v2}, Lcom/kingsoft/mail/ui/ConversationUpdater;->updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 435
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 436
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iput v2, v0, Lcom/kingsoft/mail/providers/Conversation;->priority:I

    goto :goto_1

    .line 431
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "priority":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 438
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "priority":I
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 439
    return-void
.end method

.method private markConversationsRead(Z)V
    .locals 3
    .param p1, "read"    # Z

    .prologue
    .line 394
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    .line 396
    .local v0, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, v2}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    .line 397
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 398
    return-void
.end method

.method private performDestructiveAction(I)V
    .locals 14
    .param p1, "action"    # I

    .prologue
    const v13, 0x7f0c0272

    const/4 v12, 0x1

    const v11, 0x7f0c026d

    .line 319
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v9}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 320
    .local v2, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v9, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    .line 322
    .local v7, "settings":Lcom/kingsoft/mail/providers/Settings;
    const/4 v3, 0x0

    .line 325
    .local v3, "hasSub":Z
    if-ne p1, v13, :cond_1

    .line 327
    const/4 v8, 0x1

    .line 353
    .local v8, "showDialog":Z
    :cond_0
    :goto_0
    if-eqz v8, :cond_a

    .line 354
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v9, p1, v12}, Lcom/kingsoft/mail/ui/ConversationUpdater;->makeDialogListener(IZ)V

    .line 356
    if-ne p1, v11, :cond_8

    .line 358
    if-nez v3, :cond_7

    const v6, 0x7f0f0002

    .line 359
    .local v6, "resId":I
    :goto_1
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v9, v6, v10}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 365
    .end local v6    # "resId":I
    .local v5, "message":Ljava/lang/CharSequence;
    :goto_2
    invoke-static {v5}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->newInstance(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    move-result-object v0

    .line 366
    .local v0, "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v9}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->displayDialog(Landroid/app/FragmentManager;)V

    .line 373
    .end local v0    # "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    .end local v5    # "message":Ljava/lang/CharSequence;
    :goto_3
    return-void

    .line 328
    .end local v8    # "showDialog":Z
    :cond_1
    if-eqz v7, :cond_6

    const v9, 0x7f0c0270

    if-eq p1, v9, :cond_2

    if-ne p1, v11, :cond_6

    .line 329
    :cond_2
    if-ne p1, v11, :cond_3

    iget-boolean v8, v7, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    .line 331
    .restart local v8    # "showDialog":Z
    :goto_4
    if-ne p1, v11, :cond_0

    if-eqz v8, :cond_0

    .line 334
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 336
    const/4 v3, 0x0

    goto :goto_0

    .line 329
    .end local v8    # "showDialog":Z
    :cond_3
    iget-boolean v8, v7, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    goto :goto_4

    .line 339
    .restart local v8    # "showDialog":Z
    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 341
    .local v1, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget v9, v1, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    if-le v9, v12, :cond_5

    .line 343
    const/4 v3, 0x1

    .line 344
    goto :goto_0

    .line 351
    .end local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "showDialog":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "showDialog":Z
    goto :goto_0

    .line 358
    :cond_7
    const v6, 0x7f0f0003

    goto :goto_1

    .line 360
    :cond_8
    if-ne p1, v13, :cond_9

    .line 361
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100130

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 363
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_9
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0001

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 371
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_a
    iget-object v9, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v9, p1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getDeferredBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v9

    invoke-direct {p0, p1, v2, v9}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto :goto_3
.end method

.method private starConversations(Z)V
    .locals 5
    .param p1, "star"    # Z

    .prologue
    .line 447
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 448
    .local v2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const-string/jumbo v4, "starred"

    invoke-interface {v3, v2, v4, p1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 450
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 451
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    iput-boolean p1, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    goto :goto_0

    .line 453
    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 454
    return-void
.end method

.method private updateSelection()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ConversationUpdater;->refreshConversationList()V

    .line 309
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 316
    :cond_0
    return-void
.end method

.method private updateTopTitles()V
    .locals 7

    .prologue
    const v6, 0x102001a

    .line 646
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_0

    .line 663
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0018

    iget-object v5, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    .line 655
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    .line 656
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    check-cast v2, Lmiui/view/EditActionMode;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->strSelectNone:Ljava/lang/String;

    invoke-interface {v2, v6, v3}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 655
    .end local v0    # "count":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 660
    .restart local v0    # "count":I
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    check-cast v2, Lmiui/view/EditActionMode;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->strSelectAll:Ljava/lang/String;

    invoke-interface {v2, v6, v3}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onCabModeEntered()V

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    .line 675
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onCabModeExited()V

    .line 686
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    goto :goto_0
.end method

.method public disableCommand(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->enableMenuItem(IZ)V

    .line 721
    return-void
.end method

.method public enableCommand(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->enableMenuItem(IZ)V

    .line 729
    return-void
.end method

.method public isActivated()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    return v0
.end method

.method public markConversationsRead(ZLjava/util/Collection;)V
    .locals 10
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v9, 0x0

    .line 401
    iget-object v7, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v7, p2, p1, v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    .line 402
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v3, "cons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/Conversation;

    .line 404
    .local v2, "con":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v7, v2, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-eq v7, p1, :cond_0

    .line 405
    iget-object v0, v2, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 406
    .local v0, "accounturi":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, "acountid":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 408
    .local v6, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    if-nez v6, :cond_1

    .line 409
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 410
    .restart local v6    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1
    iget-wide v7, v2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 415
    .end local v0    # "accounturi":Landroid/net/Uri;
    .end local v1    # "acountid":Ljava/lang/String;
    .end local v2    # "con":Lcom/kingsoft/mail/providers/Conversation;
    .end local v6    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 416
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v7, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8, p1, v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    goto :goto_1

    .line 420
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateSelection()V

    .line 421
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 22
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 129
    const/16 v18, 0x1

    .line 131
    .local v18, "handled":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->commitDestructiveActions(Z)V

    .line 132
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 134
    .local v3, "itemId":I
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v1

    const-string/jumbo v2, "menu_item"

    const-string/jumbo v4, "cab_mode"

    const-wide/16 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/kingsoft/mail/analytics/Tracker;->sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V

    .line 140
    const v1, 0x1020019

    if-ne v3, v1, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 146
    :cond_0
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    .line 147
    :cond_1
    const v1, 0x102001a

    if-ne v3, v1, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mListController:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v16

    .line 150
    .local v16, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v15

    .line 151
    .local v15, "count":I
    :goto_1
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v1

    if-ne v1, v15, :cond_5

    .line 153
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 169
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->refreshConversationList()V

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v15    # "count":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 155
    .restart local v15    # "count":I
    :cond_5
    const/4 v1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 156
    const/16 v21, 0x0

    .line 157
    .local v21, "isChanged":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v20, 0x1

    .line 158
    .local v20, "initiallyNotEmpty":Z
    :cond_6
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 159
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v14

    .line 160
    .local v14, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, v14}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->contains(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, v14}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->toggleNotDispatchChange(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 162
    const/16 v21, 0x1

    goto :goto_3

    .line 157
    .end local v14    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v20    # "initiallyNotEmpty":Z
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 165
    .restart local v20    # "initiallyNotEmpty":Z
    :cond_8
    if-eqz v21, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->notifyChange(Z)V

    goto :goto_2

    .line 173
    .end local v15    # "count":I
    .end local v16    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    .end local v20    # "initiallyNotEmpty":Z
    .end local v21    # "isChanged":Z
    :cond_9
    const v1, 0x7f0c026d

    if-ne v3, v1, :cond_b

    .line 175
    const-string/jumbo v1, "A03"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 177
    sget-object v1, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Delete selected from CAB menu"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    const v1, 0x7f0c026d

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    :cond_a
    :goto_4
    move/from16 v1, v18

    .line 294
    goto/16 :goto_0

    .line 179
    :cond_b
    const v1, 0x7f0c0272

    if-ne v3, v1, :cond_c

    .line 180
    const v1, 0x7f0c0272

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto :goto_4

    .line 181
    :cond_c
    const v1, 0x7f0c0270

    if-ne v3, v1, :cond_d

    .line 182
    sget-object v1, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Archive selected from CAB menu"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    const v1, 0x7f0c0270

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto :goto_4

    .line 184
    :cond_d
    const v1, 0x7f0c0271

    if-ne v3, v1, :cond_e

    .line 185
    const v1, 0x7f0c0271

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getDeferredRemoveFolder(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;ZZZ)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto :goto_4

    .line 188
    :cond_e
    const v1, 0x7f0c0279

    if-ne v3, v1, :cond_f

    .line 189
    const v1, 0x7f0c0279

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const v6, 0x7f0c0279

    invoke-interface {v4, v6}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto :goto_4

    .line 190
    :cond_f
    const v1, 0x7f0c027b

    if-ne v3, v1, :cond_10

    .line 191
    const v1, 0x7f0c027b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const v6, 0x7f0c027b

    invoke-interface {v4, v6}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto/16 :goto_4

    .line 193
    :cond_10
    const v1, 0x7f0c027c

    if-ne v3, v1, :cond_11

    .line 196
    const v1, 0x7f0c027c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const v6, 0x7f0c027c

    invoke-interface {v4, v6}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto/16 :goto_4

    .line 198
    :cond_11
    const v1, 0x7f0c027d

    if-ne v3, v1, :cond_12

    .line 199
    const v1, 0x7f0c027d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    const v6, 0x7f0c027d

    invoke-interface {v4, v6}, Lcom/kingsoft/mail/ui/ConversationUpdater;->getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto/16 :goto_4

    .line 201
    :cond_12
    const v1, 0x7f0c0287

    if-ne v3, v1, :cond_13

    .line 202
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->markConversationsRead(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_4

    .line 208
    :cond_13
    const v1, 0x7f0c005c

    if-ne v3, v1, :cond_14

    .line 209
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->markConversationsRead(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_4

    .line 215
    :cond_14
    const v1, 0x7f0c017e

    if-ne v3, v1, :cond_15

    .line 216
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->starConversations(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_4

    .line 222
    :cond_15
    const v1, 0x7f0c0288

    if-ne v3, v1, :cond_17

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 224
    sget-object v1, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "We are in a starred folder, removing the star"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    const v1, 0x7f0c0288

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    .line 231
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_4

    .line 227
    :cond_16
    sget-object v1, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not in a starred folder."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->starConversations(Z)V

    goto :goto_5

    .line 235
    :cond_17
    const v1, 0x7f0c0274

    if-eq v3, v1, :cond_18

    const v1, 0x7f0c0275

    if-ne v3, v1, :cond_1e

    .line 236
    :cond_18
    const/4 v12, 0x0

    .line 237
    .local v12, "cantMove":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 239
    .local v5, "acct":Lcom/kingsoft/mail/providers/Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 240
    const/4 v11, 0x0

    .line 241
    .local v11, "accountUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/mail/providers/Conversation;

    .line 242
    .local v13, "conv":Lcom/kingsoft/mail/providers/Conversation;
    if-nez v11, :cond_1a

    .line 243
    iget-object v11, v13, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    goto :goto_6

    .line 244
    :cond_1a
    iget-object v1, v13, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    invoke-virtual {v11, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f10010d

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 248
    const/4 v12, 0x1

    move/from16 v1, v18

    .line 249
    goto/16 :goto_0

    .line 252
    .end local v13    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_1b
    if-nez v12, :cond_1c

    .line 254
    invoke-static {v11}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountFromAccountUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    .line 257
    .end local v11    # "accountUri":Landroid/net/Uri;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_1c
    if-nez v12, :cond_a

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c0274

    if-ne v1, v2, :cond_1d

    const/4 v10, 0x1

    :goto_7
    invoke-static/range {v4 .. v10}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->getInstance(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;Z)Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    move-result-object v17

    .line 261
    .local v17, "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    if-eqz v17, :cond_a

    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->show()V

    goto/16 :goto_4

    .line 258
    .end local v17    # "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    :cond_1d
    const/4 v10, 0x0

    goto :goto_7

    .line 265
    .end local v5    # "acct":Lcom/kingsoft/mail/providers/Account;
    .end local v12    # "cantMove":Z
    :cond_1e
    const v1, 0x7f0c0276

    if-ne v3, v1, :cond_1f

    .line 266
    new-instance v2, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$2;-><init>(Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 283
    :cond_1f
    const v1, 0x7f0c0277

    if-ne v3, v1, :cond_20

    .line 284
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->markConversationsImportant(Z)V

    goto/16 :goto_4

    .line 285
    :cond_20
    const v1, 0x7f0c0278

    if-ne v3, v1, :cond_22

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 287
    const v1, 0x7f0c0278

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->performDestructiveAction(I)V

    goto/16 :goto_4

    .line 289
    :cond_21
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->markConversationsImportant(Z)V

    goto/16 :goto_4

    .line 292
    :cond_22
    const/16 v18, 0x0

    goto/16 :goto_4
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->addObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V

    .line 459
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 460
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 461
    iput-object p1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 462
    iput-object p2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 463
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f100396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->strSelectAll:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f100397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->strSelectNone:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateTopTitles()V

    .line 466
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    .line 607
    iput-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 611
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivated:Z

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy()V

    .line 616
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->commitDestructiveActions(Z)V

    .line 618
    :cond_0
    iput-object v2, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mMenu:Landroid/view/Menu;

    .line 619
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 40
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mSelectionSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v7

    .line 473
    .local v7, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v29, 0x0

    .line 474
    .local v29, "showStar":Z
    const/16 v25, 0x1

    .line 475
    .local v25, "showMarkUnread":Z
    const/16 v23, 0x0

    .line 476
    .local v23, "showMarkImportant":Z
    const/16 v24, 0x0

    .line 477
    .local v24, "showMarkNotSpam":Z
    const/16 v22, 0x0

    .line 479
    .local v22, "showMarkAsPhishing":Z
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    .line 480
    .local v6, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v0, v6, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    move/from16 v35, v0

    if-nez v35, :cond_1

    .line 481
    const/16 v29, 0x1

    .line 483
    :cond_1
    iget-boolean v0, v6, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    .line 484
    const/16 v25, 0x0

    .line 487
    :cond_2
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Conversation;->isImportant()Z

    move-result v35

    if-nez v35, :cond_3

    .line 488
    const/16 v23, 0x1

    .line 490
    :cond_3
    iget-boolean v0, v6, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    move/from16 v35, v0

    if-eqz v35, :cond_4

    .line 491
    const/16 v24, 0x1

    .line 493
    :cond_4
    iget-boolean v0, v6, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    move/from16 v35, v0

    if-nez v35, :cond_5

    .line 494
    const/16 v22, 0x1

    .line 496
    :cond_5
    if-eqz v29, :cond_0

    if-eqz v25, :cond_0

    if-eqz v23, :cond_0

    if-eqz v24, :cond_0

    if-eqz v22, :cond_0

    .line 501
    .end local v6    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :cond_6
    const v35, 0x7f0c017e

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 502
    .local v31, "star":Landroid/view/MenuItem;
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    const v35, 0x7f0c0288

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    .line 504
    .local v34, "unstar":Landroid/view/MenuItem;
    if-nez v29, :cond_c

    const/16 v35, 0x1

    :goto_0
    invoke-interface/range {v34 .. v35}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    const v35, 0x7f0c0287

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 507
    .local v17, "read":Landroid/view/MenuItem;
    const v35, 0x7f0c005c

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 509
    .local v33, "unread":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x4

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v35

    if-nez v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v35

    if-nez v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 511
    :cond_7
    const/16 v35, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    :goto_1
    const v35, 0x7f0c0271

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 525
    .local v18, "removeFolder":Landroid/view/MenuItem;
    const v35, 0x7f0c0274

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 526
    .local v12, "moveTo":Landroid/view/MenuItem;
    const v35, 0x7f0c0276

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 527
    .local v13, "moveToInbox":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v35

    if-nez v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_f

    const/16 v28, 0x1

    .line 531
    .local v28, "showRemoveFolder":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x4000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_10

    const/16 v26, 0x1

    .line 533
    .local v26, "showMoveTo":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/high16 v36, 0x10000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_11

    const/16 v27, 0x1

    .line 535
    .local v27, "showMoveToInbox":Z
    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 536
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 537
    move/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    if-eqz v28, :cond_8

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v35

    const v36, 0x7f100340

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    aput-object v39, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 543
    :cond_8
    const v35, 0x7f0c0270

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 544
    .local v5, "archive":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v4

    .line 546
    .local v4, "accountSupportsArchive":Z
    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_12

    const/16 v19, 0x1

    .line 548
    .local v19, "showArchive":Z
    :goto_5
    if-nez v5, :cond_13

    .line 549
    const/16 v19, 0x0

    .line 554
    :goto_6
    if-nez v19, :cond_9

    if-eqz v4, :cond_9

    .line 555
    if-nez v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/kingsoft/mail/utils/Utils;->shouldShowDisabledArchiveIcon(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 557
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 558
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 561
    :cond_9
    const v35, 0x7f0c027b

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 562
    .local v30, "spam":Landroid/view/MenuItem;
    if-nez v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x40

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_14

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 565
    const v35, 0x7f0c027c

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 566
    .local v15, "notSpam":Landroid/view/MenuItem;
    if-eqz v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x80

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_15

    const/16 v35, 0x1

    :goto_8
    move/from16 v0, v35

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    const v35, 0x7f0c027d

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 570
    .local v16, "phishing":Landroid/view/MenuItem;
    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x4

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x2000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_16

    const/16 v35, 0x1

    :goto_9
    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 574
    const v35, 0x7f0c0279

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 575
    .local v14, "mute":Landroid/view/MenuItem;
    if-eqz v14, :cond_a

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v35

    if-eqz v35, :cond_17

    const/16 v35, 0x1

    :goto_a
    move/from16 v0, v35

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    :cond_a
    const v35, 0x7f0c0277

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 580
    .local v10, "markImportant":Landroid/view/MenuItem;
    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/high16 v36, 0x20000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_18

    const/16 v35, 0x1

    :goto_b
    move/from16 v0, v35

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 582
    const v35, 0x7f0c0278

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 583
    .local v11, "markNotImportant":Landroid/view/MenuItem;
    if-nez v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/high16 v36, 0x20000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_19

    const/16 v35, 0x1

    :goto_c
    move/from16 v0, v35

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    const/16 v36, 0x20

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_1a

    const/16 v20, 0x1

    .line 587
    .local v20, "showDelete":Z
    :goto_d
    const v35, 0x7f0c026d

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 588
    .local v32, "trash":Landroid/view/MenuItem;
    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    if-nez v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v35

    if-eqz v35, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v35, v0

    const/high16 v36, 0x100000

    invoke-virtual/range {v35 .. v36}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v35

    if-eqz v35, :cond_1b

    const/16 v21, 0x1

    .line 594
    .local v21, "showDiscardDrafts":Z
    :goto_e
    const v35, 0x7f0c0272

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 595
    .local v8, "discardDrafts":Landroid/view/MenuItem;
    if-eqz v8, :cond_b

    .line 596
    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 599
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0e0002

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/ui/MailActionBarView;->reorderMenu(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/view/Menu;I)V

    .line 602
    const/16 v35, 0x1

    return v35

    .line 504
    .end local v4    # "accountSupportsArchive":Z
    .end local v5    # "archive":Landroid/view/MenuItem;
    .end local v8    # "discardDrafts":Landroid/view/MenuItem;
    .end local v10    # "markImportant":Landroid/view/MenuItem;
    .end local v11    # "markNotImportant":Landroid/view/MenuItem;
    .end local v12    # "moveTo":Landroid/view/MenuItem;
    .end local v13    # "moveToInbox":Landroid/view/MenuItem;
    .end local v14    # "mute":Landroid/view/MenuItem;
    .end local v15    # "notSpam":Landroid/view/MenuItem;
    .end local v16    # "phishing":Landroid/view/MenuItem;
    .end local v17    # "read":Landroid/view/MenuItem;
    .end local v18    # "removeFolder":Landroid/view/MenuItem;
    .end local v19    # "showArchive":Z
    .end local v20    # "showDelete":Z
    .end local v21    # "showDiscardDrafts":Z
    .end local v26    # "showMoveTo":Z
    .end local v27    # "showMoveToInbox":Z
    .end local v28    # "showRemoveFolder":Z
    .end local v30    # "spam":Landroid/view/MenuItem;
    .end local v32    # "trash":Landroid/view/MenuItem;
    .end local v33    # "unread":Landroid/view/MenuItem;
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 516
    .restart local v17    # "read":Landroid/view/MenuItem;
    .restart local v33    # "unread":Landroid/view/MenuItem;
    :cond_d
    if-nez v25, :cond_e

    const/16 v35, 0x1

    :goto_f
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 516
    :cond_e
    const/16 v35, 0x0

    goto :goto_f

    .line 527
    .restart local v12    # "moveTo":Landroid/view/MenuItem;
    .restart local v13    # "moveToInbox":Landroid/view/MenuItem;
    .restart local v18    # "removeFolder":Landroid/view/MenuItem;
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 531
    .restart local v28    # "showRemoveFolder":Z
    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 533
    .restart local v26    # "showMoveTo":Z
    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 546
    .restart local v4    # "accountSupportsArchive":Z
    .restart local v5    # "archive":Landroid/view/MenuItem;
    .restart local v27    # "showMoveToInbox":Z
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 551
    .restart local v19    # "showArchive":Z
    :cond_13
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 562
    .restart local v30    # "spam":Landroid/view/MenuItem;
    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 566
    .restart local v15    # "notSpam":Landroid/view/MenuItem;
    :cond_15
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 570
    .restart local v16    # "phishing":Landroid/view/MenuItem;
    :cond_16
    const/16 v35, 0x0

    goto/16 :goto_9

    .line 576
    .restart local v14    # "mute":Landroid/view/MenuItem;
    :cond_17
    const/16 v35, 0x0

    goto/16 :goto_a

    .line 580
    .restart local v10    # "markImportant":Landroid/view/MenuItem;
    :cond_18
    const/16 v35, 0x0

    goto/16 :goto_b

    .line 583
    .restart local v11    # "markNotImportant":Landroid/view/MenuItem;
    :cond_19
    const/16 v35, 0x0

    goto/16 :goto_c

    .line 585
    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 592
    .restart local v20    # "showDelete":Z
    .restart local v32    # "trash":Landroid/view/MenuItem;
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_e
.end method

.method public onSetChanged(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 1
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->updateTopTitles()V

    .line 639
    iget-object v0, p0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0
.end method

.method public onSetEmpty()V
    .locals 3

    .prologue
    .line 628
    sget-object v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetEmpty called."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->destroy()V

    .line 630
    return-void
.end method

.method public onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 624
    return-void
.end method
