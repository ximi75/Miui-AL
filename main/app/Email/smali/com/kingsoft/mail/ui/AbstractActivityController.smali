.class public abstract Lcom/kingsoft/mail/ui/AbstractActivityController;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/ActivityController;
.implements Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;
.implements Lcom/kingsoft/mail/ui/ISearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;,
        Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_REQUEST_CODE:I = 0x1

.field public static final LAST_FRAGMENT_LOADER_ID:I = 0x3e8

.field public static final LAST_LOADER_ID:I = 0x64

.field private static final LOADER_ACCOUNT_CURSOR:I = 0x0

.field private static final LOADER_ACCOUNT_INBOX:I = 0x5

.field private static final LOADER_ACCOUNT_UPDATE_CURSOR:I = 0x7

.field private static final LOADER_CONVERSATION_LIST:I = 0x4

.field public static final LOADER_FIRST_FOLDER:I = 0x8

.field private static final LOADER_FOLDER_CURSOR:I = 0x2

.field private static final LOADER_SEARCH:I = 0x6

.field private static final LOADER_UNREAD_FOLDER:I = 0x4

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final REAUTHENTICATE_REQUEST_CODE:I = 0x2

.field private static final SAVED_ACCOUNT:Ljava/lang/String; = "saved-account"

.field private static final SAVED_ACTION:Ljava/lang/String; = "saved-action"

.field private static final SAVED_ACTION_FROM_SELECTED:Ljava/lang/String; = "saved-action-from-selected"

.field private static final SAVED_CONVERSATION:Ljava/lang/String; = "saved-conversation"

.field private static final SAVED_CONVERSATION_LIST_SCROLL_POSITIONS:Ljava/lang/String; = "saved-conversation-list-scroll-positions"

.field private static final SAVED_DETACHED_CONV_URI:Ljava/lang/String; = "saved-detached-conv-uri"

.field private static final SAVED_FOLDER:Ljava/lang/String; = "saved-folder"

.field private static final SAVED_HIERARCHICAL_FOLDER:Ljava/lang/String; = "saved-hierarchical-folder"

.field private static final SAVED_INBOX_KEY:Ljava/lang/String; = "m-inbox"

.field private static final SAVED_QUERY:Ljava/lang/String; = "saved-query"

.field private static final SAVED_SELECTED_SET:Ljava/lang/String; = "saved-selected-set"

.field private static final SAVED_TOAST_BAR_OP:Ljava/lang/String; = "saved-toast-bar-op"

.field public static final SYNC_ERROR_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "SyncErrorDialogFragment"

.field protected static final TAG_WAIT:Ljava/lang/String; = "wait-fragment"

.field public static accountname:Ljava/lang/String;

.field public static isInit:Z

.field public static isResultOk:Z

.field public static localSearchCount:I

.field public static onReStartClearState:Z

.field public static remoteSearchCount:I

.field public static searchParam:Ljava/lang/String;

.field public static searchParam4Conversation:Ljava/lang/String;


# instance fields
.field private final BUNDLE_ACCOUNT_KEY:Ljava/lang/String;

.field private final BUNDLE_FOLDER_KEY:Ljava/lang/String;

.field private final BUNDLE_MESSAGE_KEY:Ljava/lang/String;

.field public final TIMING_DRAFT:I

.field protected canchatswitch:Z

.field protected conversationsaved:Lcom/kingsoft/mail/providers/Conversation;

.field public final duration:I

.field protected filtFrom:Z

.field protected filtRawSubject:Z

.field protected filtUnread:Z

.field public handlerIng:Z

.field protected mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

.field private final mAccountObservers:Landroid/database/DataSetObservable;

.field protected mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

.field protected final mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private final mAllAccountObservers:Landroid/database/DataSetObservable;

.field private mAllAccounts:[Lcom/kingsoft/mail/providers/Account;

.field private mAsyncRefreshTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

.field private mAutoAdvanceOp:Ljava/lang/Runnable;

.field mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

.field protected final mContext:Landroid/content/Context;

.field protected mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

.field protected mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

.field private final mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/ui/AbstractActivityController$LoadFinishedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationListLoadFinishedIgnored:Z

.field private final mConversationListObservable:Landroid/database/DataSetObservable;

.field private mConversationListRefreshTask:Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;

.field private final mConversationListScrollPositions:Landroid/os/Bundle;

.field private mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

.field private final mCurrentAccountUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private mDestroyed:Z

.field private mDetachedConvUri:Landroid/net/Uri;

.field private mDialogAction:I

.field private mDialogFromSelectedSet:Z

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

.field protected mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

.field protected mDrawerListener:Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;

.field private final mDrawerObservers:Landroid/database/DataSetObservable;

.field protected mDrawerPullout:Landroid/view/View;

.field private mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

.field protected mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field protected mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

.field private mFolderChanged:Z

.field private final mFolderItemUpdateDelayMs:I

.field private mFolderListFolder:Lcom/kingsoft/mail/providers/Folder;

.field private final mFolderObservable:Landroid/database/DataSetObservable;

.field protected mFolderSyncTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

.field private mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

.field private mForceRefresh:Z

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field public mHandler:Landroid/os/Handler;

.field protected mHasNewAccountOrFolder:Z

.field protected mHaveAccountList:Z

.field private mHaveSearchResults:Z

.field private mHideMenuItems:Z

.field protected mInbox:Lcom/kingsoft/mail/providers/Folder;

.field protected mIsColdLaunch:Z

.field private mIsDragHappening:Z

.field private final mIsTablet:Z

.field private final mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

.field protected mListViewForAnimating:Landroid/widget/ListView;

.field private mLogServiceChecker:Ljava/lang/Runnable;

.field protected mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

.field protected mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

.field protected mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

.field private mPendingDestruction:Lcom/kingsoft/mail/ui/DestructiveAction;

.field private mQueryOutBox:Z

.field protected final mRealActivity:Landroid/app/Activity;

.field private final mRecentFolderObservers:Landroid/database/DataSetObservable;

.field private mRecentsDataUpdated:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSafeToModifyFragments:Z

.field protected mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

.field protected mSearchFilter:Ljava/lang/String;

.field private final mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private final mShowUndoBarDelay:I

.field protected mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

.field protected final mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

.field private final mUndoNotificationObserver:Landroid/database/DataSetObserver;

.field private final mUpOrBackHandlers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

.field protected final mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

.field private mWaitFragment:Lcom/kingsoft/mail/ui/WaitFragmentEmail;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    const-string/jumbo v0, ""

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->accountname:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    .line 5738
    sput-boolean v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->isResultOk:Z

    .line 5740
    sput-boolean v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->onReStartClearState:Z

    .line 5762
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->isInit:Z

    .line 5763
    sput v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->remoteSearchCount:I

    .line 5764
    sput v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->localSearchCount:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kingsoft/mail/ui/ViewMode;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewMode"    # Lcom/kingsoft/mail/ui/ViewMode;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const-string/jumbo v1, "account"

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->BUNDLE_ACCOUNT_KEY:Ljava/lang/String;

    .line 217
    const-string/jumbo v1, "folder"

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->BUNDLE_FOLDER_KEY:Ljava/lang/String;

    .line 218
    const-string/jumbo v1, "message"

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->BUNDLE_MESSAGE_KEY:Ljava/lang/String;

    .line 225
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    .line 226
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    .line 228
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    .line 230
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderChanged:Z

    .line 241
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->canchatswitch:Z

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    .line 252
    iput-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    .line 255
    const/16 v1, 0x1388

    iput v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->duration:I

    .line 256
    const/16 v1, 0x1001

    iput v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->TIMING_DRAFT:I

    .line 259
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    .line 293
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    .line 309
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSafeToModifyFragments:Z

    .line 311
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentAccountUris:Ljava/util/Set;

    .line 313
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "List"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;

    .line 316
    iput-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mLogServiceChecker:Ljava/lang/Runnable;

    .line 318
    new-array v1, v3, [Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;

    .line 338
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "Account"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;

    .line 340
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "RecentFolder"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRecentFolderObservers:Landroid/database/DataSetObservable;

    .line 342
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "AllAccounts"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccountObservers:Landroid/database/DataSetObservable;

    .line 344
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "CurrentFolder"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderObservable:Landroid/database/DataSetObservable;

    .line 346
    new-instance v1, Lcom/kingsoft/mail/utils/Observable;

    const-string/jumbo v2, "Drawer"

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/utils/Observable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    .line 351
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 373
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    invoke-direct {v1, p0, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    .line 377
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    invoke-direct {v1, p0, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    .line 379
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    invoke-direct {v1, p0, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    .line 522
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z

    .line 529
    const/4 v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    .line 537
    iput-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    .line 540
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsColdLaunch:Z

    .line 550
    iput-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAutoAdvanceOp:Ljava/lang/Runnable;

    .line 552
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    .line 564
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mQueryOutBox:Z

    .line 566
    new-instance v1, Lcom/kingsoft/mail/utils/DrawIdler;

    invoke-direct {v1}, Lcom/kingsoft/mail/utils/DrawIdler;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

    .line 570
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$1;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUndoNotificationObserver:Landroid/database/DataSetObserver;

    .line 580
    iput-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    .line 5778
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mForceRefresh:Z

    .line 589
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRealActivity:Landroid/app/Activity;

    move-object v1, p1

    .line 590
    check-cast v1, Lcom/kingsoft/mail/ui/ControllableActivity;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 593
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 594
    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    .line 595
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    .line 597
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;-><init>(Lcom/kingsoft/mail/ui/ConversationPositionTracker$Callbacks;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    .line 601
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->addObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V

    .line 603
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 604
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderItemUpdateDelayMs:I

    .line 605
    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mShowUndoBarDelay:I

    .line 606
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/VeiledAddressMatcher;->newInstance(Landroid/content/res/Resources;)Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    .line 607
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    .line 608
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z

    .line 609
    return-void
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/AbstractActivityController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mShowUndoBarDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/ui/DestructiveAction;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->destroyPending(Lcom/kingsoft/mail/ui/DestructiveAction;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/utils/DrawIdler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/app/Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isFragmentVisible(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->perhapsShowFirstSearchResult()V

    return-void
.end method

.method static synthetic access$1900(Lcom/kingsoft/mail/ui/AbstractActivityController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderItemUpdateDelayMs:I

    return v0
.end method

.method static synthetic access$2000(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/providers/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setHasFolderChanged(Lcom/kingsoft/mail/providers/Folder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "x2"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/content/ObjectCursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/content/ObjectCursor;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->accountsUpdated(Lcom/kingsoft/mail/content/ObjectCursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/content/ObjectCursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/content/ObjectCursor;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateAccounts(Lcom/kingsoft/mail/content/ObjectCursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/kingsoft/mail/ui/AbstractActivityController;ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/LoaderManager$LoaderCallbacks;
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->requestSync()V

    return-void
.end method

.method static synthetic access$3100(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->startAsyncRefreshTask(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->promptUserForAuthentication(Lcom/kingsoft/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/kingsoft/mail/ui/AbstractActivityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showStorageErrorDialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "x2"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListener(Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/kingsoft/mail/ui/AbstractActivityController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedIgnored:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/kingsoft/mail/ui/AbstractActivityController;)Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/kingsoft/mail/ui/AbstractActivityController;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kingsoft/mail/ui/AbstractActivityController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mQueryOutBox:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # [B

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->doMarkConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "x2"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->moveToDraftAndEdit(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    return-void
.end method

.method private accountsUpdated(Lcom/kingsoft/mail/content/ObjectCursor;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "accountCursor":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;"
    const/4 v2, 0x1

    .line 3619
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3648
    :cond_0
    :goto_0
    return v2

    .line 3625
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentAccountUris:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3631
    const/4 v1, 0x0

    .line 3633
    .local v1, "foundCurrentAccount":Z
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 3634
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3635
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/providers/Account;->settingsDiffer(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3639
    const/4 v1, 0x1

    .line 3642
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentAccountUris:Ljava/util/Set;

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3645
    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3648
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private attachEmptyFolderDialogFragmentListener()V
    .locals 3

    .prologue
    .line 2029
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "EmptyFolderDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;

    .line 2033
    .local v0, "fragment":Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;
    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->setListener(Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;)V

    .line 2036
    :cond_0
    return-void
.end method

.method private cancelRefreshTask()V
    .locals 1

    .prologue
    .line 4073
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListRefreshTask:Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;

    if-eqz v0, :cond_0

    .line 4074
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListRefreshTask:Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;->cancel()Z

    .line 4075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListRefreshTask:Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;

    .line 4077
    :cond_0
    return-void
.end method

.method private changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;ZZZ)V
    .locals 9
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "withOldCondition"    # Z
    .param p5, "backToListMode"    # Z

    .prologue
    .line 1059
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v6, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1060
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 1062
    :cond_0
    const/4 v5, 0x1

    .line 1065
    .local v5, "showMailList":Z
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1066
    .local v1, "accountId":J
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1068
    .local v0, "acc":Lcom/android/emailcommon/provider/Account;
    const/4 v4, 0x0

    .line 1069
    .local v4, "flags":I
    if-eqz v0, :cond_1

    .line 1070
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 1073
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/mail/ui/WaitFragment;->isActivity(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_2

    .line 1077
    const/4 v5, 0x0

    .line 1078
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showWaitForInitialization()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .end local v0    # "acc":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "accountId":J
    .end local v4    # "flags":I
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v6}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p3, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    :cond_4
    if-eqz v5, :cond_6

    .line 1090
    if-nez p5, :cond_5

    .line 1091
    if-eqz p4, :cond_7

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    if-eqz v6, :cond_7

    .line 1092
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v6, v6, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationToShow:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v6, :cond_6

    .line 1101
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 1107
    :cond_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->resetActionBarIcon()V

    .line 1108
    return-void

    .line 1080
    :catch_0
    move-exception v3

    .line 1081
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1094
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private checkSendResult()V
    .locals 2

    .prologue
    .line 1841
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mQueryOutBox:Z

    if-eqz v0, :cond_0

    .line 1886
    :goto_0
    return-void

    .line 1845
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mQueryOutBox:Z

    .line 1847
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$5;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$5;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private clearDetachedMode()V
    .locals 4

    .prologue
    .line 5267
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 5268
    .local v0, "frag":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    .line 5269
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->revertChoiceMode()V

    .line 5274
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    .line 5275
    return-void

    .line 5270
    :cond_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 5272
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AAC.clearDetachedMode(): CLF = null on tablet!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private commitAutoAdvanceOperation()V
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAutoAdvanceOp:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAutoAdvanceOp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAutoAdvanceOp:Ljava/lang/Runnable;

    .line 1412
    :cond_0
    return-void
.end method

.method private confirmAndDelete(ILjava/util/Collection;ZI)V
    .locals 5
    .param p1, "actionId"    # I
    .param p3, "showDialog"    # Z
    .param p4, "confirmResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v4, 0x0

    .line 2592
    const/4 v1, 0x0

    .line 2593
    .local v1, "isBatch":Z
    if-eqz p3, :cond_0

    .line 2594
    invoke-virtual {p0, p1, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->makeDialogListener(IZ)V

    .line 2595
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v3, p4, v4}, Lcom/kingsoft/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 2597
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->newInstance(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/browse/ConfirmDialogFragment;

    move-result-object v0

    .line 2598
    .local v0, "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/ConfirmDialogFragment;->displayDialog(Landroid/app/FragmentManager;)V

    .line 2602
    .end local v0    # "c":Lcom/kingsoft/mail/browse/ConfirmDialogFragment;
    .end local v2    # "message":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 2600
    :cond_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v3

    invoke-virtual {p0, v4, p2, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto :goto_0
.end method

.method private destroyPending(Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 1
    .param p1, "nextAction"    # Lcom/kingsoft/mail/ui/DestructiveAction;

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPendingDestruction:Lcom/kingsoft/mail/ui/DestructiveAction;

    if-eqz v0, :cond_0

    .line 4814
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPendingDestruction:Lcom/kingsoft/mail/ui/DestructiveAction;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    .line 4816
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPendingDestruction:Lcom/kingsoft/mail/ui/DestructiveAction;

    .line 4817
    return-void
.end method

.method private disableNotifications()V
    .locals 2

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->activate(Landroid/content/Context;Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    .line 3733
    return-void
.end method

.method private disableNotificationsOnAccountChange(Lcom/kingsoft/mail/providers/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->activated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->notificationsDisabledForAccount(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3745
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->deactivate()V

    .line 3746
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->activate(Landroid/content/Context;Lcom/kingsoft/mail/ui/AbstractActivityController;)Z

    .line 3748
    :cond_0
    return-void
.end method

.method private displayAutoAdvanceDialogAndPerformAction(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "operation"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x0

    .line 2442
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, "autoAdvanceDisplayOptions":[Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2447
    .local v1, "autoAdvanceOptionValues":[Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v7, 0x7f1002ea

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2448
    .local v2, "defaultValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2449
    .local v4, "initialIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 2450
    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2451
    move v4, v3

    .line 2456
    :cond_0
    new-instance v5, Lcom/kingsoft/mail/ui/AbstractActivityController$11;

    invoke-direct {v5, p0, v1, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$11;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;[Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2481
    .local v5, "listClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lmiui/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v7}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f1000f8

    invoke-virtual {v6, v7}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v4, v5}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/app/AlertDialog;->show()V

    .line 2487
    return-void

    .line 2449
    .end local v5    # "listClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private doMarkConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 14
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "originalConversationInfo"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 2226
    .local p2, "unreadMessageUris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-nez p2, :cond_0

    const/4 v8, 0x0

    .line 2227
    .local v8, "unreadCount":I
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Conversation;->getNumMessages()I

    move-result v5

    .line 2228
    .local v5, "numMessages":I
    const/4 v9, 0x1

    if-le v5, v9, :cond_1

    if-lez v8, :cond_1

    if-ge v8, v5, :cond_1

    const/4 v7, 0x1

    .line 2231
    .local v7, "subsetIsUnread":Z
    :goto_1
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "markConversationMessagesUnread(conv=%s), numMessages=%d, unreadCount=%d, subsetIsUnread=%b"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2234
    if-nez v7, :cond_2

    .line 2237
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, ". . doing full mark unread"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2238
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZZ)V

    .line 2278
    :goto_2
    return-void

    .line 2226
    .end local v5    # "numMessages":I
    .end local v7    # "subsetIsUnread":Z
    .end local v8    # "unreadCount":I
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v8

    goto :goto_0

    .line 2228
    .restart local v5    # "numMessages":I
    .restart local v8    # "unreadCount":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 2240
    .restart local v7    # "subsetIsUnread":Z
    :cond_2
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2241
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/mail/providers/ConversationInfo;->fromBlob([B)Lcom/kingsoft/mail/providers/ConversationInfo;

    move-result-object v3

    .line 2242
    .local v3, "info":Lcom/kingsoft/mail/providers/ConversationInfo;
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, ". . doing subset mark unread, originalConversationInfo = %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2245
    .end local v3    # "info":Lcom/kingsoft/mail/providers/ConversationInfo;
    :cond_3
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v10, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string/jumbo v11, "read"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/kingsoft/mail/browse/ConversationCursor;->setConversationColumn(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2248
    if-eqz p3, :cond_4

    .line 2249
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v10, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string/jumbo v11, "conversationInfo"

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v11, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->setConversationColumn(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2254
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 2255
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 2256
    .local v1, "authority":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2257
    .local v4, "messageUri":Landroid/net/Uri;
    if-nez v1, :cond_5

    .line 2258
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 2260
    :cond_5
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string/jumbo v10, "read"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, ". . Adding op: read=0, uri=%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 2265
    .end local v4    # "messageUri":Landroid/net/Uri;
    :cond_6
    sget-object v9, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, ". . operations = %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2266
    new-instance v9, Lcom/kingsoft/mail/ui/AbstractActivityController$7;

    invoke-direct {v9, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$7;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    iget-object v10, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v10, v1, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController$7;->run(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private emptyFolder()V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->emptyFolder()V

    .line 2026
    :cond_0
    return-void
.end method

.method private enableNotifications()V
    .locals 1

    .prologue
    .line 3736
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;->deactivate()V

    .line 3737
    return-void
.end method

.method private fetchSearchFolder(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 963
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 964
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "query"

    const-string/jumbo v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 967
    return-void
.end method

.method private getBundleForChat(Lcom/kingsoft/mail/providers/Conversation;)Landroid/os/Bundle;
    .locals 6
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1133
    iget-object v2, p1, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    .line 1134
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getUIAccountFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 1135
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1136
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "account"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1137
    const-string/jumbo v3, "folder"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1138
    const-string/jumbo v3, "id"

    iget-wide v4, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1139
    const-string/jumbo v3, "filter"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v3, "folderUri"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v4, v4, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1142
    const-string/jumbo v3, "conversationUri"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1143
    const-string/jumbo v3, "premode"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1144
    return-object v1
.end method

.method private getInternalErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .locals 1

    .prologue
    .line 5126
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$23;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$23;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-object v0
.end method

.method private getMessageFromConversation(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 12
    .param p1, "mConversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v11, 0x0

    .line 1985
    const/4 v8, 0x0

    .line 1986
    .local v8, "mess":Lcom/kingsoft/mail/browse/ConversationMessage;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v9, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1989
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lcom/kingsoft/mail/browse/MessageCursor;

    invoke-direct {v6, v7}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V

    .line 1991
    .local v6, "cur":Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v8

    .line 1998
    :goto_0
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 2000
    return-object v8

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "There\'s no message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getRetryClickedListener(Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 5086
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$20;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$20;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Folder;)V

    return-object v0
.end method

.method private getShouldShowDrawerIndicator(IZ)Z
    .locals 2
    .param p1, "viewMode"    # I
    .param p2, "isTopLevel"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2869
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isSearchMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignInClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .locals 1

    .prologue
    .line 5099
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$21;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$21;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-object v0
.end method

.method private getStorageErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .locals 1

    .prologue
    .line 5108
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$22;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$22;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    return-object v0
.end method

.method private handleDragFromStarred(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 11
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 4245
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 4247
    .local v2, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    .line 4250
    .local v1, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v1, :cond_2

    .line 4251
    sget-object v8, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "AAC.requestDelete: ListFragment is handling delete."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4255
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    .line 4256
    .local v6, "target":Lcom/kingsoft/mail/providers/Conversation;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4257
    .local v3, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4258
    .local v0, "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v8, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v8, v8, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4259
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4260
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/kingsoft/mail/providers/Folder;->hashMapForFolders(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v7

    .line 4262
    .local v7, "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    iget-object v8, p1, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v8, v8, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4263
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v6, v3, v0, v9}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4266
    .end local v0    # "adds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v3    # "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6    # "target":Lcom/kingsoft/mail/providers/Conversation;
    .end local v7    # "targetFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/kingsoft/mail/providers/Folder;>;"
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v8, :cond_1

    .line 4267
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v8, v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    .line 4269
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 4270
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v8}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 4272
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    :cond_2
    return-void
.end method

.method private handleDropInStarred(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 5
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 4275
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    .line 4277
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 4280
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 4281
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "AAC.requestDelete: ListFragment is handling delete."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4282
    const v2, 0x7f0c0275

    new-instance v3, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$DroppedInStarredAction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/providers/Folder;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->requestDelete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 4285
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3024
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3025
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3026
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 3028
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_2

    .line 3091
    :cond_1
    :goto_0
    return-void

    .line 3031
    :cond_2
    const-string/jumbo v0, "conversationUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    .line 3033
    .local v11, "isConversationMode":Z
    const-string/jumbo v0, "notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3034
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/analytics/AnalyticsUtils;->getAccountTypeForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 3036
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    const-string/jumbo v1, "notification_click"

    if-eqz v11, :cond_5

    const-string/jumbo v2, "conversation"

    :goto_1
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/kingsoft/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3040
    :cond_3
    if-eqz v11, :cond_6

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    if-nez v0, :cond_6

    .line 3041
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationMode()V

    .line 3046
    :goto_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3049
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "folderUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3050
    const-string/jumbo v0, "folderUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 3062
    .local v10, "folderUri":Landroid/net/Uri;
    :goto_3
    const-string/jumbo v0, "folderUri"

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3063
    const-string/jumbo v0, "conversationUri"

    const-string/jumbo v1, "conversationUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3065
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    invoke-direct {p0, v0, v1, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 3088
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v10    # "folderUri":Landroid/net/Uri;
    .end local v11    # "isConversationMode":Z
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v0, :cond_1

    .line 3089
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3036
    .restart local v11    # "isConversationMode":Z
    :cond_5
    const-string/jumbo v2, "conversation_list"

    goto :goto_1

    .line 3043
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    goto :goto_2

    .line 3051
    .restart local v6    # "args":Landroid/os/Bundle;
    :cond_7
    const-string/jumbo v0, "folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3052
    const-string/jumbo v0, "folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Folder;->fromString(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v9

    .line 3054
    .local v9, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v0, v9, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v10, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    .line 3055
    .restart local v10    # "folderUri":Landroid/net/Uri;
    goto :goto_3

    .line 3056
    .end local v9    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v10    # "folderUri":Landroid/net/Uri;
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 3057
    .local v8, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Couldn\'t find a folder URI in the extras: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v8, :cond_9

    const-string/jumbo v0, "null"

    :goto_5
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3059
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v10, v0, Lcom/kingsoft/mail/providers/Settings;->defaultInbox:Landroid/net/Uri;

    .restart local v10    # "folderUri":Landroid/net/Uri;
    goto :goto_3

    .line 3057
    .end local v10    # "folderUri":Landroid/net/Uri;
    :cond_9
    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 3066
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v11    # "isConversationMode":Z
    :cond_a
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3067
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z

    .line 3070
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3071
    .local v12, "query":Ljava/lang/String;
    iput-object v12, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    .line 3072
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v1, 0x7f10039a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3073
    .local v7, "authority":Ljava/lang/String;
    new-instance v13, Landroid/provider/SearchRecentSuggestions;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v13, v0, v7, v1}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3075
    .local v13, "suggestions":Landroid/provider/SearchRecentSuggestions;
    const/4 v0, 0x0

    invoke-virtual {v13, v12, v0}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 3077
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->fetchSearchFolder(Landroid/content/Intent;)V

    .line 3078
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->shouldEnterSearchConvMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3079
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsConversationMode()V

    goto/16 :goto_4

    .line 3081
    :cond_b
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto/16 :goto_4

    .line 3084
    .end local v7    # "authority":Ljava/lang/String;
    .end local v12    # "query":Ljava/lang/String;
    .end local v13    # "suggestions":Landroid/provider/SearchRecentSuggestions;
    :cond_c
    const-string/jumbo v0, "EMail"

    const-string/jumbo v1, "Missing account extra from search intent.  Finishing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3085
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto/16 :goto_4
.end method

.method private inWaitMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3193
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    move-result-object v1

    .line 3194
    .local v1, "waitFragment":Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    if-eqz v1, :cond_0

    .line 3195
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    .line 3196
    .local v0, "fragmentAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 3199
    .end local v0    # "fragmentAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_0
    return v2
.end method

.method private initializeDevLoggingService()V
    .locals 3

    .prologue
    .line 1419
    sget-boolean v1, Lcom/kingsoft/mail/MailLogService;->DEBUG_ENABLED:Z

    if-nez v1, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1423
    :cond_0
    const v0, 0x493e0

    .line 1425
    .local v0, "WAIT_TIME":I
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$3;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mLogServiceChecker:Ljava/lang/Runnable;

    .line 1458
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mLogServiceChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private isDragging()Z
    .locals 1

    .prologue
    .line 3985
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsDragHappening:Z

    return v0
.end method

.method private isFragmentVisible(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "in"    # Landroid/app/Fragment;

    .prologue
    .line 4361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1956
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1958
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1963
    :cond_0
    :goto_0
    return v2

    .line 1962
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1963
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isValidFragment(Landroid/app/Fragment;)Z
    .locals 1
    .param p0, "in"    # Landroid/app/Fragment;

    .prologue
    .line 648
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markConversationsRead(Ljava/util/Collection;ZZZ)V
    .locals 13
    .param p2, "read"    # Z
    .param p3, "markViewed"    # Z
    .param p4, "showNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 2300
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    if-eqz p4, :cond_0

    if-nez p2, :cond_0

    .line 2301
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController$9;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZZ)V

    .line 2308
    .local v0, "operation":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2346
    .end local v0    # "operation":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 2314
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    .line 2315
    .local v10, "size":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 2316
    .local v9, "opList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/mail/providers/Conversation;

    .line 2317
    .local v11, "target":Lcom/kingsoft/mail/providers/Conversation;
    new-instance v12, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v12, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2318
    .local v12, "value":Landroid/content/ContentValues;
    const-string/jumbo v1, "read"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2321
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-boolean v1, v11, Lcom/kingsoft/mail/providers/Conversation;->seen:Z

    if-nez v1, :cond_3

    .line 2322
    const-string/jumbo v1, "seen"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2326
    :cond_3
    const-string/jumbo v1, "suppress_undo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2330
    iget-object v8, v11, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    .line 2331
    .local v8, "info":Lcom/kingsoft/mail/providers/ConversationInfo;
    if-eqz v8, :cond_4

    .line 2332
    invoke-virtual {v8, p2}, Lcom/kingsoft/mail/providers/ConversationInfo;->markRead(Z)Z

    move-result v6

    .line 2333
    .local v6, "changed":Z
    if-eqz v6, :cond_4

    .line 2334
    const-string/jumbo v1, "conversationInfo"

    invoke-virtual {v8}, Lcom/kingsoft/mail/providers/ConversationInfo;->toBlob()[B

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2337
    .end local v6    # "changed":Z
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v2, 0x2

    invoke-virtual {v1, v11, v2, v12}, Lcom/kingsoft/mail/browse/ConversationCursor;->getOperationForConversation(Lcom/kingsoft/mail/providers/Conversation;ILandroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2340
    iput-boolean p2, v11, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 2341
    if-eqz p3, :cond_1

    .line 2342
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Conversation;->markViewed()V

    goto :goto_1

    .line 2345
    .end local v8    # "info":Lcom/kingsoft/mail/providers/ConversationInfo;
    .end local v11    # "target":Lcom/kingsoft/mail/providers/Conversation;
    .end local v12    # "value":Landroid/content/ContentValues;
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1, v9}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBulkValues(Ljava/util/Collection;)I

    goto :goto_0
.end method

.method private moveToDraftAndEdit(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "curMessage"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 3337
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController$17;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3362
    return-void
.end method

.method private perhapsShowFirstSearchResult()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4792
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v1, :cond_0

    .line 4794
    const-string/jumbo v1, "android.intent.action.SEARCH"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z

    .line 4796
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->shouldShowFirstConversation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4804
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 4794
    goto :goto_0

    .line 4799
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 4800
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 4801
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iput v3, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 4802
    invoke-virtual {p0, v0, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V

    goto :goto_1
.end method

.method private promptUserForAuthentication(Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 5180
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5181
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/kingsoft/mail/providers/Account;->reauthenticationIntentUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5183
    .local v0, "authenticationIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5185
    .end local v0    # "authenticationIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private registerDestructiveAction(Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 0
    .param p1, "action"    # Lcom/kingsoft/mail/ui/DestructiveAction;

    .prologue
    .line 4829
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->destroyPending(Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 4830
    return-void
.end method

.method private requestSync()V
    .locals 8

    .prologue
    .line 1969
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 1970
    .local v6, "folderId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1976
    .local v7, "id":Ljava/lang/Long;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/uirefresh/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1977
    .local v1, "refreshUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    .end local v1    # "refreshUri":Landroid/net/Uri;
    .end local v6    # "folderId":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/Long;
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestUpdate(Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 0
    .param p1, "action"    # Lcom/kingsoft/mail/ui/DestructiveAction;

    .prologue
    .line 2652
    invoke-interface {p1}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    .line 2653
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2654
    return-void
.end method

.method private restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "handler"    # Landroid/app/LoaderManager$LoaderCallbacks;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3553
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 3554
    .local v0, "lm":Landroid/app/LoaderManager;
    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3555
    invoke-virtual {v0, p1, p3, p2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3556
    return-void
.end method

.method private restoreSelectedConversations(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 3106
    if-nez p1, :cond_0

    .line 3107
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 3118
    :goto_0
    return-void

    .line 3110
    :cond_0
    const-string/jumbo v1, "saved-selected-set"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 3111
    .local v0, "selectedSet":Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3112
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    goto :goto_0

    .line 3117
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->putAll(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V

    goto :goto_0
.end method

.method private setAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 6
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v5, 0x0

    .line 2926
    if-nez p1, :cond_0

    .line 2927
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v3, "AAC ignoring null (presumably invalid) account restoration"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2953
    :goto_0
    return-void

    .line 2931
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AbstractActivityController.setAccount(): account = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2932
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->isVirtualAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lcom/kingsoft/mail/utils/ContactHelper;->fillCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2933
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 2934
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2935
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    sput-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->accountname:Ljava/lang/String;

    .line 2939
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 2940
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableNotificationsOnAccountChange(Lcom/kingsoft/mail/providers/Account;)V

    .line 2941
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 2943
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v0

    .line 2944
    .local v0, "instance":Lcom/kingsoft/mail/providers/MailAppProvider;
    if-eqz v0, :cond_1

    .line 2945
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastViewedAccount(Ljava/lang/String;)V

    .line 2947
    :cond_1
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-nez v1, :cond_3

    .line 2948
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v3, "AAC ignoring account with null settings."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2932
    .end local v0    # "instance":Lcom/kingsoft/mail/providers/MailAppProvider;
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2952
    .restart local v0    # "instance":Lcom/kingsoft/mail/providers/MailAppProvider;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->perhapsEnterWaitMode()V

    goto :goto_0
.end method

.method private setHasFolderChanged(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "newFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1245
    if-nez p1, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderChanged:Z

    goto :goto_0
.end method

.method private setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "condition"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 1021
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 1023
    :cond_1
    if-eqz p2, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v0, v1, p2}, Lcom/kingsoft/mail/ConversationListContext;->forSearchQuery(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 1028
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->cancelRefreshTask()V

    .line 1029
    return-void

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v0, p2, v1, p3}, Lcom/kingsoft/mail/ConversationListContext;->forCondition(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    goto :goto_0
.end method

.method private setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 1003
    :goto_0
    if-eqz p2, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v0, v1, p2}, Lcom/kingsoft/mail/ConversationListContext;->forSearchQuery(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 1008
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->cancelRefreshTask()V

    .line 1009
    return-void

    .line 1002
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v0, v1}, Lcom/kingsoft/mail/ConversationListContext;->forFolder(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    goto :goto_1
.end method

.method private setListener(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "action"    # I

    .prologue
    .line 5243
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5244
    iput p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    .line 5245
    return-void
.end method

.method private shouldIntoFilterFromListMode(Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v0, 0x0

    .line 5681
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v1, :cond_1

    .line 5684
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 3121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    .line 3122
    return-void
.end method

.method private showEmptyDialog()V
    .locals 3

    .prologue
    .line 2006
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, v1, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v2, v2, Lcom/kingsoft/mail/providers/Folder;->type:I

    invoke-static {v1, v2}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->newInstance(II)Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;

    move-result-object v0

    .line 2009
    .local v0, "fragment":Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->setListener(Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment$EmptyFolderDialogFragmentListener;)V

    .line 2010
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "EmptyFolderDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2012
    .end local v0    # "fragment":Lcom/kingsoft/mail/ui/EmptyFolderDialogFragment;
    :cond_0
    return-void
.end method

.method private showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;)Z
    .locals 2
    .param p2, "operation"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2434
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;Lcom/kingsoft/mail/ui/DestructiveAction;Z)Z

    move-result v0

    return v0
.end method

.method private showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;Lcom/kingsoft/mail/ui/DestructiveAction;Z)Z
    .locals 10
    .param p2, "operation"    # Ljava/lang/Runnable;
    .param p3, "action"    # Lcom/kingsoft/mail/ui/DestructiveAction;
    .param p4, "delFoundIfNoNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/kingsoft/mail/ui/DestructiveAction;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2385
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v7}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v5

    .line 2386
    .local v5, "viewMode":I
    const/4 v7, 0x6

    if-eq v5, v7, :cond_0

    const/4 v7, 0x7

    if-ne v5, v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {p1, v7}, Lcom/kingsoft/mail/providers/Conversation;->contains(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    .line 2390
    .local v2, "currentConversationInView":Z
    :goto_0
    if-eqz v2, :cond_7

    .line 2391
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v7}, Lcom/kingsoft/mail/providers/Settings;->getAutoAdvanceSetting()I

    move-result v1

    .line 2393
    .local v1, "autoAdvanceSetting":I
    if-nez v1, :cond_2

    iget-boolean v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    if-eqz v7, :cond_2

    .line 2394
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->displayAutoAdvanceDialogAndPerformAction(Ljava/lang/Runnable;)V

    .line 2429
    .end local v1    # "autoAdvanceSetting":I
    :goto_1
    return v4

    .end local v2    # "currentConversationInView":Z
    :cond_1
    move v2, v4

    .line 2386
    goto :goto_0

    .line 2398
    .restart local v1    # "autoAdvanceSetting":I
    .restart local v2    # "currentConversationInView":Z
    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x3

    .line 2401
    .local v0, "autoAdvance":I
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v7, v7, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    if-eqz v7, :cond_4

    .line 2402
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/kingsoft/mail/ui/AbstractActivityController$10;

    invoke-direct {v7, p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$10;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2410
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_1

    .end local v0    # "autoAdvance":I
    :cond_3
    move v0, v1

    .line 2398
    goto :goto_2

    .line 2414
    .restart local v0    # "autoAdvance":I
    :cond_4
    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-virtual {v7, v0, p1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->getNextConversation(ILjava/util/Collection;)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    .line 2415
    .local v3, "next":Lcom/kingsoft/mail/providers/Conversation;
    sget-object v7, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "showNextConversation: showing %s next."

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v3, v9, v4

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2416
    if-nez p2, :cond_5

    move v4, v6

    .line 2417
    .local v4, "ret":Z
    :cond_5
    if-nez p3, :cond_6

    .line 2418
    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAutoAdvanceOp:Ljava/lang/Runnable;

    .line 2423
    :goto_3
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_1

    .line 2420
    :cond_6
    const/4 v4, 0x0

    .line 2421
    invoke-interface {p3}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    goto :goto_3

    .end local v0    # "autoAdvance":I
    .end local v1    # "autoAdvanceSetting":I
    .end local v3    # "next":Lcom/kingsoft/mail/providers/Conversation;
    .end local v4    # "ret":Z
    :cond_7
    move v4, v6

    .line 2429
    goto :goto_1
.end method

.method private showSendOrDeleteDialog(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 3
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "curMessage"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    .line 3319
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3320
    .local v0, "dialog":Lmiui/app/AlertDialog$Builder;
    const v1, 0x7f1002af

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 3321
    const v1, 0x7f10016a

    new-instance v2, Lcom/kingsoft/mail/ui/AbstractActivityController$15;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$15;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 3327
    const v1, 0x7f1002ab

    new-instance v2, Lcom/kingsoft/mail/ui/AbstractActivityController$16;

    invoke-direct {v2, p0, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController$16;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 3333
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    .line 3334
    return-void
.end method

.method private showStorageErrorDialog()V
    .locals 3

    .prologue
    .line 5117
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "SyncErrorDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 5119
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-nez v0, :cond_0

    .line 5120
    invoke-static {}, Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;->newInstance()Lcom/kingsoft/mail/browse/SyncErrorDialogFragment;

    move-result-object v0

    .line 5122
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "SyncErrorDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5123
    return-void
.end method

.method private startAsyncRefreshTask(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5171
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderSyncTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    if-eqz v0, :cond_0

    .line 5172
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderSyncTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;->cancel(Z)Z

    .line 5174
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderSyncTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    .line 5175
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderSyncTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5177
    return-void
.end method

.method private updateAccounts(Lcom/kingsoft/mail/content/ObjectCursor;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "accounts":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/providers/Account;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3659
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/content/ObjectCursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v10, v11

    .line 3721
    :cond_1
    :goto_0
    return v10

    .line 3663
    :cond_2
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Account;->getAllAccounts(Lcom/kingsoft/mail/content/ObjectCursor;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    .line 3665
    .local v2, "allAccounts":[Lcom/kingsoft/mail/providers/Account;
    const/4 v4, 0x0

    .line 3668
    .local v4, "currentFromList":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentAccountUris:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 3669
    move-object v3, v2

    .local v3, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v0, v3, v5

    .line 3670
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentAccountUris:Ljava/util/Set;

    iget-object v12, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3671
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v12, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v12, v12, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v12}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3673
    :cond_3
    move-object v4, v0

    .line 3669
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3683
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_5
    const/4 v1, 0x0

    .line 3685
    .local v1, "accountChanged":Z
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v2, v9

    .line 3686
    .local v8, "newAccount":Lcom/kingsoft/mail/providers/Account;
    if-eqz v4, :cond_8

    .line 3688
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3689
    move-object v8, v4

    .line 3690
    const/4 v1, 0x1

    .line 3710
    :cond_6
    :goto_2
    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccounts:[Lcom/kingsoft/mail/providers/Account;

    .line 3712
    if-eqz v1, :cond_7

    .line 3713
    invoke-virtual {p0, v8}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 3718
    :cond_7
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccounts:[Lcom/kingsoft/mail/providers/Account;

    array-length v9, v9

    if-le v9, v10, :cond_a

    move v9, v10

    :goto_3
    invoke-virtual {p0, v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refresMailActionBarSubTitle(Z)V

    .line 3719
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v9}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3721
    array-length v9, v2

    if-gtz v9, :cond_1

    move v10, v11

    goto :goto_0

    .line 3695
    :cond_8
    const/4 v1, 0x1

    .line 3696
    iget-object v9, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v9, :cond_6

    .line 3698
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingsoft/mail/providers/MailAppProvider;->getLastViewedAccount()Ljava/lang/String;

    move-result-object v6

    .line 3699
    .local v6, "lastAccountUri":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 3700
    move-object v3, v2

    array-length v7, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_6

    aget-object v0, v3, v5

    .line 3701
    .restart local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3702
    move-object v8, v0

    .line 3703
    goto :goto_2

    .line 3700
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v6    # "lastAccountUri":Ljava/lang/String;
    :cond_a
    move v9, v11

    .line 3718
    goto :goto_3
.end method

.method private updateConversationListFragment()V
    .locals 2

    .prologue
    .line 4037
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 4038
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 4039
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 4040
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isFragmentVisible(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4041
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->informCursorVisiblity(Z)V

    .line 4044
    :cond_0
    return-void
.end method

.method private updateFolder(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 10
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "force"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Folder;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1264
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v7, "AAC.setFolder(%s): Bad input"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v5, v6, v7, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1307
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v5}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    .line 1268
    sget-object v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "AAC.setFolder(%s): Input matches mFolder"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v5, v6, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1271
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v5, :cond_4

    move v2, v3

    .line 1272
    .local v2, "wasNull":Z
    :goto_1
    sget-object v5, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "AbstractActivityController.setFolder(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-static {v5, v6, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1273
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1277
    .local v1, "lm":Landroid/app/LoaderManager;
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setHasFolderChanged(Lcom/kingsoft/mail/providers/Folder;)V

    .line 1278
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 1290
    invoke-virtual {v1, v8}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1291
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    invoke-virtual {v1, v8, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1295
    :goto_2
    if-nez v2, :cond_3

    invoke-virtual {v1, v9}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1299
    invoke-virtual {v1, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1301
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 1302
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "account"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1303
    const-string/jumbo v3, "folder"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1304
    const-string/jumbo v3, "message"

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFilterConditionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListCursorCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationListLoaderCallbacks;

    invoke-virtual {v1, v9, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "lm":Landroid/app/LoaderManager;
    .end local v2    # "wasNull":Z
    :cond_4
    move v2, v4

    .line 1271
    goto :goto_1

    .line 1293
    .restart local v1    # "lm":Landroid/app/LoaderManager;
    .restart local v2    # "wasNull":Z
    :cond_5
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    invoke-virtual {v1, v8, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method private updateWaitMode()V
    .locals 3

    .prologue
    .line 3156
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3157
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "wait-fragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    .line 3159
    .local v1, "waitFragment":Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    if-eqz v1, :cond_0

    .line 3160
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 3162
    :cond_0
    return-void
.end method


# virtual methods
.method protected ShowUnreadConversationList()V
    .locals 6

    .prologue
    .line 3370
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    .line 3371
    return-void
.end method

.method public addUpOrBackHandler(Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final assignFolder(Ljava/util/Collection;Ljava/util/Collection;ZZZ)V
    .locals 26
    .param p3, "batch"    # Z
    .param p4, "showUndo"    # Z
    .param p5, "isMoveTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/ui/FolderOperation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 3902
    .local p1, "folderOps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/kingsoft/mail/ui/FolderOperation;->isDestructive(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v15, 0x1

    .line 3905
    .local v15, "isDestructive":Z
    :goto_0
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onFolderChangesCommit: isDestructive = %b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3906
    if-eqz v15, :cond_1

    .line 3907
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/kingsoft/mail/providers/Conversation;

    .line 3908
    .local v21, "c":Lcom/kingsoft/mail/providers/Conversation;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_1

    .line 3902
    .end local v15    # "isDestructive":Z
    .end local v21    # "c":Lcom/kingsoft/mail/providers/Conversation;
    .end local v25    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 3914
    .restart local v15    # "isDestructive":Z
    :cond_1
    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3923
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 3924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 3943
    .local v11, "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    :goto_2
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    const/4 v7, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v4 .. v11}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v22

    .line 3945
    .local v22, "folderChange":Lcom/kingsoft/mail/ui/DestructiveAction;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    .line 3951
    .end local v11    # "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    :goto_4
    return-void

    .line 3926
    .end local v22    # "folderChange":Lcom/kingsoft/mail/ui/DestructiveAction;
    :cond_4
    const/16 v20, 0x0

    .line 3927
    .local v20, "addedFolder":Lcom/kingsoft/mail/providers/Folder;
    const/16 v24, 0x0

    .line 3928
    .local v24, "hasRemove":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/kingsoft/mail/ui/FolderOperation;

    .line 3929
    .local v23, "folderOperation":Lcom/kingsoft/mail/ui/FolderOperation;
    move-object/from16 v0, v23

    iget-boolean v4, v0, Lcom/kingsoft/mail/ui/FolderOperation;->mAdd:Z

    if-eqz v4, :cond_5

    .line 3930
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/kingsoft/mail/ui/FolderOperation;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v20, v0

    goto :goto_5

    .line 3932
    :cond_5
    const/16 v24, 0x1

    goto :goto_5

    .line 3936
    .end local v23    # "folderOperation":Lcom/kingsoft/mail/ui/FolderOperation;
    :cond_6
    if-eqz v24, :cond_7

    if-eqz v20, :cond_7

    .line 3937
    move-object/from16 v11, v20

    .restart local v11    # "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_2

    .line 3939
    .end local v11    # "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .restart local v11    # "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    goto :goto_2

    .line 3943
    .end local v20    # "addedFolder":Lcom/kingsoft/mail/providers/Folder;
    .end local v24    # "hasRemove":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 3947
    .end local v11    # "actionFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v19, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v12 .. v19}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v22

    .line 3949
    .restart local v22    # "folderChange":Lcom/kingsoft/mail/ui/DestructiveAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->requestUpdate(Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto :goto_4
.end method

.method public changeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 6
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 807
    if-nez p1, :cond_1

    .line 808
    sget-object v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "AAC.changeAccount(null) called."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v4, :cond_6

    move v1, v0

    .line 814
    .local v1, "firstLoad":Z
    :goto_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 817
    .local v0, "accountChanged":Z
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v4}, Lcom/kingsoft/mail/providers/Account;->settingsDiffer(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 820
    :cond_3
    if-eqz v0, :cond_4

    .line 821
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->clearMergeOrfilterInfo()V

    .line 822
    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 824
    :cond_4
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeAccountAtBackground(Lcom/kingsoft/mail/providers/Account;)V

    .line 826
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->cancelRefreshTask()V

    .line 827
    if-eqz v0, :cond_5

    .line 828
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->loadAccountInbox()V

    .line 831
    :cond_5
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 833
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Settings;->setupIntentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 835
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3, v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "accountChanged":Z
    .end local v1    # "firstLoad":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    move v1, v3

    .line 813
    goto :goto_1

    .restart local v1    # "firstLoad":Z
    :cond_7
    move v0, v3

    .line 814
    goto :goto_2
.end method

.method public changeAccountAtBackground(Lcom/kingsoft/mail/providers/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 790
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "emailAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kingsoft/mail/ui/AbstractActivityController$2;

    invoke-direct {v2, p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController$2;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/kingsoft/mail/analytics/AnalyticsUtils;->getAccountTypeForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/kingsoft/mail/analytics/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 801
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 802
    return-void
.end method

.method protected changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "condition"    # Ljava/lang/String;
    .param p4, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1118
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 1121
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v1}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_2

    .line 1122
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 1125
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 1126
    .local v0, "conversationListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1127
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setFooterVisibility(Z)V

    .line 1129
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->resetActionBarIcon()V

    .line 1130
    return-void
.end method

.method public changeFolderUnreadCount(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2580
    :cond_0
    :goto_0
    return-void

    .line 2577
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    iget v1, p1, Lcom/kingsoft/mail/providers/Folder;->id:I

    if-ne v0, v1, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, p1, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    iput v1, v0, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    goto :goto_0
.end method

.method protected clearMergeOrfilterInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1215
    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1216
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    .line 1217
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    .line 1218
    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    .line 1219
    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 1220
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    .line 1221
    return-void
.end method

.method public clearState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5746
    sget-boolean v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->onReStartClearState:Z

    if-eqz v0, :cond_0

    .line 5747
    sput-boolean v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->onReStartClearState:Z

    .line 5748
    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 5749
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    .line 5750
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    .line 5751
    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    .line 5753
    :cond_0
    return-void
.end method

.method public closeDrawer(ZLcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 4
    .param p1, "hasNewFolderOrAccount"    # Z
    .param p2, "nextAccount"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "nextFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 902
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 903
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 955
    :goto_0
    return-void

    .line 908
    :cond_0
    if-nez p1, :cond_2

    .line 909
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu()V

    .line 914
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_1

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v1, :cond_3

    .line 918
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu()V

    .line 926
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 927
    .local v0, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v1, :cond_4

    .line 928
    iget-object v1, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 930
    :cond_4
    if-eqz v0, :cond_5

    .line 931
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    .line 936
    :goto_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v1, :cond_7

    .line 937
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 939
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    goto :goto_0

    .line 934
    :cond_5
    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mListViewForAnimating:Landroid/widget/ListView;

    goto :goto_2

    .line 943
    :cond_6
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    .line 946
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 948
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHasNewAccountOrFolder:Z

    .line 949
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0

    .line 952
    :cond_8
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method protected closeDrawerIfOpen()V
    .locals 2

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu()V

    goto :goto_0
.end method

.method public commitDestructiveActions(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2904
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2905
    .local v0, "fragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 2906
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->commitDestructiveActions(Z)V

    .line 2908
    :cond_0
    return-void
.end method

.method public delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V
    .locals 10
    .param p1, "actionId"    # I
    .param p3, "action"    # Lcom/kingsoft/mail/ui/DestructiveAction;
    .param p4, "isBatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/ui/DestructiveAction;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v9, 0x0

    .line 2614
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$14;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController$14;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    .line 2621
    .local v0, "operation":Ljava/lang/Runnable;
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;Lcom/kingsoft/mail/ui/DestructiveAction;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2645
    :goto_0
    return-void

    .line 2627
    :cond_0
    if-nez p4, :cond_2

    .line 2628
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Conversation;

    .line 2629
    .local v6, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->contains(Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2630
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1, v6}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->toggle(Lcom/kingsoft/mail/providers/Conversation;)V

    goto :goto_1

    .line 2635
    .end local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v7

    .line 2636
    .local v7, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v7, :cond_3

    .line 2637
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AAC.requestDelete: ListFragment is handling delete."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2638
    invoke-virtual {v7, p1, p2, p3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->requestDelete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    goto :goto_0

    .line 2643
    :cond_3
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ACC.requestDelete: performing remove action ourselves"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2644
    invoke-interface {p3}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    goto :goto_0
.end method

.method protected disableCabMode()V
    .locals 1

    .prologue
    .line 4130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 4131
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 4132
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->deactivate()V

    .line 4134
    :cond_0
    return-void
.end method

.method public disablePagerUpdates()V
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->stopListening()V

    .line 2896
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2137
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2149
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUpPressed()Z

    .line 2153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract doesActionChangeConversationListVisibility(I)Z
.end method

.method protected enableCabMode()V
    .locals 2

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->activate()V

    .line 4144
    :cond_1
    return-void
.end method

.method public enableMenuDrawer(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 5793
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_0

    .line 5794
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    .line 5796
    :cond_0
    return-void

    .line 5794
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterForceRefresh()V
    .locals 1

    .prologue
    .line 5781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mForceRefresh:Z

    .line 5782
    return-void
.end method

.method public executeSearch(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2752
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v6

    .line 2753
    .local v6, "conversationListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v6, :cond_0

    .line 2754
    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ConversationListFragment;->resetSearchScrolledPosition()V

    .line 2759
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v8

    .line 2762
    .local v8, "mMailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v3, 0x7f100016

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2764
    sput v2, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mSearchTotalCount:I

    .line 2765
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    .line 2778
    :goto_0
    return-void

    .line 2768
    :cond_1
    invoke-static {v2}, Lcom/kingsoft/mail/ui/MailActionBarView;->setHideAllActionMenu(Z)V

    .line 2769
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2770
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2771
    const-string/jumbo v0, "query"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    const-string/jumbo v0, "account"

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2774
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2775
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->collapseSearch()V

    .line 2776
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0, v7}, Lcom/kingsoft/mail/ui/ControllableActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final exitCabMode()V
    .locals 1

    .prologue
    .line 4161
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->clear()V

    .line 4162
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    .prologue
    .line 4184
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4185
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    .line 4187
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getAllAccounts()[Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccounts:[Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public final getBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 4834
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;ILjava/util/Collection;Z)V

    .line 4835
    .local v0, "da":Lcom/kingsoft/mail/ui/DestructiveAction;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->registerDestructiveAction(Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 4836
    return-object v0
.end method

.method protected getChatViewFragment()Lcom/kingsoft/mail/chat/ChatViewFragment;
    .locals 3

    .prologue
    .line 676
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 678
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isValidFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/kingsoft/mail/chat/ChatViewFragment;

    if-eqz v2, :cond_0

    .line 679
    check-cast v0, Lcom/kingsoft/mail/chat/ChatViewFragment;

    .line 681
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    return-object v0
.end method

.method public getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;
    .locals 3

    .prologue
    .line 663
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ViewMode;->isChatMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 669
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isValidFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    .line 670
    check-cast v0, Lcom/kingsoft/mail/ui/ConversationListFragment;

    .line 672
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationListScrollPosition(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "folderUri"    # Ljava/lang/String;

    .prologue
    .line 5604
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getCurrentConversationListMode()I
    .locals 1

    .prologue
    .line 5730
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFiltFrom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5731
    const/4 v0, 0x2

    .line 5734
    :goto_0
    return v0

    .line 5732
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFiltRawSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5733
    const/4 v0, 0x1

    goto :goto_0

    .line 5734
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentListContext()Lcom/kingsoft/mail/ConversationListContext;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    return-object v0
.end method

.method public getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 1
    .param p1, "action"    # I
    .param p3, "batch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;Z)",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation

    .prologue
    .line 4856
    .local p2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController$ConversationAction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;ILjava/util/Collection;Z)V

    return-object v0
.end method

.method public final getDeferredBatchAction(I)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 4841
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v0

    return-object v0
.end method

.method public final getDeferredFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 10
    .param p3, "isDestructive"    # Z
    .param p4, "isBatch"    # Z
    .param p5, "showUndo"    # Z
    .param p6, "isMoveTo"    # Z
    .param p7, "actionFolder"    # Lcom/kingsoft/mail/providers/Folder;
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
            ">;ZZZZ",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation

    .prologue
    .line 4961
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .local p2, "folders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;

    if-eqz p6, :cond_0

    const v7, 0x7f0c0034

    :goto_0
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V

    return-object v0

    :cond_0
    const v7, 0x7f0c0275

    goto :goto_0
.end method

.method public final getDeferredRemoveFolder(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;ZZZ)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 10
    .param p2, "toRemove"    # Lcom/kingsoft/mail/providers/Folder;
    .param p3, "isDestructive"    # Z
    .param p4, "isBatch"    # Z
    .param p5, "showUndo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Lcom/kingsoft/mail/providers/Folder;",
            "ZZZ)",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation

    .prologue
    .line 4969
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4970
    .local v3, "folderOps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4971
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;

    const v7, 0x7f0c0271

    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v9}, Lcom/kingsoft/mail/ui/AbstractActivityController$FolderDestruction;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/kingsoft/mail/providers/Folder;Lcom/kingsoft/mail/ui/AbstractActivityController$1;)V

    return-object v0
.end method

.method public getFiltFrom()Z
    .locals 1

    .prologue
    .line 5630
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    return v0
.end method

.method public getFiltRawSubject()Z
    .locals 1

    .prologue
    .line 5621
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    return v0
.end method

.method public getFiltUnread()Z
    .locals 1

    .prologue
    .line 5625
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    return v0
.end method

.method protected getFilterConditionString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3374
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3375
    .local v0, "condition":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_3

    .line 3377
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    if-eqz v2, :cond_0

    .line 3380
    :try_start_0
    const-string/jumbo v2, "rawSubject"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3381
    const-string/jumbo v2, "accountKey"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3387
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-eqz v2, :cond_3

    .line 3390
    :try_start_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3392
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3393
    const-string/jumbo v2, "toList"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3409
    :cond_2
    :goto_1
    const-string/jumbo v2, "accountKey"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3416
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    if-eqz v2, :cond_4

    .line 3419
    :try_start_2
    const-string/jumbo v2, "flagRead"

    const-string/jumbo v3, "unread"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3425
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3428
    :try_start_3
    const-string/jumbo v2, "searchFilter"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3434
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3382
    :catch_0
    move-exception v1

    .line 3384
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3395
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 3397
    const-string/jumbo v2, "toList"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3410
    :catch_1
    move-exception v1

    .line 3412
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 3399
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 3401
    const-string/jumbo v2, "toList"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3406
    :cond_8
    const-string/jumbo v2, "fromList"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3407
    const-string/jumbo v2, "accountKey"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 3420
    :catch_2
    move-exception v1

    .line 3422
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 3429
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 3431
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public getFilterSender()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5635
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-eqz v0, :cond_4

    .line 5637
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5639
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5640
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5656
    :goto_0
    return-object v0

    .line 5642
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5644
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5646
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5648
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5653
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5656
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public final getFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;
    .locals 1
    .param p3, "isDestructive"    # Z
    .param p4, "isBatch"    # Z
    .param p5, "showUndo"    # Z
    .param p6, "isMoveTo"    # Z
    .param p7, "actionFolder"    # Lcom/kingsoft/mail/providers/Folder;
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
            ">;ZZZZ",
            "Lcom/kingsoft/mail/providers/Folder;",
            ")",
            "Lcom/kingsoft/mail/ui/DestructiveAction;"
        }
    .end annotation

    .prologue
    .line 4952
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .local p2, "folders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    invoke-virtual/range {p0 .. p7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v0

    .line 4954
    .local v0, "da":Lcom/kingsoft/mail/ui/DestructiveAction;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->registerDestructiveAction(Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 4955
    return-object v0
.end method

.method protected getFolderListFragment()Lcom/kingsoft/mail/ui/FolderListFragment;
    .locals 3

    .prologue
    .line 712
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    const v2, 0x7f0c0120

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 714
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isValidFragment(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/kingsoft/mail/ui/FolderListFragment;

    if-eqz v1, :cond_0

    .line 715
    check-cast v0, Lcom/kingsoft/mail/ui/FolderListFragment;

    .line 717
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 623
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    .line 625
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 630
    const v0, 0x7f10023c

    .line 632
    .local v0, "helpContextResId":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 627
    .end local v0    # "helpContextResId":I
    :pswitch_0
    const v0, 0x7f1003d2

    .line 628
    .restart local v0    # "helpContextResId":I
    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public getHierarchyFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderListFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method public getListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 5232
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 5616
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public getSearchBarController()Lcom/kingsoft/mail/maillist/controller/SearchBarController;
    .locals 1

    .prologue
    .line 5789
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    return-object v0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureConversationViewFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    .locals 4

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    iget v3, v3, Lcom/kingsoft/mail/providers/Conversation;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 691
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isValidFragment(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 695
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 4122
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    return-object v0
.end method

.method public getShouldAllowDrawerPull(I)Z
    .locals 3
    .param p1, "viewMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2883
    if-eq p1, v0, :cond_0

    .line 2887
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isSearchMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isAdMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected final getUndoClickedListener(Lcom/kingsoft/mail/ui/AnimatedAdapter;)Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .locals 1
    .param p1, "listAdapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    .line 4986
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$18;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController$18;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/ui/AnimatedAdapter;)V

    return-object v0
.end method

.method public getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;
    .locals 1

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    return-object v0
.end method

.method public getViewMode()Lcom/kingsoft/mail/ui/ViewMode;
    .locals 1

    .prologue
    .line 5756
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    return-object v0
.end method

.method protected final getWaitFragment()Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    .locals 3

    .prologue
    .line 3179
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3180
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "wait-fragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    .line 3181
    .local v1, "waitFrag":Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    if-eqz v1, :cond_0

    .line 3183
    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mWaitFragment:Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    .line 3185
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mWaitFragment:Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    return-object v2
.end method

.method public gotoUnreadBox()V
    .locals 0

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->ShowUnreadConversationList()V

    .line 1229
    return-void
.end method

.method protected abstract handleBackPress()Z
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 10
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/16 v5, 0x80

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 4207
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4242
    :goto_0
    return-void

    .line 4210
    :cond_0
    invoke-virtual {p2, v5}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4213
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleDropInStarred(Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 4216
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4217
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleDragFromStarred(Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    .line 4220
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4221
    .local v2, "dragDropOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/ui/FolderOperation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v1

    .line 4223
    .local v1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v0, p2, v5}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4226
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isViewAll()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v4

    .line 4229
    .local v3, "isDestructive":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 4230
    new-instance v0, Lcom/kingsoft/mail/ui/FolderOperation;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/kingsoft/mail/ui/FolderOperation;-><init>(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, p0

    move v5, v4

    move v6, v4

    move-object v7, p2

    .line 4234
    invoke-virtual/range {v0 .. v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFolderChange(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v8

    .line 4237
    .local v8, "action":Lcom/kingsoft/mail/ui/DestructiveAction;
    if-eqz v3, :cond_5

    .line 4238
    invoke-virtual {p0, v9, v1, v8, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto :goto_0

    .end local v3    # "isDestructive":Z
    .end local v8    # "action":Lcom/kingsoft/mail/ui/DestructiveAction;
    :cond_4
    move v3, v9

    .line 4226
    goto :goto_1

    .line 4240
    .restart local v3    # "isDestructive":Z
    .restart local v8    # "action":Lcom/kingsoft/mail/ui/DestructiveAction;
    :cond_5
    invoke-interface {v8}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    goto :goto_0
.end method

.method protected abstract handleUpPress()Z
.end method

.method protected abstract hideOrRepositionToastBar(Z)V
.end method

.method protected hideWaitForInitialization()V
    .locals 1

    .prologue
    .line 3169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mWaitFragment:Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    .line 3170
    return-void
.end method

.method protected declared-synchronized informCursorVisiblity(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderChanged:Z

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/utils/Utils;->setConversationCursorVisibility(Landroid/database/Cursor;ZZ)V

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    :cond_0
    monitor-exit p0

    return-void

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeActionBar(Landroid/app/ActionBar;)Lcom/kingsoft/mail/ui/MailActionBarView;
    .locals 5
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v2, 0x0

    .line 724
    if-nez p1, :cond_0

    .line 736
    :goto_0
    return-object v2

    .line 728
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 729
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android.intent.action.SEARCH"

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 731
    .local v1, "isSearch":Z
    :goto_1
    const v3, 0x7f040029

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/MailActionBarView;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    .line 735
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2, v3, p0, p1, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->initialize(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ActivityController;Landroid/app/ActionBar;Lcom/kingsoft/mail/providers/Folder;)V

    .line 736
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    goto :goto_0

    .line 729
    .end local v1    # "isSearch":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 3990
    const/4 v1, 0x0

    .line 3991
    .local v1, "isAnimating":Z
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 3992
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 3993
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isAnimating()Z

    move-result v1

    .line 3995
    :cond_0
    return v1
.end method

.method protected abstract isConversationListVisible()Z
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 2899
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDestroyed:Z

    return v0
.end method

.method public isDrawerPullEnabled()Z
    .locals 1

    .prologue
    .line 5539
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getShouldAllowDrawerPull(I)Z

    move-result v0

    return v0
.end method

.method public isInitialConversationLoading()Z
    .locals 1

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->isInitialConversationLoading()Z

    move-result v0

    return v0
.end method

.method public loadAccountInbox()V
    .locals 6

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "handled":Z
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    if-eqz v3, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/providers/FolderWatcher;->getDefaultInbox(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 1199
    .local v1, "inbox":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v1, :cond_0

    .line 1200
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 1201
    const/4 v0, 0x1

    .line 1204
    .end local v1    # "inbox":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    if-nez v0, :cond_1

    .line 1205
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$FolderLoads;

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v3, v4, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restartOptionalLoader(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 1207
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v2

    .line 1208
    .local v2, "mode":I
    if-eqz v2, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 1209
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    .line 1211
    :cond_3
    return-void
.end method

.method public makeDialogListener(IZ)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "isBatch"    # Z

    .prologue
    .line 5204
    if-eqz p2, :cond_0

    .line 5205
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 5210
    .local v2, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    :goto_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v4

    .line 5211
    .local v4, "destructiveAction":Lcom/kingsoft/mail/ui/DestructiveAction;
    iput p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    .line 5212
    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogFromSelectedSet:Z

    .line 5213
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$24;

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController$24;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ILcom/kingsoft/mail/ui/DestructiveAction;Z)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5228
    return-void

    .line 5207
    .end local v2    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    .end local v4    # "destructiveAction":Lcom/kingsoft/mail/ui/DestructiveAction;
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Will act upon %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    aput-object v6, v3, v5

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5208
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v2

    .restart local v2    # "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    goto :goto_0
.end method

.method public markConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 6
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p3, "originalConversationInfo"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .local p2, "unreadMessageUris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2202
    iput-boolean v5, p1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    .line 2203
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-nez v0, :cond_0

    .line 2204
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "markConversationMessagesUnread(id=%d), deferring"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2206
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController$6;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 2221
    return-void

    .line 2214
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "markConversationMessagesUnread(id=%d), performing"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2215
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->doMarkConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_0
.end method

.method public markConversationsRead(Ljava/util/Collection;ZZ)V
    .locals 2
    .param p2, "read"    # Z
    .param p3, "viewed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2284
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-nez v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListLoadFinishedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/AbstractActivityController$8;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    :goto_0
    return-void

    .line 2293
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZZ)V

    goto :goto_0
.end method

.method protected maybeEnableCabMode()V
    .locals 1

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    if-eqz v0, :cond_0

    .line 4152
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->activate()V

    .line 4155
    :cond_0
    return-void
.end method

.method protected navigateUpFolderHierarchy()V
    .locals 3

    .prologue
    .line 5548
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$25;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$25;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController$25;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5600
    return-void
.end method

.method public onAccessibilityStateChanged()V
    .locals 2

    .prologue
    .line 5190
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->onAccessibilityUpdated()V

    .line 5192
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v1

    .line 5193
    .local v1, "frag":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v1, :cond_0

    .line 5194
    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 5195
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    .line 5196
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetInvalidated()V

    .line 5199
    .end local v0    # "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1337
    packed-switch p1, :pswitch_data_0

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1349
    :pswitch_0
    sget-boolean v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->isResultOk:Z

    if-eqz v1, :cond_1

    .line 1350
    sput-boolean v4, Lcom/kingsoft/mail/ui/AbstractActivityController;->isResultOk:Z

    .line 1351
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1354
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->finish()V

    goto :goto_0

    .line 1358
    :pswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 1361
    .local v0, "refreshUri":Landroid/net/Uri;
    :goto_1
    if-eqz v0, :cond_0

    .line 1362
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->startAsyncRefreshTask(Landroid/net/Uri;)V

    goto :goto_0

    .line 1360
    .end local v0    # "refreshUri":Landroid/net/Uri;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 4
    .param p1, "animatedAdapter"    # Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .prologue
    const/4 v3, 0x0

    .line 4081
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-nez v0, :cond_1

    .line 4082
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "null ConversationCursor in onAnimationEnd"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4098
    :cond_0
    :goto_0
    return-void

    .line 4085
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4086
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "Stopped animating: try sync"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4087
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onRefreshReady()V

    .line 4090
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4091
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "Stopped animating: refresh"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4092
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    .line 4094
    :cond_3
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRecentsDataUpdated:Z

    if-eqz v0, :cond_0

    .line 4095
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRecentsDataUpdated:Z

    .line 4096
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRecentFolderObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public final onBackPressed()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    .line 2094
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;

    .line 2095
    .local v0, "h":Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;->onBackPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2128
    .end local v0    # "h":Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;
    :goto_0
    return v5

    .line 2100
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleBackPress()Z

    move-result v5

    goto :goto_0

    .line 2104
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v7, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2105
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 2111
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2112
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->deactivate()V

    goto :goto_0

    .line 2116
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2117
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSecureConversationViewFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v4

    .line 2118
    .local v4, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2119
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getmViewController()Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v3

    .line 2120
    .local v3, "scvc":Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getMoreOp()Landroid/widget/GridView;

    move-result-object v2

    .line 2121
    .local v2, "moreOp":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 2122
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2128
    .end local v2    # "moreOp":Landroid/view/View;
    .end local v3    # "scvc":Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .end local v4    # "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleBackPress()Z

    move-result v5

    goto :goto_0
.end method

.method public final onCabModeEntered()V
    .locals 3

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 3486
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3487
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v1, :cond_0

    .line 3488
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuVisible(Z)V

    .line 3490
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onCabModeEntered()V

    .line 3492
    :cond_1
    return-void
.end method

.method public final onCabModeExited()V
    .locals 3

    .prologue
    .line 3496
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 3497
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3498
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v1, :cond_0

    .line 3499
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuVisible(Z)V

    .line 3501
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onCabModeExited()V

    .line 3503
    :cond_1
    return-void
.end method

.method protected onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z
    .locals 5
    .param p1, "mergedMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 3466
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3467
    :cond_0
    const/4 v2, 0x0

    .line 3480
    :goto_0
    return v2

    .line 3469
    :cond_1
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3470
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    .line 3471
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3473
    .local v0, "condition":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "rawSubject"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3474
    const-string/jumbo v2, "accountKey"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getBundleForChat(Lcom/kingsoft/mail/providers/Conversation;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showChatView(Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0

    .line 3475
    :catch_0
    move-exception v1

    .line 3476
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mRealActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 1581
    :cond_0
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->informCursorVisiblity(Z)V

    .line 1385
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitAutoAdvanceOperation()V

    .line 1388
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 1389
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1390
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onConversationListVisibilityChanged(Z)V

    .line 1392
    :cond_0
    return-void
.end method

.method public onConversationSeen()V
    .locals 1

    .prologue
    .line 4348
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationPagerController;->onConversationSeen()V

    .line 4349
    return-void
.end method

.method public final onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V
    .locals 13
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "inLoaderCallbacks"    # Z
    .param p3, "isSelectedChatView"    # Z

    .prologue
    .line 3244
    if-nez p1, :cond_1

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3247
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v6

    .line 3248
    .local v6, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3249
    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onConversationSelected()V

    .line 3251
    :cond_2
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 3253
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 3255
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3256
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iget-wide v3, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v2, v3, v4}, Lcom/kingsoft/mail/compose/ComposeActivity;->editDraft(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto :goto_0

    .line 3257
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3258
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 3259
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getMessageFromConversation(Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v7

    .line 3260
    .local v7, "curMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    if-eqz v7, :cond_0

    .line 3261
    iget-object v11, v7, Lcom/kingsoft/mail/browse/ConversationMessage;->serverId:Ljava/lang/String;

    .line 3262
    .local v11, "serverId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3263
    .local v12, "times":I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3265
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 3270
    :cond_4
    :goto_1
    const/4 v0, 0x3

    if-lt v12, v0, :cond_5

    .line 3271
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    invoke-direct {p0, v0, v2, v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showSendOrDeleteDialog(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/browse/ConversationMessage;)V

    goto :goto_0

    .line 3266
    :catch_0
    move-exception v8

    .line 3267
    .local v8, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 3273
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    goto :goto_0

    .line 3276
    .end local v7    # "curMessage":Lcom/kingsoft/mail/browse/ConversationMessage;
    .end local v11    # "serverId":Ljava/lang/String;
    .end local v12    # "times":I
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3277
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    goto :goto_0

    .line 3278
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3279
    :cond_8
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3280
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 3281
    .local v1, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_0

    .line 3284
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3286
    .end local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    goto/16 :goto_0

    .line 3289
    :cond_a
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3290
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 3291
    .restart local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_0

    .line 3294
    invoke-virtual {p0, v1, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3295
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3297
    .end local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_b
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    if-nez p3, :cond_10

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3298
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Account;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->forConversation(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/browse/ConversationItemViewModel;

    move-result-object v10

    .line 3299
    .local v10, "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    iget-boolean v0, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasBeenForwarded:Z

    if-nez v0, :cond_d

    iget-boolean v0, v10, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->hasBeenRepliedTo:Z

    if-eqz v0, :cond_e

    :cond_d
    const/4 v9, 0x1

    .line 3300
    .local v9, "hasBeenHandled":Z
    :goto_2
    if-eqz v9, :cond_f

    .line 3301
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 3302
    .restart local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_0

    .line 3305
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v1, v0}, Lcom/kingsoft/mail/chat/ChatViewUtils;->getChatMergeCount(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Folder;)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_f

    .line 3306
    invoke-virtual {p0, v1, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z

    goto/16 :goto_0

    .line 3299
    .end local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v9    # "hasBeenHandled":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_2

    .line 3310
    .restart local v9    # "hasBeenHandled":Z
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    goto/16 :goto_0

    .line 3312
    .end local v9    # "hasBeenHandled":Z
    .end local v10    # "header":Lcom/kingsoft/mail/browse/ConversationItemViewModel;
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V

    goto/16 :goto_0
.end method

.method public onConversationVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitAutoAdvanceOperation()V

    .line 1401
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 1501
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->initializeDevLoggingService()V

    .line 1503
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->setDefaultKeyMode(I)V

    .line 1504
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mResolver:Landroid/content/ContentResolver;

    .line 1505
    new-instance v0, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mNewEmailReceiver:Lcom/kingsoft/mail/ui/SuppressNotificationReceiver;

    .line 1507
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mVeiledMatcher:Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/utils/VeiledAddressMatcher;->initialize(Lcom/kingsoft/mail/ui/AccountController;)V

    .line 1512
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 1513
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x7f020145

    const v4, 0x7f100192

    const v5, 0x7f100193

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 1515
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerListener:Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;

    .line 1516
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 1517
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerListener:Lcom/kingsoft/mail/ui/AbstractActivityController$MailDrawerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 1518
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$DrawerStateChangeListener;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/ViewMode;->addListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    .line 1529
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationPagerController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-direct {v0, v1, p0}, Lcom/kingsoft/mail/browse/ConversationPagerController;-><init>(Lcom/kingsoft/mail/ui/RestrictedActivity;Lcom/kingsoft/mail/ui/ActivityController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    .line 1530
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const v1, 0x7f0c01f7

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ActionableToastBar;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    .line 1531
    new-instance v0, Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-direct {v0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    .line 1532
    invoke-static {}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->setDialogDismissed()V

    .line 1534
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/utils/DrawIdler;->setRootView(Landroid/view/View;)V

    .line 1536
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1542
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_6

    .line 1543
    const-string/jumbo v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1544
    const-string/jumbo v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 1546
    :cond_2
    const-string/jumbo v0, "saved-folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1547
    const-string/jumbo v0, "saved-folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/Folder;

    .line 1548
    .local v6, "folder":Lcom/kingsoft/mail/providers/Folder;
    const-string/jumbo v0, "saved-query"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1549
    .local v8, "query":Ljava/lang/String;
    invoke-direct {p0, v6, v8, v9}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListContext(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Z)V

    .line 1551
    .end local v6    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v8    # "query":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "saved-action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1552
    const-string/jumbo v0, "saved-action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    .line 1554
    :cond_4
    const-string/jumbo v0, "saved-action-from-selected"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogFromSelectedSet:Z

    .line 1555
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/ViewMode;->handleRestore(Landroid/os/Bundle;)V

    .line 1560
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountCallbacks:Lcom/kingsoft/mail/ui/AbstractActivityController$AccountLoads;

    invoke-virtual {v0, v9, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1562
    const/4 v0, 0x1

    return v0

    .line 1556
    :cond_6
    if-eqz v7, :cond_5

    .line 1557
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1628
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method public final onDataSetChanged()V
    .locals 2

    .prologue
    .line 4028
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateConversationListFragment()V

    .line 4029
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4030
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->validateAgainstCursor(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 4031
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2788
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v1, :cond_0

    .line 2789
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->removeListener(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;)V

    .line 2791
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 2792
    .local v0, "viewMode":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/utils/DrawIdler;->setListener(Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;)V

    .line 2793
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawIdler:Lcom/kingsoft/mail/utils/DrawIdler;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/utils/DrawIdler;->setRootView(Landroid/view/View;)V

    .line 2795
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationPagerController;->onDestroy()V

    .line 2796
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onDestroy()V

    .line 2798
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDestroyed:Z

    .line 2799
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mLogServiceChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2800
    iput-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mLogServiceChecker:Ljava/lang/Runnable;

    .line 2801
    invoke-static {}, Lcom/kingsoft/mail/browse/SendersView;->unregistConfigurationChangedReceiver()V

    .line 2802
    return-void
.end method

.method public onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;ZZZ)V

    .line 972
    return-void
.end method

.method public onFolderChanged(Lcom/kingsoft/mail/providers/Folder;ZZZ)V
    .locals 6
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "force"    # Z
    .param p3, "withOldCondition"    # Z
    .param p4, "backToListMode"    # Z

    .prologue
    .line 977
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->exitCabMode()V

    .line 983
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v2, v0, Lcom/kingsoft/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    .local v2, "query":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 989
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;ZZZ)V

    .line 990
    return-void

    .line 986
    .end local v2    # "query":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "query":Ljava/lang/String;
    goto :goto_0
.end method

.method public onFolderEmptied()V
    .locals 0

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->emptyFolder()V

    .line 2017
    return-void
.end method

.method public onFolderSelected(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 3
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "force":Z
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getPreMode()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1164
    :cond_0
    const/4 v0, 0x1

    .line 1165
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->clearMergeOrfilterInfo()V

    .line 1168
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFolderChanged(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 1169
    return-void
.end method

.method public onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "errorStatus"    # I

    .prologue
    .line 5136
    const/4 v0, 0x0

    .line 5137
    .local v0, "uri":Landroid/net/Uri;
    packed-switch p2, :pswitch_data_0

    .line 5161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5139
    :pswitch_1
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 5140
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 5158
    :cond_1
    if-eqz v0, :cond_0

    .line 5159
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->startAsyncRefreshTask(Landroid/net/Uri;)V

    goto :goto_0

    .line 5144
    :pswitch_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->promptUserForAuthentication(Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_0

    .line 5149
    :pswitch_3
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showStorageErrorDialog()V

    goto :goto_0

    .line 5152
    :pswitch_4
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Lcom/kingsoft/mail/providers/Account;Z)V

    goto :goto_0

    .line 5137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 5165
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 5166
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->startAsyncRefreshTask(Landroid/net/Uri;)V

    .line 5168
    :cond_0
    return-void
.end method

.method public onHeadPicClicked(Lcom/kingsoft/mail/providers/Conversation;Landroid/view/View;)V
    .locals 6
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 5697
    sget-boolean v0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 5713
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 5700
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5701
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 5702
    .local v1, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->shouldIntoFilterFromListMode(Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5703
    const-string/jumbo v0, "A12"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 5704
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 5706
    :cond_2
    if-eqz v1, :cond_0

    .line 5707
    invoke-virtual {p0, p1, v4, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V

    goto :goto_0

    .line 5711
    .end local v1    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    check-cast p2, Lcom/kingsoft/mail/browse/ToggleableItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-interface {p2}, Lcom/kingsoft/mail/browse/ToggleableItem;->toggleSelectedState()Z

    goto :goto_0
.end method

.method public onInfoIconClicked(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 5719
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 1641
    .local v0, "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1646
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onListModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;ZZZLjava/lang/String;)V
    .locals 4
    .param p1, "mergedMessage"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "vfiltRawSubject"    # Z
    .param p3, "vfiltFrom"    # Z
    .param p4, "vfiltUnread"    # Z
    .param p5, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3447
    iput-boolean p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    .line 3448
    iput-boolean p3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    .line 3449
    iput-object p5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    .line 3450
    iput-boolean p4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtUnread:Z

    .line 3451
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    if-nez v1, :cond_0

    .line 3453
    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3458
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getFilterConditionString()Ljava/lang/String;

    move-result-object v0

    .line 3459
    .local v0, "conditionStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3460
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3463
    :goto_1
    return-void

    .line 3456
    .end local v0    # "conditionStr":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    goto :goto_0

    .line 3462
    .restart local v0    # "conditionStr":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 29
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1654
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v3

    const-string/jumbo v4, "menu_item"

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const-string/jumbo v6, "action_bar"

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/kingsoft/mail/analytics/Tracker;->sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1657
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v24

    .line 1658
    .local v24, "id":I
    sget-object v3, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "AbstractController.onOptionsItemSelected(%d) called."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1659
    const/16 v20, 0x1

    .line 1661
    .local v20, "handled":Z
    const/16 v25, 0x0

    .line 1662
    .local v25, "isBatch":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v4

    .line 1663
    .local v4, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v3, :cond_1

    const/16 v27, 0x0

    .line 1666
    .local v27, "settings":Lcom/kingsoft/mail/providers/Settings;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->doesActionChangeConversationListVisibility(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->commitDestructiveActions(Z)V

    .line 1667
    const v3, 0x7f0c0270

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    .line 1668
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/kingsoft/mail/providers/Settings;->confirmArchive:Z

    if-eqz v3, :cond_3

    const/16 v28, 0x1

    .line 1669
    .local v28, "showDialog":Z
    :goto_2
    const v3, 0x7f0f0001

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->confirmAndDelete(ILjava/util/Collection;ZI)V

    .line 1837
    .end local v28    # "showDialog":Z
    :cond_0
    :goto_3
    return v20

    .line 1663
    .end local v27    # "settings":Lcom/kingsoft/mail/providers/Settings;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v3, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    move-object/from16 v27, v0

    goto :goto_0

    .line 1666
    .restart local v27    # "settings":Lcom/kingsoft/mail/providers/Settings;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1668
    :cond_3
    const/16 v28, 0x0

    goto :goto_2

    .line 1670
    :cond_4
    const v3, 0x7f0c0271

    move/from16 v0, v24

    if-ne v0, v3, :cond_5

    .line 1671
    const v9, 0x7f0c0271

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredRemoveFolder(Ljava/util/Collection;Lcom/kingsoft/mail/providers/Folder;ZZZ)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4, v3, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto :goto_3

    .line 1673
    :cond_5
    const v3, 0x7f0c026d

    move/from16 v0, v24

    if-ne v0, v3, :cond_a

    .line 1675
    const-string/jumbo v3, "A08"

    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1677
    if-eqz v27, :cond_8

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/kingsoft/mail/providers/Settings;->confirmDelete:Z

    if-eqz v3, :cond_8

    const/16 v28, 0x1

    .line 1678
    .restart local v28    # "showDialog":Z
    :goto_4
    const/16 v21, 0x0

    .line 1679
    .local v21, "hasSub":Z
    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a000f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1681
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kingsoft/mail/providers/Conversation;

    .line 1683
    .local v14, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget v3, v14, Lcom/kingsoft/mail/providers/Conversation;->mergeCount:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_6

    .line 1685
    const/16 v21, 0x1

    .line 1690
    .end local v14    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_7
    if-nez v21, :cond_9

    const v3, 0x7f0f0002

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->confirmAndDelete(ILjava/util/Collection;ZI)V

    goto :goto_3

    .line 1677
    .end local v21    # "hasSub":Z
    .end local v28    # "showDialog":Z
    :cond_8
    const/16 v28, 0x0

    goto :goto_4

    .line 1690
    .restart local v21    # "hasSub":Z
    .restart local v28    # "showDialog":Z
    :cond_9
    const v3, 0x7f0f0003

    goto :goto_5

    .line 1691
    .end local v21    # "hasSub":Z
    .end local v28    # "showDialog":Z
    :cond_a
    const v3, 0x7f0c0272

    move/from16 v0, v24

    if-ne v0, v3, :cond_b

    .line 1693
    const/4 v3, 0x1

    const v5, 0x7f100130

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->confirmAndDelete(ILjava/util/Collection;ZI)V

    goto/16 :goto_3

    .line 1695
    :cond_b
    const v3, 0x7f0c0277

    move/from16 v0, v24

    if-ne v0, v3, :cond_c

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    const-string/jumbo v5, "priority"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1698
    :cond_c
    const v3, 0x7f0c0278

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isImportantOnly()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1700
    const v3, 0x7f0c0278

    const v5, 0x7f0c0278

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto/16 :goto_3

    .line 1703
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    const-string/jumbo v5, "priority"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1706
    :cond_e
    const v3, 0x7f0c0279

    move/from16 v0, v24

    if-ne v0, v3, :cond_f

    .line 1707
    const v3, 0x7f0c0279

    const v5, 0x7f0c0279

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto/16 :goto_3

    .line 1708
    :cond_f
    const v3, 0x7f0c027b

    move/from16 v0, v24

    if-ne v0, v3, :cond_10

    .line 1709
    const v3, 0x7f0c027b

    const v5, 0x7f0c027b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto/16 :goto_3

    .line 1711
    :cond_10
    const v3, 0x7f0c027c

    move/from16 v0, v24

    if-ne v0, v3, :cond_11

    .line 1715
    const v3, 0x7f0c027c

    const v5, 0x7f0c027c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto/16 :goto_3

    .line 1717
    :cond_11
    const v3, 0x7f0c027d

    move/from16 v0, v24

    if-ne v0, v3, :cond_12

    .line 1718
    const v3, 0x7f0c027d

    const v5, 0x7f0c027d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getDeferredAction(ILjava/util/Collection;Z)Lcom/kingsoft/mail/ui/DestructiveAction;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/kingsoft/mail/ui/AbstractActivityController;->delete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;Z)V

    goto/16 :goto_3

    .line 1720
    :cond_12
    const v3, 0x102002c

    move/from16 v0, v24

    if-ne v0, v3, :cond_13

    .line 1721
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUpPressed()Z

    goto/16 :goto_3

    .line 1722
    :cond_13
    const v3, 0x7f0c011f

    move/from16 v0, v24

    if-ne v0, v3, :cond_14

    .line 1723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3, v5}, Lcom/kingsoft/mail/compose/ComposeActivity;->compose(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    goto/16 :goto_3

    .line 1724
    :cond_14
    const v3, 0x7f0c0281

    move/from16 v0, v24

    if-ne v0, v3, :cond_15

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->toggleDrawerState()V

    goto/16 :goto_3

    .line 1726
    :cond_15
    const v3, 0x7f0c0282

    move/from16 v0, v24

    if-ne v0, v3, :cond_16

    .line 1727
    const-string/jumbo v3, "A02"

    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3, v5}, Lcom/kingsoft/mail/utils/Utils;->showAttachmentMgr(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    goto/16 :goto_3

    .line 1729
    :cond_16
    const v3, 0x7f0c0285

    move/from16 v0, v24

    if-ne v0, v3, :cond_18

    .line 1731
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getConnectManager()Lcom/kingsoft/email/EmailConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/EmailConnectivityManager;->hasConnectivity()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f100283

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1734
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v15

    .line 1735
    .local v15, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v15, :cond_0

    .line 1736
    iget-object v3, v15, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->autoRefresh()V

    goto/16 :goto_3

    .line 1738
    .end local v15    # "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    :cond_18
    const v3, 0x7f0c0268

    move/from16 v0, v24

    if-ne v0, v3, :cond_19

    .line 1739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3, v5}, Lcom/kingsoft/mail/utils/Utils;->showSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    goto/16 :goto_3

    .line 1740
    :cond_19
    const v3, 0x7f0c0286

    move/from16 v0, v24

    if-ne v0, v3, :cond_1a

    .line 1741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/Utils;->showFolderSettings(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Folder;)V

    goto/16 :goto_3

    .line 1742
    :cond_1a
    const v3, 0x7f0c0269

    move/from16 v0, v24

    if-ne v0, v3, :cond_1b

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getHelpContext()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/Utils;->showHelp(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1744
    :cond_1b
    const v3, 0x7f0c028c

    move/from16 v0, v24

    if-ne v0, v3, :cond_1c

    .line 1745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Lcom/kingsoft/mail/providers/Account;Z)V

    goto/16 :goto_3

    .line 1746
    :cond_1c
    const v3, 0x7f0c002b

    move/from16 v0, v24

    if-ne v0, v3, :cond_1d

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3, v5}, Lcom/kingsoft/mail/utils/Utils;->showManageFolder(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    goto/16 :goto_3

    .line 1748
    :cond_1d
    const v3, 0x7f0c0274

    move/from16 v0, v24

    if-eq v0, v3, :cond_1e

    const v3, 0x7f0c0275

    move/from16 v0, v24

    if-ne v0, v3, :cond_20

    .line 1749
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const v3, 0x7f0c0274

    move/from16 v0, v24

    if-ne v0, v3, :cond_1f

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v7, p0

    invoke-static/range {v5 .. v11}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->getInstance(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/ui/ConversationUpdater;Ljava/util/Collection;ZLcom/kingsoft/mail/providers/Folder;Z)Lcom/kingsoft/mail/ui/FolderSelectionDialog;

    move-result-object v18

    .line 1753
    .local v18, "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    if-eqz v18, :cond_0

    .line 1754
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/mail/ui/FolderSelectionDialog;->show()V

    goto/16 :goto_3

    .line 1749
    .end local v18    # "dialog":Lcom/kingsoft/mail/ui/FolderSelectionDialog;
    :cond_1f
    const/4 v11, 0x0

    goto :goto_6

    .line 1756
    :cond_20
    const v3, 0x7f0c0276

    move/from16 v0, v24

    if-ne v0, v3, :cond_21

    .line 1757
    new-instance v5, Lcom/kingsoft/mail/ui/AbstractActivityController$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController$4;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v5, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 1774
    :cond_21
    const v3, 0x7f0c027f

    move/from16 v0, v24

    if-ne v0, v3, :cond_22

    .line 1775
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showEmptyDialog()V

    goto/16 :goto_3

    .line 1776
    :cond_22
    const v3, 0x7f0c0280

    move/from16 v0, v24

    if-ne v0, v3, :cond_23

    .line 1777
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showEmptyDialog()V

    goto/16 :goto_3

    .line 1780
    :cond_23
    const v3, 0x7f0c026a

    move/from16 v0, v24

    if-ne v0, v3, :cond_24

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v5, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->editDraft(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto/16 :goto_3

    .line 1782
    :cond_24
    const v3, 0x7f0c026b

    move/from16 v0, v24

    if-ne v0, v3, :cond_25

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v5, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->replyAll(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto/16 :goto_3

    .line 1784
    :cond_25
    const v3, 0x7f0c026e

    move/from16 v0, v24

    if-ne v0, v3, :cond_26

    .line 1785
    const-string/jumbo v3, "A09"

    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v5, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->reply(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto/16 :goto_3

    .line 1787
    :cond_26
    const v3, 0x7f0c026f

    move/from16 v0, v24

    if-ne v0, v3, :cond_28

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Conversation;->listOf(Lcom/kingsoft/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v5

    const-string/jumbo v6, "starred"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSecureConversationViewFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v19

    .line 1792
    .local v19, "frag":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    if-eqz v19, :cond_0

    .line 1793
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->invalidateOptionsMenu()V

    goto/16 :goto_3

    .line 1788
    .end local v19    # "frag":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    :cond_27
    const/4 v3, 0x1

    goto :goto_7

    .line 1795
    :cond_28
    const v3, 0x7f0c026c

    move/from16 v0, v24

    if-ne v0, v3, :cond_29

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v3, v5, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->forward(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;J)V

    goto/16 :goto_3

    .line 1798
    :cond_29
    const v3, 0x7f0c0283

    move/from16 v0, v24

    if-ne v0, v3, :cond_2b

    .line 1800
    const-string/jumbo v3, "A18"

    invoke-static {v3}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1803
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v12

    .line 1805
    .local v12, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    invoke-virtual {v12}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getConversationCount()I

    move-result v16

    .line 1806
    .local v16, "count":I
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1807
    .local v13, "cons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2a

    .line 1808
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 1809
    .local v17, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v14

    .line 1810
    .restart local v14    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-wide v5, v14, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1812
    .end local v14    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v17    # "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    :cond_2a
    new-instance v26, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    new-instance v5, Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-direct {v5}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v5, v6}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;-><init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;)V

    .line 1813
    .local v26, "mCabActionMenuTemp":Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;
    const/4 v3, 0x1

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;->markConversationsRead(ZLjava/util/Collection;)V

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleUpPress()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1816
    .end local v12    # "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .end local v13    # "cons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/mail/providers/Conversation;>;"
    .end local v16    # "count":I
    .end local v22    # "i":I
    .end local v26    # "mCabActionMenuTemp":Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 1818
    :cond_2b
    const v3, 0x7f0c0284

    move/from16 v0, v24

    if-ne v0, v3, :cond_2f

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v3, v3, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    if-lez v3, :cond_2e

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v6, 0x7f1002aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1823
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1824
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->checkSendResult()V

    goto/16 :goto_3

    .line 1826
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v6, 0x7f100283

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1830
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    const v6, 0x7f1002b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1834
    :cond_2f
    const/16 v20, 0x0

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveAccountList:Z

    .line 2670
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->hideRefreshAnimation()V

    .line 2674
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enableNotifications()V

    .line 2675
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1567
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_2

    .line 1568
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 1569
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z

    .line 1574
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1569
    goto :goto_0

    .line 1571
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v2, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2659
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2663
    const/4 v0, 0x0

    return v0
.end method

.method public final onRefreshReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4005
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Received refresh ready callback for folder %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v0, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4008
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 4009
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignoring onRefreshReady on destroyed AAC"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4024
    :goto_1
    return-void

    .line 4005
    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0

    .line 4013
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mForceRefresh:Z

    if-eqz v0, :cond_3

    .line 4015
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->quitForceRefresh()V

    .line 4016
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->sync()V

    .line 4022
    :goto_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->onCursorUpdated()V

    .line 4023
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->perhapsShowFirstSearchResult()V

    goto :goto_1

    .line 4020
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->syncForCancel()V

    goto :goto_2
.end method

.method public final onRefreshRequired()V
    .locals 3

    .prologue
    .line 3955
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3956
    :cond_0
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "onRefreshRequired: delay until animating done"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3963
    :cond_1
    :goto_0
    return-void

    .line 3960
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3961
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    goto :goto_0
.end method

.method public onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1612
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "SyncErrorDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1614
    .local v0, "fragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 1615
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1621
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    if-eqz v1, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v1, v3, v3}, Lcom/kingsoft/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 1624
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 2964
    const-string/jumbo v3, "saved-detached-conv-uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    .line 2965
    const-string/jumbo v3, "saved-conversation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2967
    const-string/jumbo v3, "saved-conversation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 2968
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    if-gez v3, :cond_0

    .line 2971
    const/4 v3, 0x0

    iput v3, v1, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 2973
    :cond_0
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 2976
    .end local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    :cond_1
    const-string/jumbo v3, "saved-toast-bar-op"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2977
    const-string/jumbo v3, "saved-toast-bar-op"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/ToastBarOperation;

    .line 2978
    .local v2, "op":Lcom/kingsoft/mail/ui/ToastBarOperation;
    if-eqz v2, :cond_2

    .line 2979
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ToastBarOperation;->getType()I

    move-result v3

    if-nez v3, :cond_5

    .line 2980
    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 2986
    .end local v2    # "op":Lcom/kingsoft/mail/ui/ToastBarOperation;
    :cond_2
    :goto_0
    const-string/jumbo v3, "saved-hierarchical-folder"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderListFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 2987
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2988
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_3

    .line 2989
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2996
    :cond_3
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->restoreSelectedConversations(Landroid/os/Bundle;)V

    .line 3002
    iget v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 3003
    iget v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogFromSelectedSet:Z

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->makeDialogListener(IZ)V

    .line 3006
    :cond_4
    const-string/jumbo v3, "m-inbox"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/mail/providers/Folder;

    iput-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    .line 3008
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 3009
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    const-string/jumbo v4, "saved-conversation-list-scroll-positions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3011
    return-void

    .line 2981
    .end local v0    # "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    .restart local v2    # "op":Lcom/kingsoft/mail/ui/ToastBarOperation;
    :cond_5
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ToastBarOperation;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 2982
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onError(Lcom/kingsoft/mail/providers/Folder;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2683
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->disableNotifications()V

    .line 2685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSafeToModifyFragments:Z

    .line 2687
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2688
    .local v0, "frag":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2689
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->tryHideSyncStatus()Z

    .line 2691
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->attachEmptyFolderDialogFragmentListener()V

    .line 2695
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 2696
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2700
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/ViewMode;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 2701
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_0

    .line 2702
    const-string/jumbo v1, "saved-account"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2704
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_1

    .line 2705
    const-string/jumbo v1, "saved-folder"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2708
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {v1}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2709
    const-string/jumbo v1, "saved-query"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConvListContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v2, v2, Lcom/kingsoft/mail/ConversationListContext;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2712
    const-string/jumbo v1, "saved-conversation"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2714
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2715
    const-string/jumbo v1, "saved-selected-set"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2717
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2718
    const-string/jumbo v1, "saved-toast-bar-op"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ActionableToastBar;->getOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2720
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2721
    .local v0, "convListFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_6

    .line 2722
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2725
    :cond_6
    iget v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 2726
    const-string/jumbo v1, "saved-action"

    iget v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogAction:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2727
    const-string/jumbo v1, "saved-action-from-selected"

    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDialogFromSelectedSet:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2729
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 2730
    const-string/jumbo v1, "saved-detached-conv-uri"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2733
    :cond_8
    const-string/jumbo v1, "saved-hierarchical-folder"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderListFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2734
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSafeToModifyFragments:Z

    .line 2736
    const-string/jumbo v1, "m-inbox"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mInbox:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2738
    const-string/jumbo v1, "saved-conversation-list-scroll-positions"

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2740
    return-void
.end method

.method public onSearchRequired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "queryFilter"    # Ljava/lang/String;
    .param p2, "filterType"    # Ljava/lang/String;

    .prologue
    .line 5768
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 5769
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->search(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5770
    :cond_0
    sput-object p1, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    .line 5771
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->isInit:Z

    .line 5772
    return-void
.end method

.method public onSetChanged(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 0
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 4118
    return-void
.end method

.method public onSetEmpty()V
    .locals 2

    .prologue
    .line 4104
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setListener(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 4105
    return-void
.end method

.method public onSetPopulated(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V
    .locals 3
    .param p1, "set"    # Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .prologue
    .line 4109
    new-instance v0, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-direct {v0, v1, p1, v2}, Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;-><init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/providers/Folder;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCabActionMenu:Lcom/kingsoft/mail/browse/SelectedConversationsActionMenu;

    .line 4110
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4111
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->enableCabMode()V

    .line 4113
    :cond_1
    return-void
.end method

.method public onStarClicked(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 5725
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSafeToModifyFragments:Z

    .line 1603
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUndoNotificationObserver:Landroid/database/DataSetObserver;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->registerUndoNotificationObserver(Landroid/database/DataSetObserver;)V

    .line 1605
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MainActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    .line 1608
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUndoNotificationObserver:Landroid/database/DataSetObserver;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/NotificationActionUtils;->unregisterUndoNotificationObserver(Landroid/database/DataSetObserver;)V

    .line 2783
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4338
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mToastBar:Lcom/kingsoft/mail/ui/ActionableToastBar;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/ActionableToastBar;->isEventInToastBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->hideOrRepositionToastBar(Z)V

    .line 4342
    :cond_0
    return-void
.end method

.method public final onUpPressed()Z
    .locals 6

    .prologue
    .line 2067
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;

    .line 2068
    .local v0, "h":Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;->onUpPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2069
    const/4 v5, 0x1

    .line 2089
    .end local v0    # "h":Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;
    :goto_0
    return v5

    .line 2073
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2074
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSecureConversationViewFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v4

    .line 2075
    .local v4, "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2076
    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getmViewController()Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v3

    .line 2077
    .local v3, "scvc":Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getMoreOp()Landroid/widget/GridView;

    move-result-object v2

    .line 2078
    .local v2, "moreOp":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 2079
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2084
    .end local v2    # "moreOp":Landroid/view/View;
    .end local v3    # "scvc":Lcom/kingsoft/mail/ui/SecureConversationViewController;
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v5}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2085
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v5}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->requestFocus()V

    .line 2089
    .end local v4    # "scvf":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->handleUpPress()Z

    move-result v5

    goto :goto_0
.end method

.method public onViewModeChanged(I)V
    .locals 5
    .param p1, "newMode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2819
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isMergeConversation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2820
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 2825
    :cond_0
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/16 v3, 0xb

    if-ne p1, v3, :cond_2

    .line 2826
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->collapseSearchBar()V

    .line 2827
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->onDestroy()V

    .line 2831
    :cond_2
    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    .line 2832
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2833
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v3, v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->hideOrShowSoftInput(Z)V

    .line 2838
    :cond_3
    if-eqz p1, :cond_4

    .line 2839
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->resetActionBarIcon()V

    .line 2842
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2845
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, v4, :cond_9

    :cond_5
    move v0, v2

    .line 2846
    .local v0, "isTopLevel":Z
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v3, :cond_6

    .line 2847
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getShouldShowDrawerIndicator(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 2849
    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getShouldAllowDrawerPull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 2852
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v3, :cond_7

    .line 2853
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getShouldAllowDrawerPull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    invoke-virtual {v3, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    .line 2855
    :cond_7
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->closeDrawerIfOpen()V

    .line 2857
    .end local v0    # "isTopLevel":Z
    :cond_8
    return-void

    :cond_9
    move v0, v1

    .line 2845
    goto :goto_0

    .restart local v0    # "isTopLevel":Z
    :cond_a
    move v3, v2

    .line 2849
    goto :goto_1

    :cond_b
    move v2, v1

    .line 2853
    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2915
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2917
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->informCursorVisiblity(Z)V

    .line 2919
    :cond_0
    return-void
.end method

.method final perhapsEnterWaitMode()V
    .locals 3

    .prologue
    .line 754
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->isAccountInitializationRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->inWaitMode()Z

    move-result v0

    .line 760
    .local v0, "inWaitingMode":Z
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Account;->isAccountSyncRequired()Z

    move-result v1

    .line 761
    .local v1, "isSyncRequired":Z
    if-eqz v1, :cond_3

    .line 762
    if-eqz v0, :cond_2

    .line 764
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->updateWaitMode()V

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showWaitForInitialization()V

    goto :goto_0

    .line 769
    :cond_3
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->hideWaitForInitialization()V

    goto :goto_0
.end method

.method public quitForceRefresh()V
    .locals 1

    .prologue
    .line 5785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mForceRefresh:Z

    .line 5786
    return-void
.end method

.method public refresMailActionBarSubTitle(Z)V
    .locals 1
    .param p1, "visibiable"    # Z

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3727
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->enSureDisplaySubTitle(Z)V

    .line 3729
    :cond_0
    return-void
.end method

.method public final refreshConversationList()V
    .locals 1

    .prologue
    .line 4977
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 4978
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-nez v0, :cond_0

    .line 4982
    :goto_0
    return-void

    .line 4981
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->requestListRefresh()V

    goto :goto_0
.end method

.method public registerAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method public registerAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 867
    return-void
.end method

.method public registerConversationListObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3560
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 3561
    return-void
.end method

.method public registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationPagerController;->registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V

    .line 3595
    return-void
.end method

.method public registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 887
    return-void
.end method

.method public registerFolderObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 3579
    return-void
.end method

.method public removeUpOrBackHandler(Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/kingsoft/mail/ui/UpOrBackController$UpOrBackHandler;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mUpOrBackHandlers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 2167
    return-void
.end method

.method public requestFolderRefresh(Z)V
    .locals 4
    .param p1, "showAnimation"    # Z

    .prologue
    .line 2521
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v1, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2524
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 2525
    .local v0, "convList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    .line 2530
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showSyncStatusBar()V

    .line 2531
    if-eqz p1, :cond_2

    .line 2532
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->showRefreshAnimation()V

    .line 2535
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAsyncRefreshTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    if-eqz v1, :cond_3

    .line 2536
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAsyncRefreshTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;->cancel(Z)Z

    .line 2539
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2541
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 2542
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$13;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController$13;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAsyncRefreshTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    .line 2568
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAsyncRefreshTask:Lcom/kingsoft/mail/ui/AsyncRefreshTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/AsyncRefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected abstract resetActionBarIcon()V
.end method

.method protected safeToModifyFragments()Z
    .locals 1

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSafeToModifyFragments:Z

    return v0
.end method

.method public scrollListViewToPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .prologue
    .line 5661
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 5662
    .local v0, "conversationList":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5663
    if-eqz p2, :cond_1

    .line 5664
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 5669
    :cond_0
    :goto_0
    return-void

    .line 5666
    :cond_1
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public setConversationListScrollPosition(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "folderUri"    # Ljava/lang/String;
    .param p2, "savedPosition"    # Landroid/os/Parcelable;

    .prologue
    .line 5610
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListScrollPositions:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5611
    return-void
.end method

.method public setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3523
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->clearDetachedMode()V

    .line 3528
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mTracker:Lcom/kingsoft/mail/ui/ConversationPositionTracker;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/ConversationPositionTracker;->initialize(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 3529
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 3535
    return-void
.end method

.method public setDetachedMode()V
    .locals 4

    .prologue
    .line 5255
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 5256
    .local v0, "frag":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    .line 5257
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setChoiceNone()V

    .line 5262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDetachedConvUri:Landroid/net/Uri;

    .line 5263
    return-void

    .line 5258
    :cond_1
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 5260
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AAC.setDetachedMode(): CLF = null!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setFolderWatcher(Lcom/kingsoft/mail/providers/FolderWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/kingsoft/mail/providers/FolderWatcher;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderWatcher:Lcom/kingsoft/mail/providers/FolderWatcher;

    .line 1234
    return-void
.end method

.method public setHierarchyFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderListFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 1322
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "l"    # Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 5280
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 5281
    return-void
.end method

.method protected final shouldEnterSearchConvMode()Z
    .locals 1

    .prologue
    .line 3097
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHaveSearchResults:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->showTwoPaneSearchResults(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldHideMenuItems()Z
    .locals 1

    .prologue
    .line 5544
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mHideMenuItems:Z

    return v0
.end method

.method protected shouldSlideLeft(II)Z
    .locals 6
    .param p1, "currentMode"    # I
    .param p2, "preMode"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 1033
    if-ne p2, v1, :cond_1

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_0

    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1038
    :cond_1
    if-eq p2, v3, :cond_2

    if-eq p2, v4, :cond_2

    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    :cond_2
    if-eq p1, v5, :cond_0

    .line 1042
    :cond_3
    if-ne p2, v3, :cond_4

    if-eq p1, v4, :cond_0

    .line 1044
    :cond_4
    if-ne p2, v4, :cond_5

    if-ne p1, v3, :cond_5

    move v0, v1

    .line 1045
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1047
    goto :goto_0
.end method

.method protected abstract showChatView(Landroid/os/Bundle;)Z
.end method

.method protected showConversation(Lcom/kingsoft/mail/providers/Conversation;Z)V
    .locals 4
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "inLoaderCallbacks"    # Z

    .prologue
    .line 3134
    if-eqz p1, :cond_0

    .line 3135
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/perf/SimpleTimer;->start()V

    .line 3138
    :cond_0
    const-string/jumbo v0, "AbstractActivityController"

    const-string/jumbo v1, "showConversation(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/MailLogService;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3140
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 3141
    return-void
.end method

.method public showConversationList(Lcom/kingsoft/mail/ConversationListContext;)V
    .locals 2
    .param p1, "listContext"    # Lcom/kingsoft/mail/ConversationListContext;

    .prologue
    .line 3208
    invoke-static {p1}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    .line 3239
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ViewMode;->setMode(I)V

    .line 3240
    return-void

    .line 3211
    :cond_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/ConversationListContext;->hasCondition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3213
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterConversationListMode()V

    goto :goto_0

    .line 3214
    :cond_1
    iget-object v0, p1, Lcom/kingsoft/mail/ConversationListContext;->condition:Ljava/lang/String;

    const-string/jumbo v1, "flagRead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3215
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterUnreadConversationListMode()V

    goto :goto_0

    .line 3217
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3219
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    if-eqz v0, :cond_4

    .line 3221
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterMergedSearchResultsListMode()V

    goto :goto_0

    .line 3225
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterSearchResultsListMode()V

    goto :goto_0

    .line 3229
    :cond_5
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtFrom:Z

    if-eqz v0, :cond_6

    .line 3231
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterFiltedMergedConversationListMode()V

    goto :goto_0

    .line 3235
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterMergedConversationListMode()V

    goto :goto_0
.end method

.method protected final showErrorToast(Lcom/kingsoft/mail/providers/Folder;Z)V
    .locals 10
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "replaceVisibleToast"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 5012
    const/4 v1, 0x0

    .line 5015
    .local v1, "arrListener":Landroid/view/View$OnClickListener;
    iget v3, p1, Lcom/kingsoft/mail/providers/Folder;->lastSyncResult:I

    .line 5016
    .local v3, "lastSyncResult":I
    and-int/lit8 v9, v3, 0xf

    packed-switch v9, :pswitch_data_0

    .line 5083
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5019
    :pswitch_1
    shr-int/lit8 v6, v3, 0x4

    .line 5024
    .local v6, "syncRequest":I
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_2

    move v5, v2

    .line 5027
    .local v5, "showToast":Z
    :goto_1
    if-nez v5, :cond_3

    iget v9, p1, Lcom/kingsoft/mail/providers/Folder;->syncWindow:I

    if-gtz v9, :cond_1

    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_3

    .line 5029
    .local v2, "avoidToast":Z
    :cond_1
    :goto_2
    if-nez v2, :cond_0

    .line 5032
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getRetryClickedListener(Lcom/kingsoft/mail/providers/Folder;)Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v4

    .line 5033
    .local v4, "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    const v0, 0x7f100352

    .line 5035
    .local v0, "actionTextResourceId":I
    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$19;

    .end local v1    # "arrListener":Landroid/view/View$OnClickListener;
    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$19;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 5066
    .end local v2    # "avoidToast":Z
    .end local v5    # "showToast":Z
    .end local v6    # "syncRequest":I
    .restart local v1    # "arrListener":Landroid/view/View$OnClickListener;
    :goto_3
    :try_start_0
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v8}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/kingsoft/mail/utils/Utils;->getSyncStatusText4AbastractControl(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 5068
    .local v7, "toastStr":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5069
    iget-object v8, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5072
    .end local v7    # "toastStr":Ljava/lang/CharSequence;
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v0    # "actionTextResourceId":I
    .end local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    .restart local v6    # "syncRequest":I
    :cond_2
    move v5, v8

    .line 5024
    goto :goto_1

    .restart local v5    # "showToast":Z
    :cond_3
    move v2, v8

    .line 5027
    goto :goto_2

    .line 5048
    .end local v5    # "showToast":Z
    .end local v6    # "syncRequest":I
    :pswitch_2
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSignInClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v4

    .line 5049
    .restart local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    const v0, 0x7f100384

    .line 5050
    .restart local v0    # "actionTextResourceId":I
    goto :goto_3

    .line 5054
    .end local v0    # "actionTextResourceId":I
    .end local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    :pswitch_3
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getStorageErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v4

    .line 5055
    .restart local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    const v0, 0x7f100201

    .line 5056
    .restart local v0    # "actionTextResourceId":I
    goto :goto_3

    .line 5058
    .end local v0    # "actionTextResourceId":I
    .end local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    :pswitch_4
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getInternalErrorClickedListener()Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;

    move-result-object v4

    .line 5059
    .restart local v4    # "listener":Lcom/kingsoft/mail/ui/ActionableToastBar$ActionClickedListener;
    const v0, 0x7f100347

    .line 5060
    .restart local v0    # "actionTextResourceId":I
    goto :goto_3

    .line 5016
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showNextConversation(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2358
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->showNextConversation(Ljava/util/Collection;Ljava/lang/Runnable;)Z

    .line 2359
    return-void
.end method

.method public showWaitForInitialization()V
    .locals 1

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mViewMode:Lcom/kingsoft/mail/ui/ViewMode;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->enterWaitingForInitializationMode()V

    .line 3152
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v0}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;->newInstance(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mWaitFragment:Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    .line 3153
    return-void
.end method

.method public starMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Z)V
    .locals 10
    .param p1, "msg"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p2, "starred"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2491
    iget-boolean v2, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->starred:Z

    if-ne v2, p2, :cond_0

    .line 2518
    :goto_0
    return-void

    .line 2495
    :cond_0
    iput-boolean p2, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->starred:Z

    .line 2501
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationMessage;->isConversationStarred()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v7, v1

    .line 2502
    .local v7, "conversationStarred":Z
    :goto_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v6

    .line 2503
    .local v6, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v2, v6, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    if-eq v7, v2, :cond_2

    .line 2504
    iput-boolean v7, v6, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    .line 2505
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v5, v6, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string/jumbo v8, "starred"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Lcom/kingsoft/mail/browse/ConversationCursor;->setConversationColumn(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2509
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2510
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "starred"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2512
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractActivityController$12;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$12;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/ui/AbstractActivityController$12;->run(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v7    # "conversationStarred":Z
    :cond_3
    move v7, v0

    .line 2501
    goto :goto_1

    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v6    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v7    # "conversationStarred":Z
    :cond_4
    move v1, v0

    .line 2510
    goto :goto_2
.end method

.method public startDragMode()V
    .locals 1

    .prologue
    .line 3967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsDragHappening:Z

    .line 3968
    return-void
.end method

.method public startSearch()V
    .locals 3

    .prologue
    .line 4166
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v0, :cond_1

    .line 4168
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AbstractActivityController.startSearch(): null account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4180
    :cond_0
    :goto_0
    return-void

    .line 4173
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    if-eqz v0, :cond_0

    .line 4177
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->onDestroy()V

    .line 4178
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->onCreate(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 4179
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mSearchBarController:Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->expendSearchBar()V

    goto :goto_0
.end method

.method public stopDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3972
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mIsDragHappening:Z

    .line 3973
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3974
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "Stopped dragging: try sync"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3975
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onRefreshReady()V

    .line 3978
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3979
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "Stopped dragging: refresh"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3980
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    .line 3982
    :cond_1
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/kingsoft/mail/providers/Folder;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 4194
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0, p2}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToDefaultInboxOrChangeAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 777
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v3, :cond_0

    move v0, v1

    .line 778
    .local v0, "firstLoad":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 780
    .local v1, "switchToDefaultInbox":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->loadAccountInbox()V

    .line 785
    :goto_2
    return-void

    .end local v0    # "firstLoad":Z
    .end local v1    # "switchToDefaultInbox":Z
    :cond_0
    move v0, v2

    .line 777
    goto :goto_0

    .restart local v0    # "firstLoad":Z
    :cond_1
    move v1, v2

    .line 778
    goto :goto_1

    .line 784
    .restart local v1    # "switchToDefaultInbox":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeAccount(Lcom/kingsoft/mail/providers/Account;)V

    goto :goto_2
.end method

.method protected toggleDrawerState()V
    .locals 2

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->isDrawerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2051
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 2056
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDrawerState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 2058
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu()V

    goto :goto_0

    .line 2053
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerContainer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerPullout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_1

    .line 2060
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->openMenu()V

    goto :goto_0
.end method

.method public transitionBackToChatListMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1912
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v2

    .line 1913
    .local v2, "listFragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1929
    :cond_0
    :goto_0
    return v5

    .line 1918
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 1919
    .local v4, "object":Ljava/lang/Object;
    instance-of v6, v4, Lcom/kingsoft/mail/browse/ConversationCursor;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 1922
    check-cast v1, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 1923
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1926
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 1927
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mContext:Landroid/content/Context;

    iget-wide v6, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 1928
    .local v3, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-virtual {p0, v3, v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onChatModeChanged(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/mail/providers/Conversation;)Z

    .line 1929
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public transitionBackToMergeListMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1892
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1893
    .local v0, "condition":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_1

    .line 1895
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->filtRawSubject:Z

    if-eqz v2, :cond_0

    .line 1897
    :try_start_0
    const-string/jumbo v2, "rawSubject"

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mMergedMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->changeFolder(Lcom/kingsoft/mail/providers/Folder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1902
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onConversationListVisibilityChanged(Z)V

    .line 1904
    :cond_0
    const-string/jumbo v2, "C17"

    invoke-static {v2}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1906
    :cond_1
    return-void

    .line 1898
    :catch_0
    move-exception v1

    .line 1899
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 862
    return-void
.end method

.method public unregisterAllAccountObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mAllAccountObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 872
    return-void
.end method

.method public unregisterConversationListObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3566
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3572
    :goto_0
    return-void

    .line 3567
    :catch_0
    move-exception v0

    .line 3569
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterConversationListObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3600
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mPagerController:Lcom/kingsoft/mail/browse/ConversationPagerController;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationPagerController;->unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3606
    :goto_0
    return-void

    .line 3601
    :catch_0
    move-exception v0

    .line 3603
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterConversationLoadedObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mDrawerObservers:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 892
    return-void
.end method

.method public unregisterFolderObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3584
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mFolderObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3590
    :goto_0
    return-void

    .line 3585
    :catch_0
    move-exception v0

    .line 3587
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterFolderObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public updateConversation(Ljava/util/Collection;Landroid/content/ContentValues;)V
    .locals 1
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2171
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateValues(Ljava/util/Collection;Landroid/content/ContentValues;)I

    .line 2172
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2173
    return-void
.end method

.method public updateConversation(Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2185
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateInt(Ljava/util/Collection;Ljava/lang/String;I)I

    .line 2186
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2187
    return-void
.end method

.method public updateConversation(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2192
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateString(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2194
    return-void
.end method

.method public updateConversation(Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2178
    .local p1, "target":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I

    .line 2179
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->refreshConversationList()V

    .line 2180
    return-void
.end method
