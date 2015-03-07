.class public final Lcom/kingsoft/mail/ui/OnePaneController;
.super Lcom/kingsoft/mail/ui/AbstractActivityController;
.source "OnePaneController.java"


# static fields
.field private static final CONVERSATION_LIST_NEVER_SHOWN_KEY:Ljava/lang/String; = "conversation-list-never-shown"

.field private static final CONVERSATION_LIST_TRANSACTION_KEY:Ljava/lang/String; = "conversation-list-transaction"

.field private static final CONVERSATION_LIST_VISIBLE_KEY:Ljava/lang/String; = "conversation-list-visible"

.field private static final CONVERSATION_TRANSACTION_KEY:Ljava/lang/String; = "conversation-transaction"

.field private static final INVALID_ID:I = -0x1


# instance fields
.field private final TIMING_DRAFT:I

.field private final duration:I

.field private mConversationListNeverShown:Z

.field private mConversationListVisible:Z

.field private mLastConversationListTransactionId:I

.field private mLastConversationTransactionId:I


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;)V
    .locals 2
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/MailActivity;
    .param p2, "viewMode"    # Lcom/kingsoft/mail/ui/ViewMode;

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;-><init>(Landroid/app/Activity;Lcom/kingsoft/mail/ui/ViewMode;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 59
    iput v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 60
    iput v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 64
    const/16 v0, 0x1001

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->TIMING_DRAFT:I

    .line 65
    const/16 v0, 0x1388

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->duration:I

    .line 69
    return-void
.end method

.method private static inInbox(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ConversationListContext;)Z
    .locals 1
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "context"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    invoke-static {v0, p0}, Lcom/kingsoft/mail/ui/OnePaneController;->isDefaultInbox(Lcom/kingsoft/mail/utils/FolderUri;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultInbox(Lcom/kingsoft/mail/utils/FolderUri;Lcom/kingsoft/mail/providers/Account;)Z
    .locals 1
    .param p0, "candidate"    # Lcom/kingsoft/mail/utils/FolderUri;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I
    .locals 10
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "anchor"    # I
    .param p5, "leftIn"    # Z

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    iget-object v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 382
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 384
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-boolean v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mIsColdLaunch:Z

    if-nez v5, :cond_6

    .line 385
    iget-object v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    .line 386
    .local v3, "mode":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v4

    .line 387
    .local v4, "preMode":I
    if-eqz p5, :cond_4

    .line 388
    if-ne v8, v3, :cond_0

    if-eq v9, v4, :cond_1

    :cond_0
    if-ne v3, v4, :cond_3

    if-ne v7, v3, :cond_3

    .line 390
    :cond_1
    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 408
    .end local v3    # "mode":I
    .end local v4    # "preMode":I
    :cond_2
    :goto_0
    invoke-virtual {v1, p4, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 409
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v2

    .line 410
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 411
    return v2

    .line 392
    .end local v2    # "id":I
    .restart local v3    # "mode":I
    .restart local v4    # "preMode":I
    :cond_3
    const/high16 v5, 0x7f060000

    const v6, 0x7f060003

    invoke-virtual {v1, v5, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 396
    :cond_4
    if-ne v7, v4, :cond_2

    const/4 v5, 0x5

    if-eq v5, v3, :cond_5

    if-eq v9, v3, :cond_5

    if-eq v8, v3, :cond_5

    const/16 v5, 0xc

    if-ne v5, v3, :cond_2

    .line 401
    :cond_5
    const v5, 0x7f060002

    const v6, 0x7f060001

    invoke-virtual {v1, v5, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 406
    .end local v3    # "mode":I
    .end local v4    # "preMode":I
    :cond_6
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mIsColdLaunch:Z

    goto :goto_0
.end method

.method private transitionBackToConversationListMode()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 543
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v7

    .line 544
    .local v7, "mode":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->enableCabMode()V

    .line 545
    iput-boolean v8, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 546
    const/4 v0, 0x7

    if-ne v7, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    .line 548
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtUnread:Z

    iget-object v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    .line 602
    :goto_0
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 603
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    .line 604
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    .line 586
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0, v8, v8, v8}, Lcom/kingsoft/mail/ui/OnePaneController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;ZZZ)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 561
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 563
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->clearMergeOrfilterInfo()V

    .line 564
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 565
    const-string/jumbo v5, ""

    move-object v0, p0

    move v2, v9

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterMergedConversationListMode()V

    goto :goto_1

    .line 576
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 578
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->clearMergeOrfilterInfo()V

    .line 579
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 580
    const-string/jumbo v5, ""

    move-object v0, p0

    move v2, v9

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterFiltedMergedConversationListMode()V

    goto :goto_1

    .line 589
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_9

    iget-object v6, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 590
    .local v6, "folder":Lcom/kingsoft/mail/providers/Folder;
    :goto_2
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtUnread:Z

    if-eqz v0, :cond_a

    .line 592
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterUnreadConversationListMode()V

    .line 593
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0, v8, v8, v8}, Lcom/kingsoft/mail/ui/OnePaneController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;ZZZ)V

    goto/16 :goto_0

    .line 589
    .end local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_9
    iget-object v6, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    goto :goto_2

    .line 599
    .restart local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v0, v8, v9, v8}, Lcom/kingsoft/mail/ui/OnePaneController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;ZZZ)V

    goto/16 :goto_0
.end method

.method private transitionToInbox()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/OnePaneController;->isDefaultInbox(Lcom/kingsoft/mail/utils/FolderUri;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->loadAccountInbox()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/OnePaneController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 131
    return-void
.end method

.method public doesActionChangeConversationListVisibility(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 352
    const v0, 0x7f0c0270

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0271

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c026d

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0272

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0277

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0278

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0279

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c027b

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c027c

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c027d

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0285

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0275

    if-ne p1, v0, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public handleBackPress()Z
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 430
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v10

    .line 432
    .local v10, "mode":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    .line 433
    .local v9, "fragment":Landroid/app/Fragment;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->toggleDrawerState()V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v4, v4}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 502
    :cond_0
    return v11

    .line 435
    :cond_1
    const/4 v0, 0x2

    if-eq v10, v0, :cond_2

    const/4 v0, 0x3

    if-ne v10, v0, :cond_6

    .line 437
    :cond_2
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-object v6, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mContext:Landroid/content/Context;

    const v2, 0x7f100016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 449
    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 456
    :cond_6
    const/16 v0, 0xc

    if-ne v10, v0, :cond_7

    .line 458
    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 461
    :cond_9
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v8, v9

    .line 462
    check-cast v8, Lcom/kingsoft/mail/chat/ChatViewFragment;

    .line 463
    .local v8, "cvFragment":Lcom/kingsoft/mail/chat/ChatViewFragment;
    invoke-virtual {v8}, Lcom/kingsoft/mail/chat/ChatViewFragment;->getChatController()Lcom/kingsoft/mail/chat/ChatViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    .end local v8    # "cvFragment":Lcom/kingsoft/mail/chat/ChatViewFragment;
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 469
    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_b
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    if-eqz v0, :cond_c

    .line 473
    iget-object v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    const-string/jumbo v6, ""

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_c
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_d
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 481
    :cond_e
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_12

    .line 483
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isUnreadFolder()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 484
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 485
    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :cond_f
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    if-eqz v0, :cond_10

    .line 487
    iget-object v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    const-string/jumbo v6, ""

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_10
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :cond_11
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/OnePaneController;->onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z

    goto/16 :goto_0

    .line 495
    :cond_12
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    goto/16 :goto_0

    .line 499
    :cond_13
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto/16 :goto_0
.end method

.method public handleUpPress()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 533
    iget-object v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 534
    .local v0, "mode":I
    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->toggleDrawerState()V

    .line 539
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->handleBackPress()Z

    move-result v1

    goto :goto_0
.end method

.method protected hideOrRepositionToastBar(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 637
    return-void
.end method

.method protected hideWaitForInitialization()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionToInbox()V

    .line 347
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->hideWaitForInitialization()V

    .line 348
    return-void
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    return v0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public launchFragment(Landroid/app/Fragment;I)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "selectPosition"    # I

    .prologue
    .line 669
    const/16 v2, 0x1001

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c01ed

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/OnePaneController;->shouldSlideLeft(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I

    .line 671
    return-void

    .line 669
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mRealActivity:Landroid/app/Activity;

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer$Type;->BEHIND:Lnet/simonvt/menudrawer/MenuDrawer$Type;

    sget-object v3, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    invoke-static {v0, v1, v3, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;Lnet/simonvt/menudrawer/MenuDrawer$Type;Lnet/simonvt/menudrawer/Position;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f040091

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(I)V

    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    const v1, 0x7f040092

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(I)V

    .line 138
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mRealActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 140
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x1003

    .line 143
    .local v2, "transition":I
    :goto_0
    new-instance v1, Lcom/kingsoft/mail/ui/DrawerFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/DrawerFragment;-><init>()V

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c01f8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I

    .line 148
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onCreate(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 140
    .end local v2    # "transition":I
    :cond_0
    const/16 v2, 0x1001

    goto :goto_0
.end method

.method public onError(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "replaceVisibleToast"    # Z

    .prologue
    .line 653
    return-void
.end method

.method public onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/OnePaneController;->setHierarchyFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 520
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 521
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 74
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string/jumbo v0, "conversation-list-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 79
    const-string/jumbo v0, "conversation-transaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    .line 80
    const-string/jumbo v0, "conversation-list-visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 81
    const-string/jumbo v0, "conversation-list-never-shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string/jumbo v0, "conversation-list-transaction"

    iget v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v0, "conversation-transaction"

    iget v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string/jumbo v0, "conversation-list-visible"

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string/jumbo v0, "conversation-list-never-shown"

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 5
    .param p1, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 615
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 616
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    packed-switch v1, :pswitch_data_0

    .line 632
    .end local v0    # "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 625
    .restart local v0    # "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    .restart local v1    # "mode":I
    :pswitch_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/kingsoft/mail/ui/ToastBarOperation;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "toastInfor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewModeChanged(I)V
    .locals 2
    .param p1, "newMode"    # I

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onViewModeChanged(I)V

    .line 170
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationPagerController;->hide(Z)V

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/OnePaneController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 178
    :cond_2
    return-void
.end method

.method public resetActionBarIcon()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public shouldShowFirstConversation()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method protected showChatView(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x6

    const/4 v9, 0x1

    .line 309
    iget-object v7, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/ViewMode;->enterChatMode()V

    .line 310
    iget-object v7, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v5

    .line 312
    .local v5, "preMode":I
    iget-object v7, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v7}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 313
    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 314
    .local v0, "chatViewFragment":Landroid/app/Fragment;
    if-ne v8, v5, :cond_1

    instance-of v7, v0, Lcom/kingsoft/mail/chat/ChatViewFragment;

    if-eqz v7, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v9

    .line 318
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 319
    .local v4, "ft":Landroid/app/FragmentTransaction;
    const/4 v7, 0x4

    if-ne v7, v5, :cond_2

    .line 320
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 326
    :goto_1
    invoke-static {p1}, Lcom/kingsoft/mail/chat/ChatViewFragment;->newInstance(Landroid/os/Bundle;)Lcom/kingsoft/mail/chat/ChatViewFragment;

    move-result-object v3

    .line 327
    .local v3, "fragment":Landroid/app/Fragment;
    const v7, 0x7f0c01ed

    invoke-virtual {v4, v7, v3, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 328
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 329
    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 330
    const-string/jumbo v7, "conversationUri"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 331
    .local v1, "conversation":Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 332
    iget-object v7, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .end local v1    # "conversation":Landroid/os/Parcelable;
    invoke-virtual {v7, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_0

    .line 321
    .end local v3    # "fragment":Landroid/app/Fragment;
    :cond_2
    if-ne v8, v5, :cond_3

    .line 322
    const/high16 v7, 0x7f060000

    const v8, 0x7f060003

    invoke-virtual {v4, v7, v8}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 324
    :cond_3
    const v7, 0x7f060002

    const v8, 0x7f060001

    invoke-virtual {v4, v7, v8}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method protected showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V
    .locals 10
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "inLoaderCallbacks"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    .line 236
    iput-object p1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

    .line 237
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 238
    if-nez p1, :cond_9

    .line 239
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getPosition()I

    move-result v6

    .line 241
    .local v6, "currentPosition":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToFirst()Z

    .line 242
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {v0, v3}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

    .line 243
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 244
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/OnePaneController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 246
    .end local v6    # "currentPosition":I
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 249
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/mail/ui/OnePaneController;->onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z

    goto :goto_0

    .line 252
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    .line 253
    const-string/jumbo v5, ""

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 258
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    goto :goto_0

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v0, :cond_7

    .line 261
    iput-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 262
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtRawSubject:Z

    .line 263
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->filtFrom:Z

    .line 265
    :cond_7
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    .line 266
    const-string/jumbo v5, ""

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->transitionBackToConversationListMode()V

    goto :goto_0

    .line 273
    :cond_9
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->disableCabMode()V

    .line 274
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {v0}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 280
    .local v8, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 286
    .local v9, "ft":Landroid/app/FragmentTransaction;
    const v0, 0x7f0c01ed

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v7

    .line 300
    .local v7, "f":Landroid/app/Fragment;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1, v3, p1, v4}, Lcom/kingsoft/mail/browse/ConversationPagerController;->show(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Z)V

    .line 301
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    goto/16 :goto_0

    .line 277
    .end local v7    # "f":Landroid/app/Fragment;
    .end local v8    # "fm":Landroid/app/FragmentManager;
    .end local v9    # "ft":Landroid/app/FragmentTransaction;
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationMode()V

    goto :goto_1
.end method

.method public showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V
    .locals 12
    .param p1, "listContext"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    const v4, 0x7f0c01ed

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 192
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->enableCabMode()V

    .line 193
    iput-boolean v10, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListVisible:Z

    .line 195
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "tag":Ljava/lang/String;
    const/4 v9, 0x0

    .line 197
    .local v9, "transition":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 198
    .local v7, "fm":Landroid/app/FragmentManager;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v8

    .line 199
    .local v8, "mode":I
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    .line 201
    .local v6, "currentFragment":Landroid/app/Fragment;
    instance-of v0, v6, Lcom/kingsoft/mail/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 202
    if-ne v10, v8, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/OnePaneController;->inInbox(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p1, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationVisibilityChanged(Z)V

    .line 229
    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/ui/OnePaneController;->onConversationListVisibilityChanged(Z)V

    .line 230
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mConversationListNeverShown:Z

    .line 231
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->newInstance(Lcom/kingsoft/mail/ConversationListContext;I)Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    .line 207
    .local v1, "conversationListFragment":Landroid/app/Fragment;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    iget-object v11, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v11}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v11

    invoke-virtual {p0, v0, v11}, Lcom/kingsoft/mail/ui/OnePaneController;->shouldSlideLeft(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v10

    .line 209
    .local v5, "isLeftIn":Z
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/OnePaneController;->inInbox(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    .line 212
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    .line 225
    :goto_2
    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .end local v5    # "isLeftIn":Z
    :cond_2
    move v5, v2

    .line 207
    goto :goto_1

    .line 216
    .restart local v5    # "isLeftIn":Z
    :cond_3
    iget-object v0, p1, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    move-object v0, p0

    .line 217
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    goto :goto_2
.end method

.method public showWaitForInitialization()V
    .locals 6

    .prologue
    .line 339
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    .line 340
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/OnePaneController;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    move-result-object v1

    const/16 v2, 0x1001

    const-string/jumbo v3, "wait-fragment"

    const v4, 0x7f0c01ed

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/kingsoft/mail/ui/OnePaneController;->shouldSlideLeft(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/OnePaneController;->replaceFragment(Landroid/app/Fragment;ILjava/lang/String;IZ)I

    .line 342
    return-void

    .line 340
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " lastConvListTransId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/kingsoft/mail/ui/OnePaneController;->mLastConversationListTransactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
