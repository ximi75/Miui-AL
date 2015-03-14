.class public Lcom/kingsoft/mail/ui/ConversationViewFragment;
.super Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.source "ConversationViewFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
.implements Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/ConversationViewFragment$CssScaleInterceptor;,
        Lcom/kingsoft/mail/ui/ConversationViewFragment$SetCookieTask;,
        Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;,
        Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;,
        Lcom/kingsoft/mail/ui/ConversationViewFragment$ConversationWebViewClient;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_WEBVIEW_Y_PERCENT:Ljava/lang/String;

.field private static final DEBUG_DUMP_CONVERSATION_HTML:Z = false

.field private static final DEBUG_DUMP_CURSOR_CONTENTS:Z = false

.field private static final DISABLE_OFFSCREEN_LOADING:Z = false

.field private static final ENABLE_CSS_ZOOM:Z = false

.field public static final LAYOUT_TAG:Ljava/lang/String; = "ConvLayout"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final LOAD_NOW:I

.field private final LOAD_WAIT_FOR_INITIAL_CONVERSATION:I

.field private final LOAD_WAIT_UNTIL_VISIBLE:I

.field protected mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

.field protected mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

.field private mDiff:I

.field private mEnableContentReadySignal:Z

.field private final mJsBridge:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

.field private mLoadWaitReason:I

.field private final mLoadedObserver:Landroid/database/DataSetObserver;

.field private mMaxAutoLoadMessages:I

.field private final mMessageTransforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRender:Z

.field private mNewMessageBar:Landroid/widget/Button;

.field private final mOnProgressDismiss:Ljava/lang/Runnable;

.field private mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

.field private mScrollIndicators:Lcom/kingsoft/mail/browse/ScrollIndicatorsView;

.field protected mSideMarginPx:I

.field private mTempBodiesHtml:Ljava/lang/String;

.field protected mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

.field protected mViewsCreated:Z

.field protected mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

.field private mWebViewLoadStartMs:J

.field private mWebViewLoadedData:Z

.field private mWebViewSizeChangeListener:Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;

.field private mWebViewYPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "webview-y-percent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->BUNDLE_KEY_WEBVIEW_Y_PERCENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;-><init>()V

    .line 101
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I

    .line 106
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOAD_NOW:I

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOAD_WAIT_FOR_INITIAL_CONVERSATION:I

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOAD_WAIT_UNTIL_VISIBLE:I

    .line 134
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Lcom/kingsoft/mail/ui/ConversationViewFragment$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mJsBridge:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    .line 160
    iput v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    .line 175
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMessageTransforms:Ljava/util/Map;

    .line 177
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$1;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadedObserver:Landroid/database/DataSetObserver;

    .line 192
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;

    const-string/jumbo v1, "onProgressDismiss"

    invoke-direct {v0, p0, v1, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$2;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mOnProgressDismiss:Ljava/lang/Runnable;

    .line 213
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/mail/ui/ConversationViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I

    return v0
.end method

.method static synthetic access$1002(Lcom/kingsoft/mail/ui/ConversationViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/ui/ConversationViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/kingsoft/mail/ui/ConversationViewFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewYPercent:F

    return v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/ui/ConversationViewFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMessageTransforms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->handleDelayedConversationLoad()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->showConversation()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->onNewMessageBarClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/ConversationViewFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewLoadStartMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->ensureContentSizeChangeListener()V

    return-void
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/ConversationViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mEnableContentReadySignal:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/ConversationViewFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->revealConversation()V

    return-void
.end method

.method static synthetic access$900([Ljava/lang/String;[Ljava/lang/String;)[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->parsePositions([Ljava/lang/String;[Ljava/lang/String;)[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    move-result-object v0

    return-object v0
.end method

.method private calculateScrollYPercent()F
    .locals 6

    .prologue
    .line 429
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    if-nez v4, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 447
    :goto_0
    return v0

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->getScrollY()I

    move-result v1

    .line 435
    .local v1, "scrollY":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->getHeight()I

    move-result v2

    .line 436
    .local v2, "viewH":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->getContentHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 438
    .local v3, "webH":I
    if-eqz v3, :cond_1

    if-gt v3, v2, :cond_2

    .line 439
    :cond_1
    const/4 v0, 0x0

    .local v0, "p":F
    goto :goto_0

    .line 440
    .end local v0    # "p":F
    :cond_2
    add-int v4, v1, v2

    if-lt v4, v3, :cond_3

    .line 443
    const/high16 v0, 0x3f800000

    .restart local v0    # "p":F
    goto :goto_0

    .line 445
    .end local v0    # "p":F
    :cond_3
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .restart local v0    # "p":F
    goto :goto_0
.end method

.method private ensureContentSizeChangeListener()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewSizeChangeListener:Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;

    if-nez v0, :cond_0

    .line 1019
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$6;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$6;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewSizeChangeListener:Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewSizeChangeListener:Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->setContentSizeChangeListener(Lcom/kingsoft/mail/browse/MailWebView$ContentSizeChangeListener;)V

    .line 1032
    return-void
.end method

.method private getNewIncomingMessagesInfo(Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    .locals 10
    .param p1, "newCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1359
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Lcom/kingsoft/mail/ui/ConversationViewFragment$1;)V

    .line 1361
    .local v1, "info":Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    const/4 v3, -0x1

    .line 1362
    .local v3, "pos":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1363
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v2

    .line 1364
    .local v2, "m":Lcom/kingsoft/mail/providers/Message;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/ui/ConversationViewState;->contains(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1365
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "conversation diff: found new msg: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1367
    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 1371
    .local v0, "from":Lcom/kingsoft/mail/providers/Address;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/providers/Account;->ownsFromAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1372
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "found message from self: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1373
    iget v4, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->countFromSelf:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->countFromSelf:I

    goto :goto_0

    .line 1377
    :cond_1
    iget v4, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    .line 1378
    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->senderAddress:Ljava/lang/String;

    goto :goto_0

    .line 1381
    .end local v0    # "from":Lcom/kingsoft/mail/providers/Address;
    .end local v2    # "m":Lcom/kingsoft/mail/providers/Message;
    :cond_2
    return-object v1
.end method

.method private handleDelayedConversationLoad()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->resetLoadWaiting()V

    .line 541
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->startConversationLoad()V

    .line 542
    return-void
.end method

.method private initHeaderView(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 1
    .param p1, "headerView"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-virtual {p1, p0, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->initialize(Lcom/kingsoft/mail/browse/ConversationAccountController;Ljava/util/Map;)V

    .line 312
    invoke-virtual {p1, p0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setCallbacks(Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 313
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setContactInfoSource(Lcom/kingsoft/mail/ContactInfoSource;)V

    .line 314
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setVeiledMatcher(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 315
    return-void
.end method

.method private isLoadWaiting()Z
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverviewMode(Lcom/kingsoft/mail/providers/Account;)Z
    .locals 1
    .param p0, "acct"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Settings;->isOverviewMode()Z

    move-result v0

    return v0
.end method

.method private measureOverlayHeight(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I
    .locals 7
    .param p1, "convItem"    # Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    .prologue
    .line 863
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getType()I

    move-result v3

    .line 865
    .local v3, "type":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->getScrapView(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "convertView":Landroid/view/View;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v0, v5, v6}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getView(Lcom/kingsoft/mail/browse/ConversationOverlayItem;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 868
    .local v2, "hostView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 869
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v4, v3, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->addScrapView(ILandroid/view/View;)V

    .line 872
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->measureOverlay(Landroid/view/View;)I

    move-result v1

    .line 873
    .local v1, "heightPx":I
    invoke-virtual {p1, v1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->setHeight(I)Z

    .line 874
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->markMeasurementValid()V

    .line 876
    return v1
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/ConversationViewFragment;
    .locals 3
    .param p0, "existingArgs"    # Landroid/os/Bundle;
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 222
    new-instance v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;-><init>()V

    .line 223
    .local v1, "f":Lcom/kingsoft/mail/ui/ConversationViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 224
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 226
    return-object v1
.end method

.method private onNewMessageBarClick()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNewMessageBar:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 990
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 992
    return-void
.end method

.method private static parsePositions([Ljava/lang/String;[Ljava/lang/String;)[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    .locals 6
    .param p0, "topArray"    # [Ljava/lang/String;
    .param p1, "bottomArray"    # [Ljava/lang/String;

    .prologue
    .line 996
    array-length v1, p0

    .line 997
    .local v1, "len":I
    new-array v2, v1, [Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    .line 998
    .local v2, "positions":[Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 999
    new-instance v3, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;

    aget-object v4, p0, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/kingsoft/mail/browse/ConversationContainer$OverlayPosition;-><init>(II)V

    aput-object v3, v2, v0

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    :cond_0
    return-object v2
.end method

.method private processInPlaceUpdates(Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)Z
    .locals 12
    .param p1, "newCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;
    .param p2, "oldCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    .line 1385
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 1386
    .local v2, "idsOfChangedBodies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1388
    .local v1, "changedOverlayPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1390
    .local v0, "changed":Z
    const/4 v5, 0x0

    .line 1392
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p1, v5}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2, v5}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1418
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1420
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/browse/ConversationContainer;->onOverlayModelUpdate(Ljava/util/List;)V

    .line 1421
    const/4 v0, 0x1

    .line 1424
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1425
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v7, "javascript:replaceMessageBodies([%s]);"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, ","

    invoke-static {v10, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1427
    const/4 v0, 0x1

    .line 1430
    :cond_2
    return v0

    .line 1396
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    .line 1397
    .local v3, "newMsg":Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    .line 1399
    .local v4, "oldMsg":Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->isSending:Z

    iget-boolean v7, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->isSending:Z

    if-eq v6, v7, :cond_5

    .line 1401
    :cond_4
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v6, v3, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->updateItemsForMessage(Lcom/kingsoft/mail/browse/ConversationMessage;Ljava/util/List;)V

    .line 1402
    sget-object v6, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "msg #%d (%d): detected from/sending change. isSending=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-boolean v10, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->isSending:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1407
    :cond_5
    iget-object v6, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    iget-object v7, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyHtml:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyText:Ljava/lang/String;

    iget-object v7, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->bodyText:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1410
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v7, v3}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1411
    sget-object v6, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "msg #%d (%d): detected body change"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1414
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1415
    goto/16 :goto_0
.end method

.method private processNewOutgoingMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/kingsoft/mail/browse/ConversationMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1436
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v7

    .line 1438
    .local v7, "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationOverlayItem;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1439
    check-cast v7, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    .end local v7    # "item":Lcom/kingsoft/mail/browse/ConversationOverlayItem;
    invoke-virtual {v7, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;->setIsLastBorder(Z)V

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->reset()V

    .line 1451
    iget-boolean v4, p1, Lcom/kingsoft/mail/browse/ConversationMessage;->alwaysShowImages:Z

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZZ)V

    .line 1453
    invoke-virtual {p0, v3, v3, v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderBorder(ZZZZ)V

    .line 1455
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;

    .line 1457
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    sget v1, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->EXPANDED:I

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/mail/ui/ConversationViewState;->setExpansionState(Lcom/kingsoft/mail/providers/Message;I)V

    .line 1459
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v0, p1, v2}, Lcom/kingsoft/mail/ui/ConversationViewState;->setReadState(Lcom/kingsoft/mail/providers/Message;Z)V

    .line 1463
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->invalidateSpacerGeometry()V

    .line 1465
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v1, "javascript:appendMessageHtml();"

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method private renderCollapsedHeaders(Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)Ljava/lang/String;
    .locals 20
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/MessageCursor;
    .param p2, "blockToReplace"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    .prologue
    .line 787
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 789
    .local v19, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/browse/ConversationOverlayItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->reset()V

    .line 793
    const/4 v12, 0x0

    .line 794
    .local v12, "error":F
    const/4 v13, 0x1

    .line 795
    .local v13, "first":Z
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getStart()I

    move-result v18

    .local v18, "i":I
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getEnd()I

    move-result v11

    .local v11, "end":I
    :goto_0
    move/from16 v0, v18

    if-gt v0, v11, :cond_2

    .line 796
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    .line 797
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v3

    .line 800
    .local v3, "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    if-eqz v13, :cond_1

    .line 801
    const/4 v9, 0x0

    .line 802
    .local v9, "borderPx":I
    const/4 v13, 0x0

    .line 813
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getDateBuilder()Lcom/kingsoft/mail/FormattedDateBuilder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v6, v3}, Lcom/kingsoft/mail/ui/ConversationViewState;->getShouldShowImages(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v6

    invoke-static {v2, v4, v3, v5, v6}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->newMessageHeaderItem(Lcom/kingsoft/mail/browse/ConversationViewAdapter;Lcom/kingsoft/mail/FormattedDateBuilder;Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v16

    .line 816
    .local v16, "header":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->newMessageFooterItem(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;

    move-result-object v14

    .line 818
    .local v14, "footer":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v17

    .line 819
    .local v17, "headerPx":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v15

    .line 820
    .local v15, "footerPx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPxError(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4, v15}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPxError(I)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPxError(I)F

    move-result v4

    add-float/2addr v2, v4

    add-float/2addr v12, v2

    .line 825
    const/4 v10, 0x0

    .line 826
    .local v10, "correction":I
    const/high16 v2, 0x3f800000

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_0

    .line 827
    const/4 v10, 0x1

    .line 828
    const/high16 v2, 0x3f800000

    sub-float/2addr v12, v2

    .line 831
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    const/4 v4, 0x0

    iget-boolean v5, v3, Lcom/kingsoft/mail/browse/ConversationMessage;->alwaysShowImages:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v6

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v7, v15}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->appendMessageHtml(Lcom/kingsoft/mail/ui/HtmlMessage;ZZII)V

    .line 834
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    sget v4, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->COLLAPSED:I

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/mail/ui/ConversationViewState;->setExpansionState(Lcom/kingsoft/mail/providers/Message;I)V

    .line 795
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 806
    .end local v9    # "borderPx":I
    .end local v10    # "correction":I
    .end local v14    # "footer":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageFooterItem;
    .end local v15    # "footerPx":I
    .end local v16    # "header":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .end local v17    # "headerPx":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->newBorderItem(ZZ)Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;

    move-result-object v8

    .line 808
    .local v8, "border":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v9

    .line 809
    .restart local v9    # "borderPx":I
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->appendBorder(I)V

    goto/16 :goto_1

    .line 840
    .end local v3    # "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    .end local v8    # "border":Lcom/kingsoft/mail/browse/ConversationViewAdapter$BorderItem;
    .end local v9    # "borderPx":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->replaceSuperCollapsedBlock(Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;Ljava/util/Collection;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->notifyDataSetChanged()V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->emit()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V
    .locals 6
    .param p1, "messageCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mEnableContentReadySignal:Z

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderMessageBodies(Lcom/kingsoft/mail/browse/MessageCursor;Z)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "convHtml":Ljava/lang/String;
    const-string/jumbo v0, "rendered conversation"

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->timerMark(Ljava/lang/String;)V

    .line 594
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewLoadedData:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->calculateScrollYPercent()F

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewYPercent:F

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mBaseUri:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewLoadedData:Z

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewLoadStartMs:J

    .line 601
    return-void
.end method

.method private renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZ)V
    .locals 7
    .param p1, "msg"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p2, "previousCollapsed"    # Z
    .param p3, "expanded"    # Z
    .param p4, "safeForImages"    # Z
    .param p5, "firstBorder"    # Z

    .prologue
    .line 755
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZZ)V

    .line 757
    return-void
.end method

.method private renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZZ)V
    .locals 12
    .param p1, "msg"    # Lcom/kingsoft/mail/browse/ConversationMessage;
    .param p2, "previousCollapsed"    # Z
    .param p3, "expanded"    # Z
    .param p4, "safeForImages"    # Z
    .param p5, "renderBorder"    # Z
    .param p6, "firstBorder"    # Z

    .prologue
    .line 761
    if-eqz p5, :cond_1

    .line 764
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderBorder(ZZZZ)V

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/ui/ConversationViewState;->getShouldShowImages(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v2

    invoke-virtual {v1, p1, p3, v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addMessageHeader(Lcom/kingsoft/mail/browse/ConversationMessage;ZZ)I

    move-result v10

    .line 770
    .local v10, "headerPos":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v1, v10}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 772
    .local v9, "headerItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v1, v9}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addMessageFooter(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;)I

    move-result v7

    .line 777
    .local v7, "footerPos":I
    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(I)I

    move-result v11

    .line 778
    .local v11, "headerPx":I
    invoke-virtual {p0, v7}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(I)I

    move-result v8

    .line 780
    .local v8, "footerPx":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2, v11}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v5

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2, v8}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v6

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->appendMessageHtml(Lcom/kingsoft/mail/ui/HtmlMessage;ZZII)V

    .line 782
    const-string/jumbo v1, "rendered message"

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->timerMark(Ljava/lang/String;)V

    .line 783
    return-void

    .line 764
    .end local v7    # "footerPos":I
    .end local v8    # "footerPx":I
    .end local v9    # "headerItem":Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .end local v10    # "headerPos":I
    .end local v11    # "headerPx":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private renderSuperCollapsedBlock(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x1

    .line 739
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v3, v3, v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderBorder(ZZZZ)V

    .line 741
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addSuperCollapsedBlock(II)I

    move-result v0

    .line 742
    .local v0, "blockPos":I
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(I)I

    move-result v1

    .line 743
    .local v1, "blockPx":I
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->appendSuperCollapsedHtml(II)V

    .line 744
    return-void
.end method

.method private resetLoadWaiting()V
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadedObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ConversationUpdater;->unregisterConversationLoadedObserver(Landroid/database/DataSetObserver;)V

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    .line 455
    return-void
.end method

.method private revealConversation()V
    .locals 2

    .prologue
    .line 562
    const-string/jumbo v0, "revealing conversation"

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->timerMark(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mOnProgressDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismissLoadingStatus(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method private setupOverviewMode()V
    .locals 4

    .prologue
    .line 1041
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isOverviewMode(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v1

    .line 1042
    .local v1, "overviewMode":Z
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1043
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1047
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1048
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1049
    if-eqz v1, :cond_0

    .line 1050
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1052
    :cond_0
    const/4 v0, 0x0

    .line 1054
    .local v0, "listener":Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->setOnScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1055
    return-void
.end method

.method private showConversation()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "SHOWCONV: CVF is user-visible, immediately loading conversation (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "reason":I
    const-string/jumbo v2, "CVF.showConversation"

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->timerMark(Ljava/lang/String;)V

    .line 533
    :goto_0
    iput v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    .line 534
    iget v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadWaitReason:I

    if-nez v2, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->startConversationLoad()V

    .line 537
    :cond_0
    return-void

    .line 512
    .end local v1    # "reason":I
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v4, v4, Lcom/kingsoft/mail/providers/Conversation;->isRemote:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Conversation;->getNumMessages()I

    move-result v4

    iget v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMaxAutoLoadMessages:I

    if-le v4, v5, :cond_3

    :cond_2
    move v0, v2

    .line 518
    .local v0, "disableOffscreenLoading":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 519
    const/4 v1, 0x2

    .line 520
    .restart local v1    # "reason":I
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "SHOWCONV: CVF waiting until visible to load (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .end local v0    # "disableOffscreenLoading":Z
    .end local v1    # "reason":I
    :cond_3
    move v0, v3

    .line 512
    goto :goto_1

    .line 521
    .restart local v0    # "disableOffscreenLoading":Z
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v4

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ConversationUpdater;->isInitialConversationLoading()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 522
    const/4 v1, 0x1

    .line 523
    .restart local v1    # "reason":I
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "SHOWCONV: CVF waiting for initial to finish (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mLoadedObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Lcom/kingsoft/mail/ui/ConversationUpdater;->registerConversationLoadedObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 526
    .end local v1    # "reason":I
    :cond_5
    sget-object v4, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "SHOWCONV: CVF is not visible, but no reason to wait. loading now. (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v4, v5, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 529
    const/4 v1, 0x0

    .restart local v1    # "reason":I
    goto :goto_0
.end method

.method private showNewMessageNotification(Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNewMessageBar:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNewMessageBar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 985
    return-void
.end method

.method private startConversationLoad()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->setVisibility(I)V

    .line 546
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->loadContent()V

    .line 550
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->showLoadingStatus(Z)V

    .line 551
    return-void
.end method


# virtual methods
.method protected createConversationWebViewClient()Lcom/kingsoft/mail/ui/ConversationViewFragment$ConversationWebViewClient;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$ConversationWebViewClient;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$ConversationWebViewClient;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Lcom/kingsoft/mail/providers/Account;)V

    return-object v0
.end method

.method public downloadInlineImage(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 1576
    return-void
.end method

.method protected getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;
    .locals 3
    .param p1, "rawFrom"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAddressCache:Ljava/util/Map;

    monitor-enter v2

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Address;

    .line 1009
    .local v0, "addr":Lcom/kingsoft/mail/providers/Address;
    if-nez v0, :cond_0

    .line 1010
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_0
    monitor-exit v2

    .line 1014
    return-object v0

    .line 1013
    .end local v0    # "addr":Lcom/kingsoft/mail/providers/Address;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessageTransforms(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 959
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "domId":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMessageTransforms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected loadContent()V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageLoaderCallbacks()Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 559
    return-void
.end method

.method protected markUnread()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 459
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->markUnread()V

    .line 461
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 462
    .local v0, "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    if-nez v0, :cond_0

    .line 463
    sget-object v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ignoring markUnread for conv=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    if-nez v1, :cond_1

    .line 468
    sget-object v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ignoring markUnread for conv with no view state (%d)"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 472
    :cond_1
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ConversationViewState;->getUnreadMessageUris()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ConversationViewState;->getConversationInfo()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_0
.end method

.method protected measureOverlayHeight(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/kingsoft/mail/browse/ConversationOverlayItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(Lcom/kingsoft/mail/browse/ConversationOverlayItem;)I

    move-result v0

    return v0
.end method

.method public onAccountChanged(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Account;)V
    .locals 3
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "oldAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 232
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isOverviewMode(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v1

    invoke-static {p2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isOverviewMode(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->setupOverviewMode()V

    .line 234
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 235
    .local v0, "c":Lcom/kingsoft/mail/browse/MessageCursor;
    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 248
    .end local v0    # "c":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 252
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IN CVF.onActivityCreated, this=%s visible=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v13

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 255
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 261
    .local v10, "context":Landroid/content/Context;
    new-instance v0, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-direct {v0, v10}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    .line 263
    new-instance v9, Lcom/kingsoft/mail/FormattedDateBuilder;

    invoke-direct {v9, v10}, Lcom/kingsoft/mail/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v9, "dateBuilder":Lcom/kingsoft/mail/FormattedDateBuilder;
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    move-result-object v5

    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAddressCache:Ljava/util/Map;

    move-object v2, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;-><init>(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/browse/ConversationAccountController;Landroid/app/LoaderManager;Lcom/kingsoft/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;Lcom/kingsoft/mail/ContactInfoSource;Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/kingsoft/mail/browse/SuperCollapsedBlock$OnClickListener;Ljava/util/Map;Lcom/kingsoft/mail/FormattedDateBuilder;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .line 268
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationContainer;->setOverlayAdapter(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)V

    .line 271
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getSnapHeader()Lcom/kingsoft/mail/browse/MessageHeaderView;

    move-result-object v12

    .line 272
    .local v12, "snapHeader":Lcom/kingsoft/mail/browse/MessageHeaderView;
    invoke-direct {p0, v12}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->initHeaderView(Lcom/kingsoft/mail/browse/MessageHeaderView;)V

    .line 274
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 275
    .local v11, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0e002f

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mMaxAutoLoadMessages:I

    .line 277
    const v0, 0x7f0d00a8

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mSideMarginPx:I

    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    new-instance v1, Lcom/kingsoft/mail/browse/WebViewContextMenu;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/browse/WebViewContextMenu;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 283
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->setupOverviewMode()V

    .line 295
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$3;

    const-string/jumbo v2, "showConversation"

    invoke-direct {v1, p0, v2, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$3;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewFragment$SetCookieTask;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->accoutCookieQueryUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingsoft/mail/ui/ConversationViewFragment$SetCookieTask;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    new-array v1, v13, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment$SetCookieTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    const v2, 0x7f0c01d8

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationViewHeader;

    .line 1514
    .local v0, "headerView":Lcom/kingsoft/mail/browse/ConversationViewHeader;
    iput-object p1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 1515
    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 1517
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 1519
    :cond_0
    return-void
.end method

.method public onConversationViewHeaderHeightChange(I)V
    .locals 6
    .param p1, "newHeight"    # I

    .prologue
    .line 881
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v0

    .line 883
    .local v0, "h":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v2, "javascript:setConversationHeaderSpacerHeight(%s);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->createConversationWebViewClient()Lcom/kingsoft/mail/ui/ConversationViewFragment$ConversationWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->BUNDLE_KEY_WEBVIEW_Y_PERCENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewYPercent:F

    .line 326
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onDestroyView()V

    .line 414
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationContainer;->setOverlayAdapter(Lcom/kingsoft/mail/browse/ConversationViewAdapter;)V

    .line 415
    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    .line 416
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->resetLoadWaiting()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    .line 418
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 335
    const v5, 0x7f040078

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "rootView":Landroid/view/View;
    const v5, 0x7f0c01d3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/ConversationContainer;

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    .line 338
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v5, p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->setAccountController(Lcom/kingsoft/mail/browse/ConversationAccountController;)V

    .line 340
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    const v8, 0x7f0c01d6

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNewMessageBar:Landroid/widget/Button;

    .line 341
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNewMessageBar:Landroid/widget/Button;

    new-instance v8, Lcom/kingsoft/mail/ui/ConversationViewFragment$4;

    invoke-direct {v8, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$4;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v5, Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    .line 349
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-virtual {v5, v2}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->instantiateProgressIndicators(Landroid/view/View;)V

    .line 351
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    const v8, 0x7f0c01b7

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/ConversationWebView;

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    .line 353
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mJsBridge:Lcom/kingsoft/mail/ui/ConversationViewFragment$MailJsBridge;

    const-string/jumbo v9, "mail"

    invoke-virtual {v5, v8, v9}, Lcom/kingsoft/mail/browse/ConversationWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v0

    .line 365
    .local v0, "isJBOrLater":Z
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v1

    .line 366
    .local v1, "isUserVisible":Z
    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->setUseSoftwareLayer(Z)V

    .line 367
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mEnableContentReadySignal:Z

    .line 368
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->onUserVisibilityChanged(Z)V

    .line 369
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/browse/ConversationWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 370
    new-instance v4, Lcom/kingsoft/mail/ui/ConversationViewFragment$5;

    invoke-direct {v4, p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment$5;-><init>(Lcom/kingsoft/mail/ui/ConversationViewFragment;)V

    .line 379
    .local v4, "wcc":Landroid/webkit/WebChromeClient;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5, v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 381
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 383
    .local v3, "settings":Landroid/webkit/WebSettings;
    const v5, 0x7f0c01d7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/browse/ScrollIndicatorsView;

    iput-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mScrollIndicators:Lcom/kingsoft/mail/browse/ScrollIndicatorsView;

    .line 384
    iget-object v5, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mScrollIndicators:Lcom/kingsoft/mail/browse/ScrollIndicatorsView;

    iget-object v8, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/browse/ScrollIndicatorsView;->setSourceView(Lcom/kingsoft/mail/browse/ScrollNotifier;)V

    .line 386
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/kingsoft/mail/utils/ConversationViewUtils;->setTextZoom(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    .line 390
    iput-boolean v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    .line 391
    iput-boolean v7, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebViewLoadedData:Z

    .line 392
    return-object v2

    .end local v3    # "settings":Landroid/webkit/WebSettings;
    .end local v4    # "wcc":Landroid/webkit/WebChromeClient;
    :cond_0
    move v5, v7

    .line 366
    goto :goto_0

    :cond_1
    move v5, v7

    .line 367
    goto :goto_1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1524
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNeedRender:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1526
    .local v0, "sizeChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1527
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNeedRender:Z

    .line 1528
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1529
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 1531
    :cond_0
    return-void

    .end local v0    # "sizeChanged":Z
    :cond_1
    move v0, v1

    .line 1524
    goto :goto_0
.end method

.method public onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)V
    .locals 9
    .param p2, "newCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;
    .param p3, "oldCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;>;",
            "Lcom/kingsoft/mail/browse/MessageCursor;",
            "Lcom/kingsoft/mail/browse/MessageCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1292
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/kingsoft/mail/browse/MessageCursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1293
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getNewIncomingMessagesInfo(Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;

    move-result-object v1

    .line 1295
    .local v1, "info":Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    iget v7, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    if-lez v7, :cond_0

    .line 1299
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: conversation updated, holding cursor for new incoming message (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1301
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->showNewMessageNotification(Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;)V

    .line 1344
    .end local v1    # "info":Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    :goto_0
    return-void

    .line 1305
    .restart local v1    # "info":Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    :cond_0
    invoke-virtual {p3}, Lcom/kingsoft/mail/browse/MessageCursor;->getStateHashCode()I

    move-result v2

    .line 1306
    .local v2, "oldState":I
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/MessageCursor;->getStateHashCode()I

    move-result v7

    if-eq v7, v2, :cond_1

    move v0, v5

    .line 1308
    .local v0, "changed":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1309
    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->processInPlaceUpdates(Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)Z

    move-result v3

    .line 1310
    .local v3, "processedInPlace":Z
    if-eqz v3, :cond_2

    .line 1311
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: processed update(s) in place (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .end local v0    # "changed":Z
    .end local v3    # "processedInPlace":Z
    :cond_1
    move v0, v6

    .line 1306
    goto :goto_1

    .line 1313
    .restart local v0    # "changed":Z
    .restart local v3    # "processedInPlace":Z
    :cond_2
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: uninteresting update, ignoring this conversation update (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1317
    .end local v3    # "processedInPlace":Z
    :cond_3
    iget v7, v1, Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;->countFromSelf:I

    if-ne v7, v5, :cond_5

    .line 1320
    invoke-virtual {p2, v5}, Lcom/kingsoft/mail/browse/MessageCursor;->getStateHashCode(I)I

    move-result v7

    if-ne v7, v2, :cond_4

    move v4, v5

    .line 1321
    .local v4, "sameExceptNewLast":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 1322
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: update is a single new message from self (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1324
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToLast()Z

    .line 1325
    invoke-virtual {p2}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->processNewOutgoingMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    goto :goto_0

    .end local v4    # "sameExceptNewLast":Z
    :cond_4
    move v4, v6

    .line 1320
    goto :goto_2

    .line 1331
    :cond_5
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: conversation updated, but not due to incoming message. rendering. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1343
    .end local v0    # "changed":Z
    .end local v1    # "info":Lcom/kingsoft/mail/ui/ConversationViewFragment$NewMessagesInfo;
    .end local v2    # "oldState":I
    :goto_3
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderContent(Lcom/kingsoft/mail/browse/MessageCursor;)V

    goto :goto_0

    .line 1339
    :cond_6
    sget-object v7, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "CONV RENDER: initial render. (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1340
    const-string/jumbo v5, "message cursor load finished"

    invoke-virtual {p0, v5}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->timerMark(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onPause()V

    .line 406
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->onPause()V

    .line 409
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onResume()V

    .line 398
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->onResume()V

    .line 401
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 424
    sget-object v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->BUNDLE_KEY_WEBVIEW_Y_PERCENT:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->calculateScrollYPercent()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 425
    return-void
.end method

.method public onSuperCollapsedClick(Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V
    .locals 4
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 974
    .local v0, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-nez v1, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderCollapsedHeaders(Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTempBodiesHtml:Ljava/lang/String;

    .line 979
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:replaceSuperCollapsedBlock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->getStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserVisibleHintChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 478
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v0

    .line 479
    .local v0, "userVisible":Z
    sget-object v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ConversationViewFragment#onUserVisibleHintChanged(), userVisible = %b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 482
    if-nez v0, :cond_2

    .line 483
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mProgressController:Lcom/kingsoft/mail/ui/ConversationViewProgressController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ConversationViewProgressController;->dismissLoadingStatus()V

    .line 494
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->onUserVisibilityChanged(Z)V

    .line 497
    :cond_1
    return-void

    .line 484
    :cond_2
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 486
    sget-object v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fragment is now user-visible, onConversationSeen: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->onConversationSeen()V

    goto :goto_0

    .line 488
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isLoadWaiting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    sget-object v1, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Fragment is now user-visible, showing conversation: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 490
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->handleDelayedConversationLoad()V

    goto :goto_0
.end method

.method protected renderBorder(ZZZZ)V
    .locals 4
    .param p1, "contiguous"    # Z
    .param p2, "expanded"    # Z
    .param p3, "firstBorder"    # Z
    .param p4, "lastBorder"    # Z

    .prologue
    .line 748
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addBorder(ZZZZ)I

    move-result v0

    .line 749
    .local v0, "blockPos":I
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(I)I

    move-result v1

    .line 750
    .local v1, "blockPx":I
    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->appendBorder(I)V

    .line 751
    return-void
.end method

.method protected renderContent(Lcom/kingsoft/mail/browse/MessageCursor;)V
    .locals 1
    .param p1, "messageCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationContainer;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mNeedRender:Z

    .line 1352
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/ConversationContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V

    goto :goto_0
.end method

.method protected renderMessageBodies(Lcom/kingsoft/mail/browse/MessageCursor;Z)Ljava/lang/String;
    .locals 29
    .param p1, "messageCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;
    .param p2, "enableContentReadySignal"    # Z

    .prologue
    .line 610
    const/16 v25, -0x1

    .line 612
    .local v25, "pos":I
    sget-object v2, Lcom/kingsoft/mail/ui/ConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "IN renderMessageBodies, fragment=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 613
    const/16 v20, 0x0

    .line 625
    .local v20, "allowNetworkImages":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationContainer;->invalidateSpacerGeometry()V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->clear()V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    move-object/from16 v26, v0

    .line 632
    .local v26, "prevState":Lcom/kingsoft/mail/ui/ConversationViewState;
    new-instance v2, Lcom/kingsoft/mail/ui/ConversationViewState;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Lcom/kingsoft/mail/ui/ConversationViewState;-><init>(Lcom/kingsoft/mail/ui/ConversationViewState;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAdapter:Lcom/kingsoft/mail/browse/ConversationViewAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/browse/ConversationViewAdapter;->addConversationHeader(Lcom/kingsoft/mail/providers/Conversation;)I

    move-result v22

    .line 639
    .local v22, "convHeaderPos":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->measureOverlayHeight(I)I

    move-result v23

    .line 641
    .local v23, "convHeaderPx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mSideMarginPx:I

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->startConversation(II)V

    .line 644
    const/16 v21, -0x1

    .line 645
    .local v21, "collapsedStart":I
    const/4 v3, 0x0

    .line 646
    .local v3, "prevCollapsedMsg":Lcom/kingsoft/mail/browse/ConversationMessage;
    const/4 v6, 0x0

    .line 650
    .local v6, "prevSafeForImages":Z
    sget v27, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->NONE:I

    .line 651
    .local v27, "previousExpandedState":I
    :goto_0
    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 652
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v8

    .line 654
    .local v8, "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    iget-boolean v2, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->alwaysShowImages:Z

    if-nez v2, :cond_0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/ui/ConversationViewState;->getShouldShowImages(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 656
    .local v11, "safeForImages":Z
    :goto_1
    or-int v20, v20, v11

    .line 658
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/ui/ConversationViewState;->getExpansionState(Lcom/kingsoft/mail/providers/Message;)Ljava/lang/Integer;

    move-result-object v28

    .line 660
    .local v28, "savedExpanded":Ljava/lang/Integer;
    if-eqz v28, :cond_4

    .line 661
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->isSuperCollapsed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/MessageCursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    sget v24, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->EXPANDED:I

    .line 673
    .local v24, "expandedState":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/ui/ConversationViewState;->getShouldShowImages(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v4

    invoke-virtual {v2, v8, v4}, Lcom/kingsoft/mail/ui/ConversationViewState;->setShouldShowImages(Lcom/kingsoft/mail/providers/Message;Z)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    move/from16 v0, v24

    invoke-virtual {v2, v8, v0}, Lcom/kingsoft/mail/ui/ConversationViewState;->setExpansionState(Lcom/kingsoft/mail/providers/Message;I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    iget-boolean v2, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->read:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/kingsoft/mail/ui/ConversationViewState;->isUnread(Lcom/kingsoft/mail/providers/Message;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v8, v2}, Lcom/kingsoft/mail/ui/ConversationViewState;->setReadState(Lcom/kingsoft/mail/providers/Message;Z)V

    .line 687
    invoke-static/range {v24 .. v24}, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->isSuperCollapsed(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 690
    if-gez v21, :cond_1

    .line 691
    move/from16 v21, v25

    .line 693
    :cond_1
    move-object v3, v8

    .line 694
    move v6, v11

    .line 698
    invoke-virtual {v8}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    .line 699
    move/from16 v27, v24

    .line 700
    goto :goto_0

    .line 654
    .end local v11    # "safeForImages":Z
    .end local v24    # "expandedState":I
    .end local v28    # "savedExpanded":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 666
    .restart local v11    # "safeForImages":Z
    .restart local v28    # "savedExpanded":Ljava/lang/Integer;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .restart local v24    # "expandedState":I
    goto :goto_2

    .line 670
    .end local v24    # "expandedState":I
    :cond_4
    iget-boolean v2, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->read:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v8, Lcom/kingsoft/mail/browse/ConversationMessage;->starred:Z

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/browse/MessageCursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    sget v24, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->EXPANDED:I

    .restart local v24    # "expandedState":I
    :goto_4
    goto :goto_2

    .end local v24    # "expandedState":I
    :cond_6
    sget v24, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->SUPER_COLLAPSED:I

    goto :goto_4

    .line 680
    .restart local v24    # "expandedState":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 704
    :cond_8
    if-ltz v21, :cond_9

    .line 705
    sub-int v2, v25, v21

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 709
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZ)V

    .line 714
    :goto_5
    const/4 v3, 0x0

    .line 715
    const/16 v21, -0x1

    .line 718
    :cond_9
    invoke-static/range {v27 .. v27}, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->isCollapsed(I)Z

    move-result v9

    invoke-static/range {v24 .. v24}, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->isExpanded(I)Z

    move-result v10

    if-nez v25, :cond_b

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;ZZZZ)V

    .line 722
    move/from16 v27, v24

    .line 723
    goto/16 :goto_0

    .line 712
    :cond_a
    add-int/lit8 v2, v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderSuperCollapsedBlock(II)V

    goto :goto_5

    .line 718
    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    .line 725
    .end local v8    # "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    .end local v11    # "safeForImages":Z
    .end local v24    # "expandedState":I
    .end local v28    # "savedExpanded":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    if-nez v20, :cond_d

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->shouldApplyTransforms()Z

    move-result v18

    .line 729
    .local v18, "applyTransforms":Z
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v7}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderBorder(ZZZZ)V

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mBaseUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/providers/Conversation;->getBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->getViewportWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v2}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->isOverviewMode(Lcom/kingsoft/mail/providers/Account;)Z

    move-result v17

    move/from16 v16, p2

    move/from16 v19, v18

    invoke-virtual/range {v12 .. v19}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->endConversation(Ljava/lang/String;Ljava/lang/String;IZZZZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 725
    .end local v18    # "applyTransforms":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public setMessageDetailsExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;ZI)V
    .locals 2
    .param p1, "i"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "expanded"    # Z
    .param p3, "heightBefore"    # I

    .prologue
    .line 1536
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mDiff:I

    .line 1537
    return-void

    .line 1536
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setMessageExpanded(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;III)V
    .locals 9
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "newSpacerHeightPx"    # I
    .param p3, "topBorderHeight"    # I
    .param p4, "bottomBorderHeight"    # I

    .prologue
    .line 904
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationContainer;->invalidateSpacerGeometry()V

    .line 907
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, p2}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v1

    .line 908
    .local v1, "h":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, p3}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v2

    .line 909
    .local v2, "topHeight":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v3, p4}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v0

    .line 910
    .local v0, "bottomHeight":I
    const-string/jumbo v3, "ConvLayout"

    const-string/jumbo v4, "setting HTML spacer expanded=%s h=%dwebPx (%dscreenPx)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 912
    iget-object v3, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v4, "javascript:setMessageBodyVisible(\'%s\', %s, %s, %s, %s);"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 916
    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->EXPANDED:I

    :goto_0
    invoke-virtual {v4, v5, v3}, Lcom/kingsoft/mail/ui/ConversationViewState;->setExpansionState(Lcom/kingsoft/mail/providers/Message;I)V

    .line 918
    return-void

    .line 916
    :cond_0
    sget v3, Lcom/kingsoft/mail/ui/ConversationViewState$ExpansionState;->COLLAPSED:I

    goto :goto_0
.end method

.method public setMessageSpacerHeight(Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;I)V
    .locals 8
    .param p1, "item"    # Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .param p2, "newSpacerHeightPx"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 891
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/kingsoft/mail/browse/ConversationContainer;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationContainer;->invalidateSpacerGeometry()V

    .line 894
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v1, p2}, Lcom/kingsoft/mail/browse/ConversationWebView;->screenPxToWebPx(I)I

    move-result v0

    .line 895
    .local v0, "h":I
    const-string/jumbo v1, "ConvLayout"

    const-string/jumbo v2, "setting HTML spacer h=%dwebPx (%dscreenPx)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 897
    iget-object v1, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    const-string/jumbo v2, "javascript:setMessageHeaderSpacerHeight(\'%s\', %s);"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationViewAdapter$MessageHeaderItem;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public showExternalResources(Lcom/kingsoft/mail/providers/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/mail/ui/ConversationViewState;->setShouldShowImages(Lcom/kingsoft/mail/providers/Message;Z)V

    .line 923
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 924
    iget-object v0, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:unblockImages([\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\']);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public showExternalResources(Ljava/lang/String;)V
    .locals 10
    .param p1, "senderRawAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 929
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 931
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v4

    .line 932
    .local v4, "sender":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 934
    .local v0, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v2, "messageDomIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 937
    .local v3, "pos":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 938
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    .line 939
    .local v1, "message":Lcom/kingsoft/mail/browse/ConversationMessage;
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kingsoft/mail/providers/Address;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 940
    iput-boolean v7, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->alwaysShowImages:Z

    .line 942
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v6, v1, v7}, Lcom/kingsoft/mail/ui/ConversationViewState;->setShouldShowImages(Lcom/kingsoft/mail/providers/Message;Z)V

    .line 943
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mTemplates:Lcom/kingsoft/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v6, v1}, Lcom/kingsoft/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/kingsoft/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 947
    .end local v1    # "message":Lcom/kingsoft/mail/browse/ConversationMessage;
    :cond_1
    const-string/jumbo v6, "javascript:unblockImages([\'%s\']);"

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "\',\'"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/ConversationViewFragment;->mWebView:Lcom/kingsoft/mail/browse/ConversationWebView;

    invoke-virtual {v6, v5}, Lcom/kingsoft/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public showUntransformedConversation()V
    .locals 1

    .prologue
    .line 967
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->showUntransformedConversation()V

    .line 968
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/ConversationViewFragment;->renderConversation(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 969
    return-void
.end method

.method public supportsMessageTransforms()Z
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    return v0
.end method
