.class Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerStateChangeListener"
.end annotation


# instance fields
.field private mDrawerState:I

.field private mOldSlideOffset:F

.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 1

    .prologue
    .line 5287
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5288
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mDrawerState:I

    .line 5289
    return-void
.end method


# virtual methods
.method public onDrawerSlide(FI)V
    .locals 7
    .param p1, "openRatio"    # F
    .param p2, "slideOffset"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5326
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5327
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 5329
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/MenuDrawer;->getMenuView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5330
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v0

    .line 5331
    .local v0, "folderList":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-eqz v0, :cond_1

    .line 5332
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/FolderListFragment;->refreshBackground()V

    .line 5335
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 5336
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAlpha(F)V

    .line 5350
    :cond_2
    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mDrawerState:I

    if-ne v2, v6, :cond_5

    .line 5352
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-float v2, p2

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mOldSlideOffset:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 5353
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5354
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5355
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    .line 5381
    :cond_3
    :goto_0
    int-to-float v2, p2

    iput v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mOldSlideOffset:F

    .line 5385
    return-void

    .line 5356
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-nez v2, :cond_3

    int-to-float v2, p2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mOldSlideOffset:F

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 5357
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5358
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5359
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 5360
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v1

    .line 5361
    .local v1, "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-eqz v1, :cond_3

    .line 5362
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->updateScroll()V

    goto :goto_0

    .line 5366
    .end local v1    # "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v2, p2

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    .line 5367
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5368
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5369
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->maybeEnableCabMode()V

    goto :goto_0

    .line 5370
    :cond_6
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v2

    if-nez v2, :cond_3

    int-to-float v2, p2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 5371
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v2, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5372
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 5373
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableCabMode()V

    .line 5374
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;

    move-result-object v1

    .line 5375
    .restart local v1    # "folderListFragment":Lcom/kingsoft/mail/ui/FolderListFragment;
    if-eqz v1, :cond_3

    .line 5376
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/FolderListFragment;->updateScroll()V

    goto :goto_0
.end method

.method public onDrawerStateChange(II)V
    .locals 4
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x0

    .line 5293
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5294
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 5296
    :cond_0
    if-nez p2, :cond_5

    .line 5297
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v1, :cond_1

    .line 5298
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->refreshDrawer()V

    .line 5304
    :cond_1
    :goto_0
    iput p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mDrawerState:I

    .line 5306
    iget v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->mDrawerState:I

    if-nez v1, :cond_4

    .line 5307
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-boolean v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    if-eqz v1, :cond_2

    .line 5308
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->refreshDrawer()V

    .line 5310
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3700(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5311
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3702(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    .line 5312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5313
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5314
    const-string/jumbo v1, "folder"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5315
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_3

    .line 5316
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFilterConditionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5318
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3800(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 5322
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_4
    return-void

    .line 5300
    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 5301
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # setter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z
    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z

    goto :goto_0
.end method

.method public refreshDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5393
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-boolean v2, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    .line 5394
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 5395
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    iget-object v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 5396
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 5397
    .local v0, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    .line 5398
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->clear()V

    .line 5400
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;->this$0:Lcom/kingsoft/mail/ui/AbstractActivityController;

    # getter for: Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;
    invoke-static {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->access$3900(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 5401
    return-void
.end method
