.class public Lcom/kingsoft/mail/ui/ConversationListFragment;
.super Lmiui/app/ListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;
.implements Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;
.implements Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;
.implements Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ConversationListFragment$11;,
        Lcom/kingsoft/mail/ui/ConversationListFragment$HeadOnlyEnabledDialogFragment;,
        Lcom/kingsoft/mail/ui/ConversationListFragment$ManualSyncCompleteBroadcastReceiver;,
        Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;
    }
.end annotation


# static fields
.field public static final ACTION_EMAIL_DOWNLOAD_PROCESS:Ljava/lang/String; = "com.android.mail.ui.ConversationListFragment.downloadEmail"

.field public static final BROADCAST_EMAIL_DOWNLOAD_PROCESS_KEY:Ljava/lang/String; = "Download_Process_Key"

.field private static final CONVERSATION_LIST_KEY:Ljava/lang/String; = "conversation-list"

.field private static NO_NEW_MESSAGE_DURATION:J = 0x0L

.field private static final SEARCH_HEADER_TAG:Ljava/lang/String; = "header"

.field private static TIMESTAMP_UPDATE_INTERVAL:I

.field private static mTabletDevice:Z

.field private static sSelectionModeAnimationDuration:J


# instance fields
.field private final CHOICE_MODE_KEY:Ljava/lang/String;

.field private final LIST_STATE_KEY:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private isActionBarShowError:Z

.field private isInitMenuBar:Z

.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field private mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field private mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

.field protected mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

.field private mConversationCursorHash:I

.field private mConversationCursorObserver:Landroid/database/DataSetObserver;

.field private final mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

.field private mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

.field private mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

.field private final mConversationSetObserver:Lcom/kingsoft/mail/ui/ConversationSetObserver;

.field private mCursorChanged:Z

.field private mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

.field private mEmptyView:Landroid/view/View;

.field private mErrorListener:Lcom/kingsoft/mail/ui/ErrorListener;

.field protected mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFolderListView:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

.field private mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

.field private mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

.field private mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimation:Z

.field protected mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

.field protected mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

.field private mManualSyncCompleteReceiver:Lcom/kingsoft/mail/ui/ConversationListFragment$ManualSyncCompleteBroadcastReceiver;

.field private mMenuClosing:Z

.field private final mMode:I

.field private mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

.field protected mScrollPositionRestored:Z

.field private mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

.field private mSelectionModeExitedTimestamp:J

.field private mUpdateTimestampsRunnable:Ljava/lang/Runnable;

.field private mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

.field private mViewContext:Lcom/kingsoft/mail/ConversationListContext;

.field private needShieldNextClick:Z

.field protected userFolderList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    .line 116
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->NO_NEW_MESSAGE_DURATION:J

    .line 202
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Lmiui/app/ListFragment;-><init>()V

    .line 103
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 141
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->userFolderList:Z

    .line 156
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 168
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z

    .line 169
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$1;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 190
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$2;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 204
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    .line 210
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 214
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    .line 217
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z

    .line 219
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z

    .line 220
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z

    .line 756
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    .line 949
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$7;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    .line 1315
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$10;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$10;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .line 228
    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_list-state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_choice-mode-key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->CHOICE_MODE_KEY:Ljava/lang/String;

    .line 233
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->userFolderList:Z

    .line 234
    return-void

    :cond_0
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lmiui/app/ListFragment;-><init>()V

    .line 103
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 141
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->userFolderList:Z

    .line 156
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 168
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z

    .line 169
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$1;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$1;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 190
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$2;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 204
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    .line 210
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 214
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    .line 217
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z

    .line 219
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z

    .line 220
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z

    .line 756
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    .line 949
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$7;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    .line 1315
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$10;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$10;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/kingsoft/mail/ui/ConversationSetObserver;

    .line 238
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_list-state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_choice-mode-key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->CHOICE_MODE_KEY:Ljava/lang/String;

    .line 242
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->userFolderList:Z

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMenuClosing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCursorChanged:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/ConversationListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/kingsoft/mail/ui/ConversationListFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectionModeExitedTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1300()J
    .locals 2

    .prologue
    .line 96
    sget-wide v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/ConversationListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setSwipeAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z

    return v0
.end method

.method static synthetic access$402(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/ConversationListFragment;)Lcom/kingsoft/mail/ui/ConversationListCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/ConversationListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z

    return v0
.end method

.method static synthetic access$602(Lcom/kingsoft/mail/ui/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/ConversationListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationListFragment;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    return v0
.end method

.method private checkSyncStatus()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1274
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    .line 1277
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f100016

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v3

    .line 1278
    .local v3, "isExchange":Z
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    if-nez v1, :cond_0

    move v2, v7

    :goto_0
    iget v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->displayFooterView(Lcom/kingsoft/mail/browse/ConversationCursor;ZZILcom/kingsoft/mail/providers/Folder;)Z

    move-result v6

    .line 1280
    .local v6, "showFooter":Z
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setFooterVisibility(Z)V

    .line 1282
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isSyncInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "CLF.checkSyncStatus still syncing"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1284
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListView;->showSyncStatusBar()V

    .line 1286
    const/4 v7, 0x1

    .line 1292
    :goto_1
    return v7

    .line 1278
    .end local v6    # "showFooter":Z
    :cond_0
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->isSearch()Z

    move-result v2

    goto :goto_0

    .line 1290
    .restart local v6    # "showFooter":Z
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "CLF.checkSyncStatus done syncing"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1291
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListView;->onSyncFinished()V

    goto :goto_1
.end method

.method private clearChoicesAndActivated()V
    .locals 4

    .prologue
    .line 903
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v0

    .line 904
    .local v0, "currentSelected":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    .line 907
    :cond_0
    return-void
.end method

.method private ensureActionbarHasInited()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-nez v0, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActivity;->getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->initializeActionBar(Landroid/app/ActionBar;)Lcom/kingsoft/mail/ui/MailActionBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    .line 573
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ViewMode;->addListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    goto :goto_0
.end method

.method private static final getDefaultChoiceMode(Z)I
    .locals 1
    .param p0, "isTablet"    # Z

    .prologue
    .line 475
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/kingsoft/mail/ConversationListContext;I)Lcom/kingsoft/mail/ui/ConversationListFragment;
    .locals 4
    .param p0, "viewContext"    # Lcom/kingsoft/mail/ConversationListContext;
    .param p1, "mode"    # I

    .prologue
    .line 294
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationListFragment;

    invoke-direct {v1, p1}, Lcom/kingsoft/mail/ui/ConversationListFragment;-><init>(I)V

    .line 295
    .local v1, "fragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 297
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation-list"

    invoke-virtual {p0}, Lcom/kingsoft/mail/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 299
    return-object v1
.end method

.method private onCursorUpdated()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1182
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-nez v6, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v2

    .line 1189
    .local v2, "newCursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_6

    move v1, v5

    .line 1190
    .local v1, "listcursorflag":Z
    :goto_1
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->saveLastScrolledPosition()V

    .line 1195
    :cond_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->isSearch()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1196
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 1202
    :goto_2
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1207
    if-nez v2, :cond_8

    move v3, v4

    .line 1208
    .local v3, "newCursorHash":I
    :goto_3
    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    if-ne v6, v3, :cond_3

    iget v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    if-eqz v6, :cond_3

    .line 1209
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 1211
    :cond_3
    iput v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    .line 1213
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    if-eqz v1, :cond_4

    .line 1214
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->markContentsSeen()V

    .line 1215
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->restoreLastScrolledPosition()V

    .line 1216
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 1217
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v6, :cond_4

    .line 1218
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SwipeableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/kingsoft/mail/ui/ConversationListFragment$9;

    invoke-direct {v7, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$9;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1231
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getCurrentConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 1232
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_5

    .line 1233
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 1235
    iget v6, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    invoke-virtual {p0, v6, v5}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setSelected(IZ)V

    .line 1239
    :cond_5
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    invoke-virtual {v6, v2}, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->onCursorUpdated(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 1241
    if-eqz v2, :cond_0

    .line 1242
    sget-object v6, Lcom/kingsoft/mail/ui/ConversationListFragment$11;->$SwitchMap$com$kingsoft$mail$browse$ConversationCursor$SearchState:[I

    iget-object v7, v2, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1250
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showSearchHeader(Z)V

    goto/16 :goto_0

    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v1    # "listcursorflag":Z
    .end local v3    # "newCursorHash":I
    :cond_6
    move v1, v4

    .line 1189
    goto/16 :goto_1

    .line 1198
    .restart local v1    # "listcursorflag":Z
    :cond_7
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v6, v5}, Lcom/kingsoft/mail/ui/SwipeableListView;->enableSwipe(Z)V

    goto :goto_2

    .line 1207
    :cond_8
    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->hashCode()I

    move-result v3

    goto :goto_3

    .line 1247
    .restart local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v3    # "newCursorHash":I
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showSearchHeader(Z)V

    goto/16 :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onFolderStatusUpdated()V
    .locals 3

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->checkSyncStatus()Z

    .line 1115
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 1120
    .local v0, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isSearch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 1122
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 1125
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private final setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setChoiceMode(I)V

    .line 621
    return-void
.end method

.method private setSwipeAction()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1130
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-static {v2}, Lcom/kingsoft/mail/providers/Settings;->getSwipeSetting(Lcom/kingsoft/mail/providers/Settings;)I

    move-result v1

    .line 1131
    .local v1, "swipeSetting":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchBarController()Lcom/kingsoft/mail/maillist/controller/SearchBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/maillist/controller/SearchBarController;->isExpand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 1174
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setCurrentAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 1175
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setCurrentFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 1176
    return-void

    .line 1138
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 1139
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-static {v2}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1141
    :cond_2
    const v0, 0x7f0c026d

    .line 1172
    .local v0, "action":I
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeAction(I)V

    goto :goto_0

    .line 1142
    .end local v0    # "action":I
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v2, :cond_4

    .line 1143
    const v0, 0x7f0c0271

    .restart local v0    # "action":I
    goto :goto_1

    .line 1146
    .end local v0    # "action":I
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 1168
    const v0, 0x7f0c026d

    .restart local v0    # "action":I
    goto :goto_1

    .line 1148
    .end local v0    # "action":I
    :pswitch_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1149
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1150
    const v0, 0x7f0c0270

    .line 1151
    .restart local v0    # "action":I
    goto :goto_1

    .line 1152
    .end local v0    # "action":I
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1154
    const v0, 0x7f0c0271

    .line 1155
    .restart local v0    # "action":I
    goto :goto_1

    .line 1165
    .end local v0    # "action":I
    :cond_6
    :pswitch_1
    const v0, 0x7f0c016d

    .line 1166
    .restart local v0    # "action":I
    goto :goto_1

    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showList()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setEmptyView(Landroid/view/View;)V

    .line 916
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/FolderController;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V

    .line 917
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onConversationListStatusUpdated()V

    .line 918
    return-void
.end method

.method private viewConversation(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 927
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "ConversationListFragment.viewConversation(%d)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 929
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationCursor;

    .line 932
    .local v1, "cursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-nez v1, :cond_0

    .line 933
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to open conv at cursor pos=%s cursor=%s getPositionOffset=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 947
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 944
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getPosition()I

    move-result v2

    iput v2, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    .line 945
    iget v2, v0, Lcom/kingsoft/mail/providers/Conversation;->position:I

    invoke-virtual {p0, v2, v7}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setSelected(IZ)V

    .line 946
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v2, v0, v6, v6}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1313
    return-void
.end method

.method public commitDestructiveActions(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->commitDestructiveActions(Z)V

    .line 1261
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    return-object v0
.end method

.method public getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationListView()Lcom/kingsoft/mail/ui/ConversationListView;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    return-object v0
.end method

.method public invisibleSearchResultHeader()V
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showSearchHeader(Z)V

    .line 1373
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    .line 898
    .local v0, "adapter":Lcom/kingsoft/mail/ui/AnimatedAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super/range {p0 .. p1}, Lmiui/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isInitMenuBar:Z

    .line 306
    sget-wide v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gez v2, :cond_0

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->sSelectionModeAnimationDuration:J

    .line 320
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 321
    .local v10, "activity":Landroid/app/Activity;
    instance-of v2, v10, Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v2, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "ConversationListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move-object v2, v10

    .line 325
    check-cast v2, Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mCallbacks:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getErrorListener()Lcom/kingsoft/mail/ui/ErrorListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mErrorListener:Lcom/kingsoft/mail/ui/ErrorListener;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v11

    .line 334
    .local v11, "activityContext":Landroid/content/Context;
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040063

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/browse/ConversationListFooterView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationListFooterView;->getFooterViewController()Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->setClickListener(Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController$FooterViewClickListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->setConversationListController(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationListFooterView;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kingsoft/mail/browse/ConversationListFooterView;->isSearch:Z

    .line 347
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/ConversationListView;->setActivity(Lcom/kingsoft/mail/ui/ControllableActivity;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v4

    .line 349
    .local v4, "conversationCursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v15

    .line 355
    .local v15, "manager":Landroid/app/LoaderManager;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->userFolderList:Z

    if-nez v2, :cond_5

    .line 356
    const/4 v13, 0x0

    .line 361
    .local v13, "helper":Lcom/kingsoft/mail/ui/ConversationListHelper;
    :goto_0
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v13, v10, v2, v3}, Lcom/kingsoft/mail/ui/ConversationListHelper;->makeConversationListSpecialViews(Landroid/content/Context;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/providers/Account;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    .line 365
    .local v9, "specialItemViews":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/ConversationSpecialItemView;>;"
    :goto_1
    if-eqz v9, :cond_7

    .line 367
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;

    .line 368
    .local v17, "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v15, v1}, Lcom/kingsoft/mail/ui/ConversationSpecialItemView;->bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V

    .line 370
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    if-eqz v2, :cond_4

    .line 371
    check-cast v17, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    .end local v17    # "view":Lcom/kingsoft/mail/ui/ConversationSpecialItemView;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderListView:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    goto :goto_2

    .line 358
    .end local v9    # "specialItemViews":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/ConversationSpecialItemView;>;"
    .end local v13    # "helper":Lcom/kingsoft/mail/ui/ConversationListHelper;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationListHelper()Lcom/kingsoft/mail/ui/ConversationListHelper;

    move-result-object v13

    .restart local v13    # "helper":Lcom/kingsoft/mail/ui/ConversationListHelper;
    goto :goto_0

    .line 361
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 377
    .restart local v9    # "specialItemViews":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/ui/ConversationSpecialItemView;>;"
    :cond_7
    new-instance v2, Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListListener:Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-direct/range {v2 .. v9}, Lcom/kingsoft/mail/ui/AnimatedAdapter;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/ui/ConversationSelectionSet;Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/AnimatedAdapter$ConversationListListener;Lcom/kingsoft/mail/ui/SwipeableListView;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterView:Lcom/kingsoft/mail/browse/ConversationListFooterView;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->addFooter(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getSelectedSet()Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSelectionSet(Lcom/kingsoft/mail/ui/ConversationSelectionSet;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setFooterVisibility(Z)V

    .line 385
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment$3;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/FolderObserver;->initialize(Lcom/kingsoft/mail/ui/FolderController;)Lcom/kingsoft/mail/providers/Folder;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v2

    sput-boolean v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    .line 397
    sget-boolean v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    if-nez v2, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mDrawerStateChangeListener:Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V

    .line 400
    :cond_8
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/kingsoft/mail/ui/ConversationListFragment$ConversationCursorObserver;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/ui/ConversationListFragment$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Lcom/kingsoft/mail/ui/ConversationUpdater;->registerConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onViewModeChanged(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/ui/ViewMode;->addListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 444
    :cond_9
    :goto_3
    return-void

    .line 414
    :cond_a
    if-nez v4, :cond_d

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorHash:I

    .line 417
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->isRefreshReady()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 418
    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->sync()V

    .line 423
    :cond_b
    sget-boolean v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getDefaultChoiceMode(Z)I

    move-result v12

    .line 424
    .local v12, "choice":I
    if-eqz p1, :cond_c

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->CHOICE_MODE_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->clearChoices()V

    .line 434
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->showList()V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getPendingToastOperation()Lcom/kingsoft/mail/ui/ToastBarOperation;

    move-result-object v16

    .line 439
    .local v16, "pendingOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    if-eqz v16, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->setPendingToastOperation(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->onUndoAvailable(Lcom/kingsoft/mail/ui/ToastBarOperation;)V

    goto :goto_3

    .line 414
    .end local v12    # "choice":I
    .end local v16    # "pendingOp":Lcom/kingsoft/mail/ui/ToastBarOperation;
    :cond_d
    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public onConversationListStatusUpdated()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onCursorUpdated()V

    .line 1109
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onFolderStatusUpdated()V

    .line 1110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 484
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 486
    const v2, 0x7f1100bb

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setThemeRes(I)V

    .line 487
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/MailActivity;->getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 489
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 490
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/kingsoft/mail/ui/ConversationListFragment;->TIMESTAMP_UPDATE_INTERVAL:I

    .line 491
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationListFragment$5;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$5;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    .line 500
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 501
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation-list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    .line 502
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v2, v2, Lcom/kingsoft/mail/ConversationListContext;->account:Lcom/kingsoft/mail/providers/Account;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 504
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setRetainInstance(Z)V

    .line 506
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 448
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 449
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/ListFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 452
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mIsAnimation:Z

    .line 453
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 454
    .local v0, "anim":Landroid/animation/Animator;
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationListFragment$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$4;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->ensureActionbarHasInited()V

    .line 558
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->getOptionsMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 559
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 560
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0}, Lmiui/app/ListFragment;->onDestroy()V

    .line 650
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->destroy()V

    .line 657
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    .line 659
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/ui/ViewMode;->removeListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    .line 662
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ViewMode;->removeListener(Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 668
    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->unregisterConversationListObserver(Landroid/database/DataSetObserver;)V

    .line 672
    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationCursorObserver:Landroid/database/DataSetObserver;

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->unbind()V

    .line 676
    iput-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 679
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->cleanup()V

    .line 680
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V

    .line 681
    invoke-super {p0}, Lmiui/app/ListFragment;->onDestroyView()V

    .line 682
    return-void
.end method

.method public onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 7
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1049
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {p1, v4}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1050
    :cond_0
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 1053
    :cond_1
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 1055
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setSwipeAction()V

    .line 1057
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v4, :cond_2

    .line 1092
    :goto_0
    return-void

    .line 1061
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v4, :cond_4

    .line 1062
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->isCombineInbox()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-static {}, Lcom/kingsoft/mail/ui/MailActionBarView;->isHideAllActionMenu()Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    .line 1065
    .local v1, "flag":Z
    :goto_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f100016

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    .line 1068
    .local v0, "draftflag":Z
    :goto_2
    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    .line 1069
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iput-boolean v2, v4, Lcom/kingsoft/mail/ui/SwipeableListView;->mRefreshflag:Z

    .line 1075
    .end local v0    # "draftflag":Z
    .end local v1    # "flag":Z
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->setFolder(Lcom/kingsoft/mail/providers/Folder;)V

    .line 1076
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->wasSyncSuccessful()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1077
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mErrorListener:Lcom/kingsoft/mail/ui/ErrorListener;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-interface {v4, v5, v3}, Lcom/kingsoft/mail/ui/ErrorListener;->onError(Lcom/kingsoft/mail/providers/Folder;Z)V

    .line 1078
    iget-boolean v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    if-nez v3, :cond_5

    .line 1079
    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    .line 1088
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onFolderStatusUpdated()V

    .line 1091
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationItemViewModel;->onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 1062
    goto :goto_1

    .restart local v1    # "flag":Z
    :cond_7
    move v0, v3

    .line 1065
    goto :goto_2

    .line 1071
    .restart local v0    # "draftflag":Z
    :cond_8
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iput-boolean v3, v4, Lcom/kingsoft/mail/ui/SwipeableListView;->mRefreshflag:Z

    goto :goto_3

    .line 1082
    .end local v0    # "draftflag":Z
    .end local v1    # "flag":Z
    :cond_9
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    if-eqz v2, :cond_5

    .line 1083
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->isActionBarShowError:Z

    goto :goto_4
.end method

.method public onFooterViewErrorActionClick(Lcom/kingsoft/mail/providers/Folder;I)V
    .locals 0
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "errorStatus"    # I

    .prologue
    .line 266
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onFooterViewLoadMoreClick(Lcom/kingsoft/mail/providers/Folder;)V

    .line 271
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 526
    const v1, 0x7f040062

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeBackView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    .line 527
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeBackView;->setController(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 528
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 529
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/ConversationListView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    .line 531
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/ConversationListView;->setConversationContext(Lcom/kingsoft/mail/ConversationListContext;)V

    .line 532
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/SwipeableListView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 533
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setHeaderDividersEnabled(Z)V

    .line 534
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 535
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->enableSwipe(Z)V

    .line 536
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipedListener(Lcom/kingsoft/mail/ui/SwipeableListView$ListItemSwipedListener;)V

    .line 537
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/SwipeableListView;->setOnTouchEventDispatchListener(Lcom/kingsoft/mail/ui/SwipeableListView$OnTouchEventDispatchListener;)V

    .line 539
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    const v2, 0x7f0c0181

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/SwipeBackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;

    .line 540
    .local v0, "searchStatusView":Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;
    invoke-virtual {v0}, Lcom/kingsoft/mail/maillist/view/ConversationListSearchStatusView;->getController()Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    .line 542
    invoke-virtual {p0, p3}, Lcom/kingsoft/mail/ui/ConversationListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 543
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mRootView:Lcom/kingsoft/mail/ui/SwipeBackView;

    return-object v1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 711
    .local v0, "conversationCursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    sget-object v6, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    if-eq v3, v6, :cond_0

    move v3, v4

    .line 734
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v3

    .line 714
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    sget-boolean v3, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    if-eqz v3, :cond_1

    move v3, v4

    .line 716
    goto :goto_0

    .line 718
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 719
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 720
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 721
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v6, v7}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    .line 724
    instance-of v3, p2, Lcom/kingsoft/mail/browse/ConversationItemView;

    if-nez v3, :cond_2

    move v3, v4

    .line 725
    goto :goto_0

    .line 727
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v1

    .line 728
    .local v1, "enterCabMode":Z
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    move-object v3, p2

    check-cast v3, Lcom/kingsoft/mail/browse/ConversationItemView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationItemView;->isInConversationSet()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v5

    .line 729
    .local v2, "exitCabMode":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_5

    .line 730
    :cond_3
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    .line 734
    :goto_2
    check-cast p2, Lcom/kingsoft/mail/browse/ConversationItemView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/ConversationItemView;->toggleSelectedStateOrBeginDrag()Z

    move-result v3

    goto :goto_0

    .end local v2    # "exitCabMode":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    move v2, v4

    .line 728
    goto :goto_1

    .line 732
    .restart local v2    # "exitCabMode":Z
    :cond_5
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderListView:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolderListView:Lcom/kingsoft/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/ui/NestedFolderTeaserView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->isAnimateDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 796
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 763
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->isDraftOpenClickAgain()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setDraftOpenClickAgain(Z)V

    .line 765
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->snapChild(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 773
    :goto_1
    instance-of v2, p2, Lcom/kingsoft/mail/browse/ToggleableItem;

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 775
    .local v0, "inCabMode":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 776
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    if-nez v2, :cond_2

    .line 777
    check-cast p2, Lcom/kingsoft/mail/browse/ToggleableItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-interface {p2}, Lcom/kingsoft/mail/browse/ToggleableItem;->toggleSelectedState()Z

    .line 779
    :cond_2
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    .line 795
    :goto_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/ConversationListFragment;->commitDestructiveActions(Z)V

    goto :goto_0

    .line 767
    .end local v0    # "inCabMode":Z
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 768
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 769
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 770
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 774
    goto :goto_2

    .line 781
    .restart local v0    # "inCabMode":Z
    :cond_5
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/kingsoft/mail/ui/SwipeHelper;->draftOpen:Z

    if-nez v2, :cond_6

    .line 782
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p3, v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->viewConversation(I)V

    .line 784
    :cond_6
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    goto :goto_3
.end method

.method public onListItemSwiped(Ljava/util/Collection;)V
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
    .line 1265
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdater:Lcom/kingsoft/mail/ui/ConversationUpdater;

    invoke-interface {v0, p1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->showNextConversation(Ljava/util/Collection;)V

    .line 1266
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->ensureActionbarHasInited()V

    .line 593
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c027e

    if-ne v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->startSearch()V

    .line 595
    const/4 v0, 0x1

    .line 598
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 848
    invoke-super {p0}, Lmiui/app/ListFragment;->onPause()V

    .line 849
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/kingsoft/mail/ui/ConversationSetObserver;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->removeObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V

    .line 850
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->saveLastScrolledPosition()V

    .line 851
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeCurrentView()Lcom/kingsoft/mail/ui/SwipeableItemView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->snapChildWithNoAnimate(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 852
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setSwipeCurrentView(Lcom/kingsoft/mail/ui/SwipeableItemView;)V

    .line 853
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getAnimatingViews()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 854
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getDraftingItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 855
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->setConversationID(J)V

    .line 856
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->ensureActionbarHasInited()V

    .line 587
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 588
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 550
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 821
    invoke-super {p0}, Lmiui/app/ListFragment;->onResume()V

    .line 824
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 826
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 827
    .local v0, "conversationCursor":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 829
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->restoreLastScrolledPosition()V

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mSelectedSet:Lcom/kingsoft/mail/ui/ConversationSelectionSet;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationSetObserver:Lcom/kingsoft/mail/ui/ConversationSetObserver;

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/ui/ConversationSelectionSet;->addObserver(Lcom/kingsoft/mail/ui/ConversationSetObserver;)V

    .line 844
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 860
    invoke-super {p0, p1}, Lmiui/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 861
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LIST_STATE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 863
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->CHOICE_MODE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->saveSpecialItemInstanceState(Landroid/os/Bundle;)V

    .line 869
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 873
    invoke-super {p0}, Lmiui/app/ListFragment;->onStart()V

    .line 874
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 879
    invoke-super {p0}, Lmiui/app/ListFragment;->onStop()V

    .line 880
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mUpdateTimestampsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method public onTouchEventDispatch(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->needShieldNextClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationListFragment$6;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/ConversationListFragment$6;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    invoke-super {p0, p1, p2}, Lmiui/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 581
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->ensureActionbarHasInited()V

    .line 582
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 1
    .param p1, "newMode"    # I

    .prologue
    .line 885
    sget-boolean v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    if-eqz v0, :cond_0

    .line 886
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->clearChoicesAndActivated()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFooterViewController:Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListFooterViewController;->onViewModeChanged(I)V

    .line 894
    :cond_1
    return-void
.end method

.method public requestDelete(ILjava/util/Collection;Lcom/kingsoft/mail/ui/DestructiveAction;)V
    .locals 7
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
    .line 1024
    .local p2, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 1025
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/kingsoft/mail/providers/Conversation;->localDeleteOnUpdate:Z

    goto :goto_0

    .line 1027
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    new-instance v3, Lcom/kingsoft/mail/ui/ConversationListFragment$8;

    invoke-direct {v3, p0, p3}, Lcom/kingsoft/mail/ui/ConversationListFragment$8;-><init>(Lcom/kingsoft/mail/ui/ConversationListFragment;Lcom/kingsoft/mail/ui/DestructiveAction;)V

    .line 1033
    .local v3, "listener":Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/ui/SwipeableListView;

    .line 1034
    .local v2, "listView":Lcom/kingsoft/mail/ui/SwipeableListView;
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SwipeableListView;->getSwipeAction()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 1035
    invoke-virtual {v2, p2, v3}, Lcom/kingsoft/mail/ui/SwipeableListView;->destroyItems(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1037
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "ConversationListFragment.requestDelete: listView failed to destroy items."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1039
    invoke-interface {p3}, Lcom/kingsoft/mail/ui/DestructiveAction;->performAction()V

    .line 1046
    :cond_1
    :goto_1
    return-void

    .line 1045
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v4, p2, v3}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->delete(Ljava/util/Collection;Lcom/kingsoft/mail/ui/SwipeableListView$ListItemsRemovedListener;)V

    goto :goto_1
.end method

.method public requestListRefresh()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 1013
    return-void
.end method

.method public resetSearchScrolledPosition()V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->setConversationListScrollPosition(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1367
    return-void
.end method

.method protected restoreLastScrolledPosition()V
    .locals 4

    .prologue
    .line 1353
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_1

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->getConversationListScrollPosition(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1357
    .local v1, "savedState":Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v2, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1360
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mScrollPositionRestored:Z

    .line 1362
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "savedState":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method public revertChoiceMode()V
    .locals 1

    .prologue
    .line 640
    sget-boolean v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 643
    :cond_0
    sget-boolean v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getDefaultChoiceMode(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    goto :goto_0
.end method

.method protected saveLastScrolledPosition()V
    .locals 4

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1347
    .local v0, "savedState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->setConversationListScrollPosition(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public setChoiceNone()V
    .locals 1

    .prologue
    .line 628
    sget-boolean v0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mTabletDevice:Z

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->clearChoicesAndActivated()V

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public setRawSelected(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "different"    # Z

    .prologue
    .line 985
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 989
    :cond_0
    if-eqz p2, :cond_1

    .line 990
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SwipeableListView;->smoothScrollToPosition(I)V

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public setSelected(IZ)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "different"    # Z

    .prologue
    .line 967
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListView:Lcom/kingsoft/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 975
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->getAnimatedAdapter()Lcom/kingsoft/mail/ui/AnimatedAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->getPositionOffset(I)I

    move-result v1

    add-int v0, p1, v1

    .line 974
    .local v0, "position":I
    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/mail/ui/ConversationListFragment;->setRawSelected(IZ)V

    goto :goto_0
.end method

.method public showSearchHeader(Z)V
    .locals 1
    .param p1, "showHeader"    # Z

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListSearchController:Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/maillist/controller/ConversationListSearchController;->setSearchViewVisible(Z)V

    .line 1379
    return-void
.end method

.method protected showSyncStatusBar()V
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mConversationListView:Lcom/kingsoft/mail/ui/ConversationListView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListView;->showSyncStatusBar()V

    .line 1302
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Lmiui/app/ListFragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    if-nez v2, :cond_0

    .line 521
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 514
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 516
    const-string/jumbo v2, " mListAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mListAdapter:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    const-string/jumbo v2, " folder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationListFragment;->mViewContext:Lcom/kingsoft/mail/ConversationListContext;

    iget-object v2, v2, Lcom/kingsoft/mail/ConversationListContext;->folder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected tryHideSyncStatus()Z
    .locals 1

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->checkSyncStatus()Z

    move-result v0

    return v0
.end method
