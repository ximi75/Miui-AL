.class public Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
.super Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.source "SecureConversationViewFragment.java"

# interfaces
.implements Lcom/kingsoft/email/activity/InsertQuickResponseDialog$Callback;
.implements Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;,
        Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;,
        Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PAGER_CHG_MSG:I

.field private static sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;


# instance fields
.field private final DATA_LOAD_DELAY:I

.field private mDownloadedInlines:Ljava/util/Map;
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

.field private mHandler:Landroid/os/Handler;

.field private mInlineLoadedReceiver:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

.field private mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    .line 475
    new-instance v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;

    .line 474
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->DATA_LOAD_DELAY:I

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->loadMessage()V

    return-void
.end method

.method private loadMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_0
    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mUnloadedMessage:Z

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->startMessageLoader()V

    .line 293
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v0, v0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    if-eq v1, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v0, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->startMessageBodyDownloadTask(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;Lcom/kingsoft/mail/providers/Conversation;)Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    .locals 3
    .param p0, "existingArgs"    # Landroid/os/Bundle;
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 168
    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;-><init>()V

    .line 169
    .local v1, "f":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 170
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 172
    return-object v1
.end method

.method private registerDownloadInline()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mInlineLoadedReceiver:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mInlineLoadedReceiver:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method private renderMessage(Lcom/kingsoft/mail/browse/MessageCursor;)V
    .locals 3
    .param p1, "newCursor"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    const/4 v2, 0x0

    .line 390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageCursor;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "CONV RENDER: existing cursor is null, rendering from scratch"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageCursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    sget-object v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to open message cursor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/MessageCursor;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->renderMessage(Lcom/kingsoft/mail/browse/ConversationMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccountUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mAddressCache:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getContactInfoSource()Lcom/kingsoft/mail/ContactInfoSource;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;
    .locals 0

    .prologue
    .line 264
    return-object p0
.end method

.method public getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/kingsoft/mail/providers/Folder;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getFolderController()Lcom/kingsoft/mail/ui/FolderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/FolderController;->getFolder()Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 242
    return-object p0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    instance-of v1, v1, Lcom/kingsoft/mail/ui/MailActivity;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    check-cast v1, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/MailActivity;->getmController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    .line 465
    .local v0, "mControl":Lcom/kingsoft/mail/ui/ActivityController;
    instance-of v1, v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    .end local v0    # "mControl":Lcom/kingsoft/mail/ui/ActivityController;
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchFilter()Ljava/lang/String;

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWebViewClient()Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    return-object v0
.end method

.method public getmViewController()Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/kingsoft/mail/ui/ViewMode;->isSearchMode(I)Z

    move-result v0

    return v0
.end method

.method public isViewOnlyMode()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isViewVisibleToUser()Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v0

    return v0
.end method

.method protected markUnread()V
    .locals 9

    .prologue
    .line 347
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->markUnread()V

    .line 349
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 350
    .local v0, "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v1

    .line 351
    .local v1, "message":Lcom/kingsoft/mail/browse/ConversationMessage;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    .line 352
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "ignoring markUnread for conv=%s"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Conversation;->id:J

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    :goto_1
    return-void

    .line 352
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 356
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v2, "uris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v3, v1, Lcom/kingsoft/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/ConversationViewState;->getConversationInfo()[B

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationMessagesUnread(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_1
.end method

.method public onAccountChanged(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "oldAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 365
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getInitialConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 205
    .local v0, "initialConversation":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mUnloadedMessage:Z

    .line 207
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->showLoadingProgress()V

    .line 208
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->startMessageLoader()V

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->registerDownloadInline()V

    .line 211
    return-void
.end method

.method public onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 2
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 407
    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getConversationHeaderView()Lcom/kingsoft/mail/browse/ConversationViewHeader;

    move-result-object v0

    .line 408
    .local v0, "headerView":Lcom/kingsoft/mail/browse/ConversationViewHeader;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 410
    iget-object v1, p1, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onConversationViewHeaderHeightChange(I)V
    .locals 0
    .param p1, "newHeight"    # I

    .prologue
    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    new-instance v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;Lcom/kingsoft/mail/providers/Account;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    .line 190
    new-instance v0, Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .line 191
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mInlineLoadedReceiver:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mInlineLoadedReceiver:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onDestroyView()V

    .line 220
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onDestroyView()V

    .line 221
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)V
    .locals 0
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
    .line 385
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;>;"
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->renderMessage(Lcom/kingsoft/mail/browse/MessageCursor;)V

    .line 386
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onPause()V

    .line 228
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onPause()V

    .line 229
    return-void
.end method

.method public onQuickResponseSelected(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "quickResponse"    # Ljava/lang/CharSequence;

    .prologue
    .line 425
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 426
    .local v3, "selEnd":I
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 427
    .local v4, "selStart":I
    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    .line 428
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 430
    .local v0, "messageBody":Landroid/text/SpannableStringBuilder;
    if-ge v4, v3, :cond_0

    move v2, v4

    .line 431
    .local v2, "replaceStart":I
    :goto_0
    if-ge v4, v3, :cond_1

    move v1, v3

    .line 432
    .local v1, "replaceEnd":I
    :goto_1
    invoke-virtual {v0, v2, v1, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 433
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 439
    .end local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    .end local v1    # "replaceEnd":I
    .end local v2    # "replaceStart":I
    :goto_2
    return-void

    .restart local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    :cond_0
    move v2, v3

    .line 430
    goto :goto_0

    .restart local v2    # "replaceStart":I
    :cond_1
    move v1, v4

    .line 431
    goto :goto_1

    .line 436
    .end local v0    # "messageBody":Landroid/text/SpannableStringBuilder;
    .end local v2    # "replaceStart":I
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v6, v6, Lcom/kingsoft/mail/ui/SecureConversationViewController;->et_quick_reply:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onResume()V

    .line 235
    invoke-super {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onResume()V

    .line 236
    return-void
.end method

.method public onSelected(J)V
    .locals 4
    .param p1, "initConversationID"    # J

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mUnloadedMessage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mUnloadedMessage:Z

    .line 305
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->showLoadingProgress()V

    .line 306
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->removeMessages(I)V

    .line 308
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->getPreFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 309
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->getPreFragment()Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mUnloadedMessage:Z

    .line 312
    :cond_2
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->setSecFragment(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V

    .line 313
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->sPagerHander:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$PagerChangeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onUserVisibleHintChanged()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->onConversationSeen()V

    goto :goto_0
.end method

.method public setupConversationHeaderView(Lcom/kingsoft/mail/browse/ConversationViewHeader;)V
    .locals 1
    .param p1, "headerView"    # Lcom/kingsoft/mail/browse/ConversationViewHeader;

    .prologue
    .line 252
    invoke-virtual {p1, p0, p0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setCallbacks(Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/kingsoft/mail/browse/ConversationAccountController;)V

    .line 253
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setFolders(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 254
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setupMessageHeaderVeiledMatcher(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 1
    .param p1, "messageHeaderView"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/AccountController;->getVeiledAddressMatcher()Lcom/kingsoft/mail/utils/VeiledAddressMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingsoft/mail/browse/MessageHeaderView;->setVeiledMatcher(Lcom/kingsoft/mail/utils/VeiledAddressMatcher;)V

    .line 277
    return-void
.end method

.method public showLoadingProgress()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v0, v0, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->showLoadingProgress()V

    .line 283
    :cond_0
    return-void
.end method

.method public startMessageLoader()V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getMessageLoaderCallbacks()Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public supportsMessageTransforms()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method
