.class public final Lcom/kingsoft/mail/ui/TwoPaneController;
.super Lcom/kingsoft/mail/ui/AbstractActivityController;
.source "TwoPaneController.java"


# static fields
.field private static final SAVED_MISCELLANEOUS_VIEW:Ljava/lang/String; = "saved-miscellaneous-view"

.field private static final SAVED_MISCELLANEOUS_VIEW_TRANSACTION_ID:Ljava/lang/String; = "saved-miscellaneous-view-transaction-id"


# instance fields
.field private mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

.field private mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

.field private mMiscellaneousViewTransactionId:I

.field private mSavedMiscellaneousView:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/MailActivity;Lcom/kingsoft/mail/ui/ViewMode;)V
    .locals 1
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/MailActivity;
    .param p2, "viewMode"    # Lcom/kingsoft/mail/ui/ViewMode;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;-><init>(Landroid/app/Activity;Lcom/kingsoft/mail/ui/ViewMode;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 705
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 65
    return-void
.end method

.method private enableOrDisableCab()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->disableCabMode()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->enableCabMode()V

    goto :goto_0
.end method

.method private initializeConversationListFragment()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "android.intent.action.SEARCH"

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->shouldEnterSearchConvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 78
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->renderConversationList()V

    .line 79
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto :goto_0
.end method

.method private renderConversationList()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 90
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 91
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->newInstance(Lcom/kingsoft/mail/ConversationListContext;I)Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 93
    .local v0, "conversationListFragment":Landroid/app/Fragment;
    const v2, 0x7f0c023b

    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private repositionToastBar(Z)V
    .locals 5
    .param p1, "convModeShowInList"    # Z

    .prologue
    const/16 v4, 0x55

    .line 639
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 640
    .local v0, "mode":I
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 642
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v0, :pswitch_data_0

    .line 667
    :goto_0
    :pswitch_0
    return-void

    .line 645
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationListWidth()I

    move-result v2

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 647
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 648
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 652
    :pswitch_2
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    const/16 v2, 0x53

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 655
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationListWidth()I

    move-result v2

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 657
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 660
    :cond_0
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 661
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->computeConversationWidth()I

    move-result v2

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 663
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public doesActionChangeConversationListVisibility(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 100
    const v0, 0x7f0c0268

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c011f

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0269

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c002b

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0286

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c028c

    if-ne p1, v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitSearchMode()V
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 596
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    .line 601
    :cond_1
    return-void
.end method

.method public getFolderListViewChoiceMode()I
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public handleBackPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v1, v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 451
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/TwoPaneController;->popView(Z)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public handleUpPress()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 405
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v8

    .line 406
    .local v8, "mode":I
    const/4 v0, 0x6

    if-eq v8, v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->handleBackPress()Z

    .line 444
    :cond_1
    :goto_0
    return v9

    .line 408
    :cond_2
    const/4 v0, 0x7

    if-ne v8, v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {v0}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->handleBackPress()Z

    goto :goto_0

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 416
    :cond_5
    const/4 v0, 0x2

    if-eq v8, v0, :cond_6

    const/4 v0, 0x3

    if-ne v8, v0, :cond_a

    .line 417
    :cond_6
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    if-eqz v0, :cond_8

    .line 419
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_7
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-object v6, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSearchFilter:Ljava/lang/String;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mContext:Landroid/content/Context;

    const v2, 0x7f100016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 428
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_9
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 432
    :cond_a
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    if-eq v8, v0, :cond_b

    const/16 v0, 0x8

    if-ne v8, v0, :cond_1

    .line 435
    :cond_b
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, v1, :cond_d

    :cond_c
    move v7, v9

    .line 437
    .local v7, "isTopLevel":Z
    :goto_1
    if-eqz v7, :cond_e

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getFiltUnread()Z

    move-result v0

    if-nez v0, :cond_e

    .line 439
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->toggleDrawerState()V

    goto/16 :goto_0

    .end local v7    # "isTopLevel":Z
    :cond_d
    move v7, v4

    .line 435
    goto :goto_1

    .line 441
    .restart local v7    # "isTopLevel":Z
    :cond_e
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/ui/TwoPaneController;->popView(Z)V

    goto/16 :goto_0
.end method

.method protected hideOrRepositionToastBar(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    .line 671
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 672
    .local v0, "oldViewMode":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    new-instance v2, Lcom/kingsoft/mail/ui/TwoPaneController$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/kingsoft/mail/ui/TwoPaneController$1;-><init>(Lcom/kingsoft/mail/ui/TwoPaneController;IZ)V

    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    return-void
.end method

.method protected hideWaitForInitialization()V
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    move-result-object v1

    .line 377
    .local v1, "waitFragment":Lcom/kingsoft/mail/ui/WaitFragment;
    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 384
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 385
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 386
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->hideWaitForInitialization()V

    .line 387
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->isWaitingForSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->loadAccountInbox()V

    goto :goto_0
.end method

.method protected isConversationListVisible()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isDrawerEnabled()Z

    move-result v0

    return v0
.end method

.method public launchFragment(Landroid/app/Fragment;I)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "selectPosition"    # I

    .prologue
    .line 709
    const v0, 0x7f0c023d

    .line 711
    .local v0, "containerViewId":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 712
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 713
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 714
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 715
    const v3, 0x7f0c023d

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 716
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 717
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 720
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    if-ltz p2, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setRawSelected(IZ)V

    .line 723
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->onConfigurationChanged(Landroid/content/Context;)V

    .line 730
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->onViewModeChanged(I)V

    .line 732
    :cond_0
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onConversationListVisibilityChanged(Z)V

    .line 252
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->enableOrDisableCab()V

    .line 253
    return-void
.end method

.method public onConversationVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onConversationVisibilityChanged(Z)V

    .line 240
    if-nez p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/ConversationPagerController;->hide(Z)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationPagerController;->show(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Conversation;Z)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const v2, 0x7f0400b2

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->setContentView(I)V

    .line 151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const v2, 0x7f0c0238

    invoke-interface {v0, v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/TwoPaneLayout;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    .line 152
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/kingsoft/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mLayout is null!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    const-string/jumbo v2, "android.intent.action.SEARCH"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->setController(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)V

    .line 160
    if-eqz p1, :cond_1

    .line 161
    const-string/jumbo v0, "saved-miscellaneous-view"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 162
    const-string/jumbo v0, "saved-miscellaneous-view-transaction-id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ViewMode;->addListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    .line 170
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onCreate(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public onError(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "replaceVisibleToast"    # Z

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneController;->repositionToastBar(Z)V

    .line 692
    return-void
.end method

.method public onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneController;->setHierarchyFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 201
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V

    .line 202
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string/jumbo v1, "saved-miscellaneous-view"

    iget v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string/jumbo v0, "saved-miscellaneous-view-transaction-id"

    iget v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSetEmpty()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSetEmpty()V

    .line 298
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 300
    .local v0, "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->revertChoiceMode()V

    .line 304
    .end local v0    # "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    :cond_0
    return-void
.end method

.method public onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 2
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V

    .line 286
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 288
    .local v0, "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setChoiceNone()V

    .line 292
    .end local v0    # "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    :cond_0
    return-void
.end method

.method public onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 3
    .param p1, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 611
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 612
    .local v0, "mode":I
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/TwoPaneController;->repositionToastBar(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 613
    packed-switch v0, :pswitch_data_0

    .line 625
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 619
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kingsoft/mail/ui/ToastBarOperation;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "toastInfor":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewModeChanged(I)V
    .locals 3
    .param p1, "newMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    if-ltz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 208
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    iget v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 210
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMiscellaneousViewTransactionId:I

    .line 212
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSavedMiscellaneousView:Z

    .line 214
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onViewModeChanged(I)V

    .line 215
    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->hideWaitForInitialization()V

    .line 221
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationPagerController;->hide(Z)V

    .line 235
    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isConversationListCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneController;->informCursorVisiblity(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method protected popView(Z)V
    .locals 13
    .param p1, "preventClose"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x5

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 464
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v11

    .line 466
    .local v11, "mode":I
    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    .line 467
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 471
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-object v6, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSearchFilter:Ljava/lang/String;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mContext:Landroid/content/Context;

    const v2, 0x7f100016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 478
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 488
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 490
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->clearMergeOrfilterInfo()V

    .line 491
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 492
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterMergedConversationListMode()V

    goto :goto_0

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterChatMode()V

    goto/16 :goto_0

    .line 499
    :cond_9
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 504
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 506
    :cond_a
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->clearMergeOrfilterInfo()V

    .line 507
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 508
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 511
    :cond_b
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterFiltedMergedConversationListMode()V

    goto/16 :goto_0

    .line 514
    :cond_c
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 516
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 518
    :cond_d
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->clearMergeOrfilterInfo()V

    .line 519
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 520
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_e
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterUnreadConversationListMode()V

    goto/16 :goto_0

    .line 528
    :cond_f
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    goto/16 :goto_0

    .line 531
    :cond_10
    const/4 v0, 0x7

    if-ne v11, v0, :cond_11

    .line 532
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto/16 :goto_0

    .line 533
    :cond_11
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_16

    .line 535
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 537
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    const-string/jumbo v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :cond_13
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtFrom:Z

    if-eqz v0, :cond_14

    .line 541
    iget-object v2, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->filtRawSubject:Z

    const-string/jumbo v6, ""

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_14
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 546
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    .local v10, "fragment":Landroid/app/Fragment;
    move-object v8, v10

    .line 547
    check-cast v8, Lcom/kingsoft/mail/chat/ChatViewFragment;

    .line 548
    .local v8, "cvFragment":Lcom/kingsoft/mail/chat/ChatViewFragment;
    invoke-virtual {v8}, Lcom/kingsoft/mail/chat/ChatViewFragment;->getChatController()Lcom/kingsoft/mail/chat/ChatViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 553
    .end local v8    # "cvFragment":Lcom/kingsoft/mail/chat/ChatViewFragment;
    .end local v10    # "fragment":Landroid/app/Fragment;
    :cond_15
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_16
    if-ne v11, v5, :cond_17

    .line 556
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 557
    const-string/jumbo v7, ""

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/TwoPaneController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_17
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v9

    .line 563
    .local v9, "folderList":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-ne v11, v12, :cond_18

    if-eqz v9, :cond_18

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_18

    .line 567
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->navigateUpFolderHierarchy()V

    goto/16 :goto_0

    .line 575
    :cond_18
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    if-nez v0, :cond_19

    .line 576
    sget-object v0, Lcom/kingsoft/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v2, "mLayout is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    :cond_19
    if-ne v11, v12, :cond_1a

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isExpansiveLayout()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 583
    .local v12, "shouldLoadInbox":Z
    :goto_1
    if-eqz v12, :cond_1b

    .line 584
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->loadAccountInbox()V

    goto/16 :goto_0

    .end local v12    # "shouldLoadInbox":Z
    :cond_1a
    move v12, v4

    .line 579
    goto :goto_1

    .line 585
    .restart local v12    # "shouldLoadInbox":Z
    :cond_1b
    if-nez p1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto/16 :goto_0
.end method

.method public repositionToastBar(Lcom/kingsoft/mail/ui/ToastBarOperation;)V
    .locals 1
    .param p1, "op"    # Lcom/kingsoft/mail/ui/ToastBarOperation;

    .prologue
    .line 628
    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/ToastBarOperation;->isBatchUndo()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/TwoPaneController;->repositionToastBar(Z)V

    .line 629
    return-void
.end method

.method public resetActionBarIcon()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 9
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const-wide/16 v2, -0x1

    .line 350
    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v4, v7, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 351
    .local v4, "oldId":J
    :goto_0
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    .line 352
    .local v2, "newId":J
    :cond_0
    cmp-long v7, v4, v2

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 355
    .local v1, "different":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 357
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 358
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 359
    iget-object v7, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/SwipeableListView;->getHeaderViewsCount()I

    move-result v7

    iget v8, p1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    add-int v6, v7, v8

    .line 360
    .local v6, "position":I
    invoke-virtual {v0, v6, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setSelected(IZ)V

    .line 362
    .end local v6    # "position":I
    :cond_1
    return-void

    .end local v0    # "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    .end local v1    # "different":Z
    .end local v2    # "newId":J
    .end local v4    # "oldId":J
    :cond_2
    move-wide v4, v2

    .line 350
    goto :goto_0

    .line 352
    .restart local v2    # "newId":J
    .restart local v4    # "oldId":J
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public shouldShowFirstConversation()Z
    .locals 2

    .prologue
    .line 605
    const-string/jumbo v0, "android.intent.action.SEARCH"

    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->shouldEnterSearchConvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showChatView(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v4, :cond_0

    .line 127
    const/4 v4, 0x0

    .line 143
    :goto_0
    return v4

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/chat/ChatViewFragment;->newInstance(Landroid/os/Bundle;)Lcom/kingsoft/mail/chat/ChatViewFragment;

    move-result-object v2

    .line 130
    .local v2, "fragment":Landroid/app/Fragment;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->enterChatMode()V

    .line 131
    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 133
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 134
    const v4, 0x7f0c023b

    iget-object v5, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 136
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-object v1, v2

    .line 137
    check-cast v1, Lcom/kingsoft/mail/chat/ChatViewFragment;

    .line 139
    .local v1, "cvf":Lcom/kingsoft/mail/chat/ChatViewFragment;
    const-string/jumbo v4, "conversationUri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 140
    .local v0, "conversation":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 141
    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .end local v0    # "conversation":Landroid/os/Parcelable;
    invoke-virtual {v4, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 143
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V
    .locals 8
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "inLoaderCallbacks"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    .line 313
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 316
    :cond_0
    if-nez p1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->handleBackPress()Z

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->enableOrDisableCab()V

    .line 329
    iput-object p1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    .line 331
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 332
    .local v0, "mode":I
    sget-object v1, Lcom/kingsoft/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "IN TPC.showConv, oldMode=%s conv=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 333
    if-eq v0, v7, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    .line 339
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mLayout:Lcom/kingsoft/mail/ui/TwoPaneLayout;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/TwoPaneLayout;->isModeChangePending()Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/TwoPaneController;->onConversationVisibilityChanged(Z)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationMode()V

    goto :goto_1

    .line 342
    :cond_4
    sget-object v1, Lcom/kingsoft/mail/ui/TwoPaneController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "TPC.showConversation will wait for TPL.animationEnd to show!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V
    .locals 0
    .param p1, "listContext"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 120
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->initializeConversationListFragment()V

    .line 121
    return-void
.end method

.method public showWaitForInitialization()V
    .locals 4

    .prologue
    .line 366
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    .line 368
    iget-object v1, p0, Lcom/kingsoft/mail/ui/TwoPaneController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 369
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 370
    const v1, 0x7f0c023b

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/TwoPaneController;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    move-result-object v2

    const-string/jumbo v3, "wait-fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 371
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 372
    return-void
.end method
