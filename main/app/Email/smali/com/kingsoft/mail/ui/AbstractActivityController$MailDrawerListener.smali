.class Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailDrawerListener"
.end annotation


# instance fields
.field private mDrawerState:I

.field private mOldSlideOffset:F

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 1

    .prologue
    .line 5408
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5409
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    .line 5410
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    .line 5411
    return-void
.end method


# virtual methods
.method public getDrawerState()I
    .locals 1

    .prologue
    .line 5533
    iget v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    return v0
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v0, :cond_0

    .line 5421
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->refreshDrawer()V

    .line 5423
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 5416
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 7
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5432
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v0

    .line 5433
    .local v0, "folderList":Lcom/kingsoft/mail/ui/FolderListFragment;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->refreshBackground()V

    .line 5434
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 5435
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setAlpha(F)V

    .line 5449
    :cond_0
    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5451
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x3c23d70a

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    .line 5452
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5453
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5454
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    .line 5480
    :cond_1
    :goto_0
    iput p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    .line 5481
    return-void

    .line 5455
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mOldSlideOffset:F

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    .line 5456
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5457
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5458
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 5459
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v1

    .line 5460
    .local v1, "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-eqz v1, :cond_1

    .line 5461
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->updateScroll()V

    goto :goto_0

    .line 5465
    .end local v1    # "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    .line 5466
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5467
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5468
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    goto :goto_0

    .line 5469
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 5470
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5471
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5472
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 5473
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v1

    .line 5474
    .restart local v1    # "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-eqz v1, :cond_1

    .line 5475
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->updateScroll()V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 5490
    iput p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    .line 5491
    iget v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->mDrawerState:I

    if-nez v1, :cond_2

    .line 5492
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v1, :cond_0

    .line 5493
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->refreshDrawer()V

    .line 5495
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3700(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5496
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v2, 0x0

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3702(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5498
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5499
    const-string/jumbo v1, "folder"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5500
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_1

    .line 5502
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFilterConditionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5504
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3800(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 5508
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public refreshDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5516
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-boolean v2, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    .line 5517
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 5518
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 5519
    .local v0, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 5520
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->clear()V

    .line 5522
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3900(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 5523
    return-void
.end method
