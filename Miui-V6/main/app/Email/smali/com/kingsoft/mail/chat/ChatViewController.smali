.class public Lcom/kingsoft/mail/chat/ChatViewController;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;,
        Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;,
        Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
    }
.end annotation


# static fields
.field private static mAccount:Lcom/kingsoft/mail/providers/Account;

.field private static mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

.field private static selectedItem:I


# instance fields
.field private final actionBarFromLongClick:I

.field private final actionBarFromMenuBtn:I

.field private chatViewReady:Z

.field private covId:Ljava/lang/Long;

.field private loadingView:Lmiui/widget/ProgressBar;

.field private mAccountKey:J

.field private mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field private mActionBarFrom:I

.field private mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

.field private mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

.field public mBgHandler:Landroid/os/Handler;

.field public mBgHandlerThread:Landroid/os/HandlerThread;

.field private mCc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

.field private mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

.field private mContext:Landroid/content/Context;

.field private mConvListCallback:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

.field private mDataInitialized:Z

.field private mEditTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mEnableMoveTo:Z

.field private mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

.field private mFillTouchListener:Landroid/view/View$OnTouchListener;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimation:Z

.field private mKeyboardVisible:Z

.field private mLastMotionY:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mListViewScrollStateChanged:Z

.field private mListViewSmoothScroll:Z

.field private mMailBoxKey:J

.field private mMoreBtnListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

.field private mOnEditTextSizeChangedListenr:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

.field private mQRButton:Landroid/widget/ImageView;

.field private mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

.field private mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;

.field private mRawsubject:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mScrollState:I

.field private mSelectedContentView:Landroid/view/View;

.field private mSmoothScrollHandler:Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;

.field private mSwitchDoor:Landroid/widget/ImageView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field final method:Ljava/lang/String;

.field private preMode:I

.field uiRunnable:Ljava/lang/Runnable;

.field private updateReceiver:Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

.field public updateRunnable:Ljava/lang/Runnable;

.field private viewMessage:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/chat/ChatViewControllerCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    .line 161
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->actionBarFromLongClick:I

    .line 164
    iput v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->actionBarFromMenuBtn:I

    .line 165
    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->preMode:I

    .line 166
    iput v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I

    .line 169
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->viewMessage:Z

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mHandler:Landroid/os/Handler;

    .line 178
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mIsAnimation:Z

    .line 179
    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mDataInitialized:Z

    .line 182
    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mScrollState:I

    .line 314
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$3;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateRunnable:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$4;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$4;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->uiRunnable:Ljava/lang/Runnable;

    .line 442
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$7;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$7;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMoreBtnListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    .line 468
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$8;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$8;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTextWatcher:Landroid/text/TextWatcher;

    .line 485
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$9;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$9;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mOnEditTextSizeChangedListenr:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    .line 512
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$10;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$10;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEditTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1045
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$11;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$11;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1073
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$12;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$12;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1124
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$13;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$13;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillTouchListener:Landroid/view/View$OnTouchListener;

    .line 1312
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$15;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/ChatViewController$15;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1446
    const-string/jumbo v0, "send_message"

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->method:Ljava/lang/String;

    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTo:Ljava/util/List;

    .line 1448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mCc:Ljava/util/List;

    .line 185
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    .line 186
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/kingsoft/mail/chat/DelayedTaskManager;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    .line 189
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->resume()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->initData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->smoothScrollToPosition(IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mIsAnimation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatFillView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/mail/chat/ChatViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyBottomBar;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/QuickReplyEditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/kingsoft/mail/chat/ChatViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->getFocusIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/kingsoft/mail/chat/ChatViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewControllerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/compose/AnswerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/compose/AnswerDialog;)Lcom/kingsoft/mail/compose/AnswerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Lcom/kingsoft/mail/compose/AnswerDialog;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQuickReplayDialog:Lcom/kingsoft/mail/compose/AnswerDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/kingsoft/mail/chat/ChatViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mScrollState:I

    return p1
.end method

.method static synthetic access$2600()Lcom/kingsoft/mail/chat/DelayedTaskManager;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/kingsoft/mail/chat/ChatViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewSmoothScroll:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/kingsoft/mail/chat/ChatViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollStateChanged:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/kingsoft/mail/chat/ChatViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollStateChanged:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/kingsoft/mail/chat/ChatViewController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->showFillLayout(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/kingsoft/mail/chat/ChatViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I

    return v0
.end method

.method static synthetic access$3002(Lcom/kingsoft/mail/chat/ChatViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/kingsoft/mail/chat/ChatViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$3200(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$3300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/AbstractActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/kingsoft/mail/chat/ChatViewController;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/webkit/WebView;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/chat/ChatViewController;->loadUrl(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->renderView()V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/providers/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->sendEmail(Lcom/kingsoft/mail/providers/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/chat/ChatViewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/chat/ChatViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I

    return v0
.end method

.method static synthetic access$802(Lcom/kingsoft/mail/chat/ChatViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I

    return p1
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/chat/ChatViewController;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private addAddressToList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1584
    :cond_0
    return-void

    .line 1578
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1580
    .local v1, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1582
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mCc:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1485
    return-void

    .line 1484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addRecipients(Ljava/util/Set;[Ljava/lang/String;)V
    .locals 8
    .param p2, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1528
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1532
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1534
    .local v4, "recipientAddress":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1535
    const-string/jumbo v5, "\"\""

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\t"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1538
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "recipientAddress":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addToAddresses(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1556
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTo:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V

    .line 1557
    return-void
.end method

.method private calcFillLayoutParams(IZZZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "showKeyboard"    # Z
    .param p3, "isLandOrientation"    # Z
    .param p4, "tabletUi"    # Z

    .prologue
    .line 1177
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$14;

    move-object v1, p0

    move v2, p2

    move v3, p4

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/chat/ChatViewController$14;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;ZZIZ)V

    sget v1, Lcom/kingsoft/mail/chat/ChatViewUtils;->DELAY_TIME_FOR_SELECTED:I

    int-to-long v1, v1

    invoke-virtual {v6, v0, v1, v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1310
    return-void
.end method

.method private destroyCursorLoader()V
    .locals 8

    .prologue
    .line 1660
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 1661
    sget-object v5, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid context"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1675
    :cond_0
    return-void

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1665
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 1666
    .local v3, "lm":Landroid/app/LoaderManager;
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    if-gt v2, v5, :cond_0

    .line 1667
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v5, v2}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v1

    .line 1668
    .local v1, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v5

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 1669
    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v5

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v4

    .line 1670
    .local v4, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    instance-of v5, v4, Lcom/kingsoft/mail/browse/AttachmentLoader;

    if-eqz v5, :cond_2

    .line 1671
    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v5

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Message;->attachmentListUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1666
    .end local v4    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 1698
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method private getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    invoke-interface {v0}, Lcom/kingsoft/mail/chat/ChatViewControllerCallback;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getFocusIndex()I
    .locals 2

    .prologue
    .line 590
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getFocusIndex()I

    move-result v0

    .line 591
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 594
    :cond_0
    return v0
.end method

.method private getViewConversation(Lcom/kingsoft/mail/providers/Folder;J)Lcom/kingsoft/mail/providers/Conversation;
    .locals 8
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p2, "msgKey"    # J

    .prologue
    const/4 v3, 0x0

    .line 1419
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Folder;->conversationListUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1420
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "messageKey"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1421
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1423
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1433
    :goto_0
    return-object v3

    .line 1427
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    new-instance v3, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v3, v6}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hideFillLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatFillView;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatFillView;->setClipRect(Landroid/graphics/Rect;)V

    .line 1171
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/chat/ChatFillView;->setIsSendFromMyself(Z)V

    .line 1172
    iput-boolean v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollStateChanged:Z

    .line 1173
    iput-boolean v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewSmoothScroll:Z

    .line 1174
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 578
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 579
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 582
    :cond_0
    return-void
.end method

.method private initCursorLoader()V
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    if-nez v0, :cond_0

    .line 1681
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ChatMsgViewAdapter is not ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1685
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initData()V
    .locals 7

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mDataInitialized:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mDataInitialized:Z

    .line 288
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->receiveInfo()V

    .line 289
    new-instance v0, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/chat/ChatViewController$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSmoothScrollHandler:Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;

    .line 290
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "run-background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 292
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandler:Landroid/os/Handler;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-object v1, v1, Lcom/kingsoft/mail/chat/ChatCache;->rawSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCache;->clear()V

    .line 297
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getAccountKey()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMailBoxKey:J

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/mail/chat/ChatCache;->init(Ljava/lang/String;Landroid/content/Context;JJ)V

    .line 298
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->renderView()V

    goto :goto_0
.end method

.method private initQuickReplyBar()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    .line 257
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->messageEt:Landroid/widget/EditText;

    check-cast v0, Lcom/kingsoft/mail/ui/QuickReplyEditText;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    .line 258
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEditTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mOnEditTextSizeChangedListenr:Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setOnSizeChangedListener(Lcom/kingsoft/mail/ui/QuickReplyEditText$OnEditTextSizeChangedListener;)V

    .line 260
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->replyIv:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRButton:Landroid/widget/ImageView;

    .line 262
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMoreBtnListener:Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setMoreBtnListener(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IMoreBtnListener;)V

    .line 265
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/chat/ChatViewController$2;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setInputBoxHintUpdater(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$IInputBoxHintUpdater;)V

    .line 273
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    .line 222
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->loadingView:Lmiui/widget/ProgressBar;

    .line 223
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->loadingView:Lmiui/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/chat/ChatFillView;

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    .line 226
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->initQuickReplyBar()V

    .line 227
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mTouchSlop:I

    .line 228
    return-void
.end method

.method private initializeActionBar(Landroid/app/ActionBar;Lcom/kingsoft/mail/ui/ControllableActivity;)Lcom/kingsoft/mail/ui/MailActionBarView;
    .locals 10
    .param p1, "actionBar"    # Landroid/app/ActionBar;
    .param p2, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1725
    if-nez p1, :cond_0

    move-object v6, v7

    .line 1772
    .end local p2    # "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    :goto_0
    return-object v6

    .line 1728
    .restart local p2    # "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    :cond_0
    check-cast p2, Lcom/kingsoft/mail/ui/MailActivity;

    .end local p2    # "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    invoke-virtual {p2}, Lcom/kingsoft/mail/ui/MailActivity;->getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 1729
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/kingsoft/mail/ui/SwipeBackView;

    .line 1730
    .local v0, "backView":Lcom/kingsoft/mail/ui/SwipeBackView;
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/ui/SwipeBackView;->setController(Lcom/kingsoft/mail/ui/AbstractActivityController;)V

    .line 1732
    invoke-virtual {p1}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 1733
    invoke-virtual {p1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1735
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04003f

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1737
    .local v3, "ll":Landroid/widget/RelativeLayout;
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1738
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1741
    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1742
    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1743
    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1745
    const v6, 0x7f0c010f

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1747
    .local v4, "senderInfoTitleContainer":Landroid/view/View;
    const v6, 0x7f0c0111

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1749
    .local v5, "senderTitle":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    const v6, 0x7f0c0110

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1752
    .local v1, "home_btn":Landroid/widget/ImageButton;
    new-instance v6, Lcom/kingsoft/mail/chat/ChatViewController$18;

    invoke-direct {v6, p0}, Lcom/kingsoft/mail/chat/ChatViewController$18;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    const v6, 0x7f0c00b5

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSwitchDoor:Landroid/widget/ImageView;

    .line 1759
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSwitchDoor:Landroid/widget/ImageView;

    new-instance v7, Lcom/kingsoft/mail/chat/ChatViewController$19;

    invoke-direct {v7, p0}, Lcom/kingsoft/mail/chat/ChatViewController$19;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1772
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "contentUri"    # Ljava/lang/String;
    .param p3, "mWebView"    # Landroid/webkit/WebView;

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$17;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/kingsoft/mail/chat/ChatViewController$17;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1719
    return-void
.end method

.method private popConfirmDialog(Lcom/kingsoft/mail/providers/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 410
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100137

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100107

    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$6;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/chat/ChatViewController$6;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10036e

    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$5;

    invoke-direct {v2, p0, p1}, Lcom/kingsoft/mail/chat/ChatViewController$5;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;Lcom/kingsoft/mail/providers/Message;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 429
    return-void
.end method

.method private registListener()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 277
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/chat/ChatFillView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 280
    return-void
.end method

.method private registerUpdateReceiver()V
    .locals 3

    .prologue
    .line 1703
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1704
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    const-string/jumbo v1, "com.android.email.action.UPDATE_CHAT_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;)V

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateReceiver:Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

    .line 1707
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateReceiver:Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1708
    return-void
.end method

.method private renderView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 360
    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewAdapter;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    sget-object v5, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/kingsoft/mail/chat/ChatViewAdapter;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCache;Lcom/kingsoft/mail/chat/ChatViewUtils$ChatFragmentOperation;Lcom/kingsoft/mail/providers/Account;)V

    iput-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    .line 361
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->loadingView:Lmiui/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "position":I
    iget v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->preMode:I

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v2

    sget v3, Lcom/kingsoft/mail/chat/ChatViewController;->selectedItem:I

    if-lt v2, v3, :cond_0

    .line 366
    sget v1, Lcom/kingsoft/mail/chat/ChatViewController;->selectedItem:I

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 371
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kingsoft/mail/chat/ChatViewController;->selectedItem:I

    .line 372
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 373
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->updateReplyInputBoxHint(Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 374
    invoke-virtual {p0, v6, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->updateMoreOptions(ILcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 375
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->registListener()V

    .line 376
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->registerUpdateReceiver()V

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z

    .line 378
    return-void

    .line 368
    .end local v0    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method private sendEmail(Lcom/kingsoft/mail/providers/Message;)V
    .locals 6
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    sget-object v3, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mHandler:Landroid/os/Handler;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->createQuickReplyMessage(Landroid/content/Context;ZLandroid/widget/EditText;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/os/Handler;)V

    .line 439
    const-string/jumbo v0, "C18"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private showFillLayout(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "showKeyboard"    # Z

    .prologue
    .line 1151
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v2}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1155
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1156
    .local v0, "isLandOrientation":Z
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    .line 1157
    .local v1, "tabletUi":Z
    if-nez p2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 1158
    :cond_1
    const/16 v2, 0x12c

    sput v2, Lcom/kingsoft/mail/chat/ChatViewUtils;->DELAY_TIME_FOR_SELECTED:I

    .line 1162
    :goto_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->calcFillLayoutParams(IZZZ)V

    goto :goto_0

    .line 1163
    .end local v0    # "isLandOrientation":Z
    .end local v1    # "tabletUi":Z
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1155
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1160
    .restart local v0    # "isLandOrientation":Z
    .restart local v1    # "tabletUi":Z
    :cond_3
    const/16 v2, 0x64

    sput v2, Lcom/kingsoft/mail/chat/ChatViewUtils;->DELAY_TIME_FOR_SELECTED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private smoothScrollToPosition(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "smoothScrollMeassage"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 622
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v3, p1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 626
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 628
    .local v1, "lastIndex":I
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 631
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 632
    .local v2, "pos":I
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 633
    .local v0, "firstPos":I
    sub-int v3, p1, v2

    if-lt v3, v6, :cond_4

    .line 634
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, p1, -0x3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 640
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 641
    iput-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListViewSmoothScroll:Z

    .line 642
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSmoothScrollHandler:Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSmoothScrollHandler:Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Lcom/kingsoft/mail/chat/ChatViewController$SmoothScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 635
    :cond_4
    sub-int v3, v2, p1

    if-lt v3, v6, :cond_2

    sub-int v3, p1, v0

    if-le v3, v5, :cond_2

    .line 637
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private smoothScrollToTail()V
    .locals 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 614
    .local v0, "position":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/chat/ChatViewController;->smoothScrollToPosition(IZ)V

    .line 616
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private viewConversation(Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 5
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    const/4 v4, 0x1

    .line 1404
    if-nez p1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFolder(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 1408
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->getViewConversation(Lcom/kingsoft/mail/providers/Folder;J)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 1409
    .local v0, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFromMe()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    iput-boolean v4, v0, Lcom/kingsoft/mail/providers/Conversation;->isFromMeOnChat:Z

    .line 1415
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mConvListCallback:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onConversationSelected(Lcom/kingsoft/mail/providers/Conversation;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1568
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1570
    invoke-direct {p0, v0, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->addAddressToList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1572
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 1492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 1493
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 1494
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "address":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1499
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 1501
    .local v1, "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 1502
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1503
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    .restart local v0    # "address":Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1507
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1512
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    return-void
.end method

.method public enableLongClick(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->enableLongClick(Z)V

    .line 1877
    :cond_0
    return-void
.end method

.method public ensureActionbarHasInited(Landroid/app/ActionBar;)V
    .locals 4
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1777
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 1782
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 1777
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1780
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    .line 1781
    .local v0, "activity":Lcom/kingsoft/mail/ui/MailActivity;
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->initializeActionBar(Landroid/app/ActionBar;Lcom/kingsoft/mail/ui/ControllableActivity;)Lcom/kingsoft/mail/ui/MailActionBarView;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarView:Lcom/kingsoft/mail/ui/MailActionBarView;

    goto :goto_2
.end method

.method public getAccountKey()J
    .locals 2

    .prologue
    .line 1337
    iget-wide v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    return-wide v0
.end method

.method public getDelayedTaskManager()Lcom/kingsoft/mail/chat/DelayedTaskManager;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    return-object v0
.end method

.method public getMessageFromConversation(Lcom/kingsoft/mail/providers/Conversation;Landroid/content/Context;)Lcom/kingsoft/mail/browse/ConversationMessage;
    .locals 12
    .param p1, "mConversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 656
    const/4 v8, 0x0

    .line 657
    .local v8, "message":Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 661
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lcom/kingsoft/mail/browse/MessageCursor;

    invoke-direct {v6, v7}, Lcom/kingsoft/mail/browse/MessageCursor;-><init>(Landroid/database/Cursor;)V

    .line 663
    .local v6, "cur":Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v8

    .line 671
    :goto_0
    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/MessageCursor;->close()V

    .line 673
    return-object v8

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "There\'s no message id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleBackPress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    iget-boolean v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mKeyboardVisible:Z

    if-eqz v2, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V

    .line 570
    :goto_0
    return v0

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->isMoreOpVisiable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSelectedContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSelectedContentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    .line 567
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 570
    goto :goto_0
.end method

.method initReplyRecipients(Lcom/kingsoft/mail/providers/Message;I)V
    .locals 10
    .param p1, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p2, "action"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1452
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "sentToAddresses":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getReplyToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v4

    .line 1456
    .local v4, "replyToAddresses":[Ljava/lang/String;
    array-length v8, v4

    if-lez v8, :cond_2

    aget-object v3, v4, v9

    .line 1458
    .local v3, "replyToAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getFromAddressesUnescaped()[Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "fromAddresses":[Ljava/lang/String;
    array-length v8, v2

    if-lez v8, :cond_3

    aget-object v1, v2, v9

    .line 1464
    .local v1, "fromAddress":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1465
    move-object v3, v1

    .line 1467
    :cond_0
    if-nez p2, :cond_4

    .line 1468
    invoke-virtual {p0, v1, v3, v5}, Lcom/kingsoft/mail/chat/ChatViewController;->initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 1470
    .local v6, "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/chat/ChatViewController;->addToAddresses(Ljava/util/Collection;)V

    .line 1481
    .end local v6    # "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .end local v1    # "fromAddress":Ljava/lang/String;
    .end local v2    # "fromAddresses":[Ljava/lang/String;
    .end local v3    # "replyToAddress":Ljava/lang/String;
    :cond_2
    move-object v3, v7

    .line 1456
    goto :goto_0

    .restart local v2    # "fromAddresses":[Ljava/lang/String;
    .restart local v3    # "replyToAddress":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 1460
    goto :goto_1

    .line 1471
    .restart local v1    # "fromAddress":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    .line 1472
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1473
    .local v0, "ccAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3, v5}, Lcom/kingsoft/mail/chat/ChatViewController;->initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 1475
    .restart local v6    # "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/chat/ChatViewController;->addToAddresses(Ljava/util/Collection;)V

    .line 1476
    invoke-direct {p0, v0, v5}, Lcom/kingsoft/mail/chat/ChatViewController;->addRecipients(Ljava/util/Set;[Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/kingsoft/mail/chat/ChatViewController;->addRecipients(Ljava/util/Set;[Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0, v0, v6}, Lcom/kingsoft/mail/chat/ChatViewController;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method protected initToRecipients(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .param p1, "fullSenderAddress"    # Ljava/lang/String;
    .param p2, "replyToAddress"    # Ljava/lang/String;
    .param p3, "inToAddresses"    # [Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1588
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 1589
    .local v4, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1591
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1605
    :cond_0
    :goto_0
    return-object v4

    .line 1593
    :cond_1
    array-length v5, p3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/chat/ChatViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p3, v7

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/chat/ChatViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1596
    aget-object v5, p3, v7

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1599
    :cond_2
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1600
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->recipientMatchesThisAccount(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1601
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1599
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isFromMainList()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1345
    iget v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->preMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mIsAnimation:Z

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->initData()V

    .line 250
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 391
    .local v1, "id":I
    const v4, 0x7f0c01c3

    if-eq v1, v4, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->getFocusIndex()I

    move-result v3

    .line 396
    .local v3, "position":I
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 397
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v0, :cond_0

    .line 401
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->getUiMessageFromId(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    .line 402
    .local v2, "message":Lcom/kingsoft/mail/providers/Message;
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->popConfirmDialog(Lcom/kingsoft/mail/providers/Message;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/chat/ChatViewController;->sendEmail(Lcom/kingsoft/mail/providers/Message;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFillLayout:Lcom/kingsoft/mail/chat/ChatFillView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatFillView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideFillLayout()V

    .line 603
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showQuickReply()V

    .line 604
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V

    .line 606
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCallback:Lcom/kingsoft/mail/chat/ChatViewControllerCallback;

    invoke-interface {v1}, Lcom/kingsoft/mail/chat/ChatViewControllerCallback;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    .line 202
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    .line 205
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    .line 206
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMailBoxKey:J

    .line 208
    :cond_0
    invoke-static {}, Lcom/kingsoft/mail/chat/ChatCache;->getInstance()Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    .line 209
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->clear()V

    .line 212
    :cond_1
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mIsAnimation:Z

    .line 232
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 233
    .local v0, "anim":Landroid/animation/Animator;
    new-instance v1, Lcom/kingsoft/mail/chat/ChatViewController$1;

    invoke-direct {v1, p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController$1;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 215
    const v0, 0x7f040040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    .line 216
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->initView()V

    .line 217
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1692
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    if-eqz v0, :cond_0

    .line 1693
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mTaskManager:Lcom/kingsoft/mail/chat/DelayedTaskManager;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/DelayedTaskManager;->stop()V

    .line 1695
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 1611
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V

    .line 1613
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1617
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1621
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    if-eqz v1, :cond_2

    .line 1622
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatCache;->clear()V

    .line 1624
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    if-eqz v1, :cond_2

    .line 1625
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->notifyDataSetChanged()V

    .line 1630
    :cond_2
    iget-boolean v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->chatViewReady:Z

    if-nez v1, :cond_4

    .line 1649
    :cond_3
    :goto_0
    return-void

    .line 1635
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateReceiver:Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

    if-eqz v1, :cond_5

    .line 1636
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->updateReceiver:Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1638
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1639
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v2, 0x7f0c0112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1640
    .local v0, "chatLayout":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1641
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1645
    .end local v0    # "chatLayout":Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isUnreadFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1646
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-wide v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->setItemsAsRead(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCache;J)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1656
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->destroyCursorLoader()V

    .line 1657
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->initCursorLoader()V

    .line 1689
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mConvListCallback:Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    .line 1653
    return-void
.end method

.method public onViewClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 1351
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-nez v0, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1354
    :cond_0
    sput p1, Lcom/kingsoft/mail/chat/ChatViewController;->selectedItem:I

    .line 1355
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kingsoft/mail/providers/Message;->read:Z

    if-nez v1, :cond_1

    .line 1356
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/kingsoft/mail/providers/Message;->id:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCacheStatus(Landroid/content/Context;JIZ)Z

    .line 1358
    :cond_1
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->viewConversation(Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 1359
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getViewType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1360
    const-string/jumbo v1, "C20"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_2
    const-string/jumbo v1, "C19"

    invoke-static {v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewLongClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 1369
    iput v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarFrom:I

    .line 1370
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setFocusIndex(I)V

    .line 1371
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSelectedContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 1373
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setIsLongClick(Z)V

    .line 1377
    .end local v0    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSelectedContentView:Landroid/view/View;

    .line 1379
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController;->updateReplyInputBoxHint(I)V

    .line 1380
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 1382
    .restart local v0    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    if-eqz v0, :cond_1

    .line 1383
    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getGestureSign()Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/chat/ChatCacheItem$GestureSign;->setIsLongClick(Z)V

    .line 1385
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->hideSoftKeyboard()V

    .line 1386
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->showMoreOp()V

    .line 1388
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$16;

    invoke-direct {v2, p0, p2}, Lcom/kingsoft/mail/chat/ChatViewController$16;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1401
    return-void
.end method

.method public preLoad()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 322
    iget-wide v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    iget-wide v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMailBoxKey:J

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRawsubject:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->getChatCursor(JJLcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 323
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v5, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 328
    new-instance v9, Lcom/kingsoft/mail/chat/ChatMessage;

    invoke-direct {v9, v8}, Lcom/kingsoft/mail/chat/ChatMessage;-><init>(Landroid/database/Cursor;)V

    .line 329
    .local v9, "uiMessage":Lcom/kingsoft/mail/providers/Message;
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->isFromMainList()Z

    move-result v3

    invoke-static {v1, v2, v9, v3}, Lcom/kingsoft/mail/chat/ChatCacheItemUtils;->getCacheItemFromMessage(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Z)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v7

    .line 331
    .local v7, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1, v7}, Lcom/kingsoft/mail/chat/ChatCache;->putAtEnd(Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 332
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->isFromMainList()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isFlagLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {v7}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v1

    iput-boolean v6, v1, Lcom/kingsoft/mail/providers/Message;->read:Z

    .line 335
    :cond_2
    iget v1, v9, Lcom/kingsoft/mail/providers/Message;->flagLoaded:I

    if-eq v6, v1, :cond_3

    .line 336
    iget-object v1, v9, Lcom/kingsoft/mail/providers/Message;->serverId:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1

    .line 339
    .end local v7    # "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    .end local v9    # "uiMessage":Lcom/kingsoft/mail/providers/Message;
    :cond_4
    if-eqz v8, :cond_5

    .line 340
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isUnreadFolder()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->isFromMainList()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    iget-wide v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->setItemsAsRead(Landroid/content/Context;Lcom/kingsoft/mail/chat/ChatCache;J)V

    .line 345
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 346
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v0

    .line 348
    .local v0, "body":Lcom/kingsoft/email/callback/MessageBodySync;
    iget-wide v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    iget-wide v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mMailBoxKey:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodyOpenRequests(JJLjava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    .line 350
    .end local v0    # "body":Lcom/kingsoft/email/callback/MessageBodySync;
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/kingsoft/email2/ui/MailActivityEmail;

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController;->uiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email2/ui/MailActivityEmail;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public receiveInfo()V
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatViewController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 306
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 307
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->covId:Ljava/lang/Long;

    .line 308
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    sput-object v1, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 309
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Folder;

    iput-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 310
    const-string/jumbo v1, "premode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->preMode:I

    .line 312
    :cond_0
    return-void
.end method

.method protected recipientMatchesThisAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "recipientAddress"    # Ljava/lang/String;

    .prologue
    .line 1551
    sget-object v0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    sget-object v1, Lcom/kingsoft/mail/chat/ChatViewController;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->matchesAccountOrCustomFrom(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setAccountKey(J)V
    .locals 0
    .param p1, "mAccountKey"    # J

    .prologue
    .line 1341
    iput-wide p1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mAccountKey:J

    .line 1342
    return-void
.end method

.method public setBarVisibile(I)V
    .locals 1
    .param p1, "visibile"    # I

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setVisibility(I)V

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSwitchDoor:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mSwitchDoor:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1852
    :cond_1
    return-void
.end method

.method public setRightDividerVisibile(I)V
    .locals 3
    .param p1, "visibile"    # I

    .prologue
    .line 1860
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1861
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mRootView:Landroid/view/View;

    const v2, 0x7f0c0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1862
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1866
    .end local v0    # "divider":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1517
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    .local v2, "tokenized":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1521
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1523
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public updateMoreOptions(ILcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    .line 742
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-nez p2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFolder(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 746
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-direct {p0, v1, v3, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->getViewConversation(Lcom/kingsoft/mail/providers/Folder;J)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 747
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_0

    .line 748
    if-eqz v1, :cond_2

    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    .line 749
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-boolean v4, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    iget-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->fillMoreOption(ZZ)V

    .line 750
    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/providers/Conversation;)V

    .line 751
    .local v2, "onMoreMenuItemClickLisener":Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v3, v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setOnMoreOpItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 748
    .end local v2    # "onMoreMenuItemClickLisener":Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updateMoreOptions(ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;
    .param p3, "listener"    # Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;

    .prologue
    .line 722
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getFolder(Landroid/content/Context;)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v1

    .line 727
    .local v1, "folder":Lcom/kingsoft/mail/providers/Folder;
    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Message;->id:J

    invoke-direct {p0, v1, v3, v4}, Lcom/kingsoft/mail/chat/ChatViewController;->getViewConversation(Lcom/kingsoft/mail/providers/Folder;J)Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 728
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_0

    .line 729
    if-eqz v1, :cond_2

    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    .line 731
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    iget-boolean v4, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    iget-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->fillMoreOption(ZZ)V

    .line 732
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    const/4 v4, 0x4

    iget-boolean v5, v0, Lcom/kingsoft/mail/providers/Conversation;->starred:Z

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V

    .line 733
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    const/4 v4, 0x5

    invoke-virtual {p2}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getMessage()Lcom/kingsoft/mail/providers/Message;

    move-result-object v5

    iget-boolean v5, v5, Lcom/kingsoft/mail/providers/Message;->read:Z

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V

    .line 734
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mEnableMoveTo:Z

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->refreshBottomBarAdapter(IZ)V

    .line 735
    new-instance v2, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;-><init>(Lcom/kingsoft/mail/chat/ChatViewController;ILcom/kingsoft/mail/chat/ChatCacheItem;Lcom/kingsoft/mail/providers/Conversation;)V

    .line 736
    .local v2, "onMoreMenuItemClickLisener":Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
    invoke-virtual {v2, p3}, Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;->setIMoreMenuItemClickLisener(Lcom/kingsoft/mail/ui/QuickReplyBottomBar$OnOptionItemClickLisener;)V

    .line 737
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQRBar:Lcom/kingsoft/mail/ui/QuickReplyBottomBar;

    invoke-virtual {v3, v2}, Lcom/kingsoft/mail/ui/QuickReplyBottomBar;->setOnMoreOpItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 729
    .end local v2    # "onMoreMenuItemClickLisener":Lcom/kingsoft/mail/chat/ChatViewController$OnMoreMenuItemClickLisener;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public updateReplyInputBoxHint(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/chat/ChatCache;->getRow(I)Lcom/kingsoft/mail/chat/ChatCacheItem;

    move-result-object v0

    .line 684
    .local v0, "cacheItem":Lcom/kingsoft/mail/chat/ChatCacheItem;
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/chat/ChatViewController;->updateReplyInputBoxHint(Lcom/kingsoft/mail/chat/ChatCacheItem;)V

    .line 685
    return-void
.end method

.method public updateReplyInputBoxHint(Lcom/kingsoft/mail/chat/ChatCacheItem;)V
    .locals 7
    .param p1, "cacheItem"    # Lcom/kingsoft/mail/chat/ChatCacheItem;

    .prologue
    const/4 v6, 0x0

    .line 695
    if-nez p1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 699
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isCcToMe()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    const v4, 0x7f100310

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 703
    :cond_1
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->isBccToMe()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    const v4, 0x7f10030f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 705
    .local v2, "ss":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0b007f

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 706
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 709
    .end local v2    # "ss":Landroid/text/SpannableString;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mContext:Landroid/content/Context;

    const v4, 0x7f10030e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "hint3":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatCacheItem;->getReceiversCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 711
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController;->mQREditText:Lcom/kingsoft/mail/ui/QuickReplyEditText;

    invoke-virtual {v3, v1}, Lcom/kingsoft/mail/ui/QuickReplyEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
