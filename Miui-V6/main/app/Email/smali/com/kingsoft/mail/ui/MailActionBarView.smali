.class public Lcom/kingsoft/mail/ui/MailActionBarView;
.super Landroid/widget/RelativeLayout;
.source "MailActionBarView.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/kingsoft/mail/ui/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;,
        Lcom/kingsoft/mail/ui/MailActionBarView$SubtitleHandler;,
        Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_DELAY_MS:I = 0x1388

.field public static final LOG_TAG:Ljava/lang/String;

.field private static hideAllActionMenu:Z

.field private static mContactInfoUri:Landroid/net/Uri;

.field private static mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;


# instance fields
.field private final UNREAD_LIMIT:I

.field private final attchScale:D

.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field protected mActionBar:Landroid/app/ActionBar;

.field public mActionBarOriginalInfo:Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

.field protected mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field private mAllreadItem:Landroid/view/MenuItem;

.field private mAttachmentItem:Landroid/view/MenuItem;

.field private mChatSwitcher:Landroid/widget/ImageView;

.field private mComposeItem:Landroid/view/MenuItem;

.field private mContext:Landroid/content/Context;

.field protected mController:Lcom/kingsoft/mail/ui/ActivityController;

.field private mEmptySpamItem:Landroid/view/MenuItem;

.field private mEmptyTrashItem:Landroid/view/MenuItem;

.field private mFolder:Lcom/kingsoft/mail/providers/Folder;

.field private mFolderItem:Landroid/view/MenuItem;

.field private mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

.field private mFolderSettingsItem:Landroid/view/MenuItem;

.field private mHelpItem:Landroid/view/MenuItem;

.field protected final mIsOnTablet:Z

.field private mLegacySubTitle:Landroid/widget/TextView;

.field private mLegacyTitle:Landroid/widget/TextView;

.field private mLegacyTitleContainer:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

.field private mRefreshItem:Landroid/view/MenuItem;

.field private mResendItem:Landroid/view/MenuItem;

.field private mSearch:Landroid/view/MenuItem;

.field private mSearchWidget:Landroid/widget/SearchView;

.field private mSendFeedbackItem:Landroid/view/MenuItem;

.field private mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

.field private mSenderInfoTitleContainer:Landroid/view/View;

.field private mSenderSubTitle:Landroid/widget/TextView;

.field private mSenderTitle:Landroid/widget/TextView;

.field private mSettingItem:Landroid/view/MenuItem;

.field private mTitleSplitView:Landroid/widget/ImageView;

.field private mUnreadCount:I

.field private mUnreadTitle:Landroid/widget/TextView;

.field private mUseLegacyTitle:Z

.field mapVisible:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/mail/ui/MailActionBarView;->hideAllActionMenu:Z

    .line 188
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 317
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    .line 96
    const-wide v1, 0x3ff5eb851eb851ecL

    iput-wide v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->attchScale:D

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    .line 212
    new-instance v1, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBarOriginalInfo:Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

    .line 276
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadCount:I

    .line 301
    new-instance v1, Lcom/kingsoft/mail/ui/MailActionBarView$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$1;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 318
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mIsOnTablet:Z

    .line 321
    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/MailActionBarView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/ui/MailActionBarView;Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/MailActionBarView;)Lcom/kingsoft/mail/providers/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/MailActionBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/MailActionBarView;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->onFolderChanged()V

    return-void
.end method

.method private static actionBarSupportsNewMethods(Landroid/app/ActionBar;)Z
    .locals 5
    .param p0, "bar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1520
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-le v3, v4, :cond_0

    .line 1535
    :goto_0
    return v1

    .line 1523
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-gt v3, v4, :cond_1

    move v1, v2

    .line 1524
    goto :goto_0

    .line 1526
    :cond_1
    const/4 v0, 0x0

    .line 1528
    .local v0, "supportsNewApi":Z
    if-eqz p0, :cond_2

    .line 1529
    :try_start_0
    const-class v3, Landroid/app/ActionBar;

    const-string/jumbo v4, "DISPLAY_TITLE_MULTIPLE_LINES"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_2
    :goto_1
    move v1, v0

    .line 1535
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1529
    goto :goto_1

    .line 1532
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private clearSearchState()V
    .locals 2

    .prologue
    .line 1603
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 1608
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->stopSearchTask()V

    .line 1609
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->refresh()Z

    goto :goto_0
.end method

.method private getActionBarTitleModeFlag()I
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getMergeUnreadCount()I
    .locals 4

    .prologue
    .line 1303
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v0

    .line 1304
    .local v0, "cc":Lcom/kingsoft/mail/browse/ConversationCursor;
    if-nez v0, :cond_1

    .line 1305
    const/4 v2, 0x0

    .line 1319
    :cond_0
    return v2

    .line 1306
    :cond_1
    const/4 v2, 0x0

    .line 1307
    .local v2, "count":I
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1309
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 1310
    .local v1, "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v3, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v3, :cond_2

    .line 1311
    add-int/lit8 v2, v2, 0x1

    .line 1313
    .end local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1315
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 1316
    .restart local v1    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    iget-boolean v3, v1, Lcom/kingsoft/mail/providers/Conversation;->read:Z

    if-nez v3, :cond_2

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSenderNameAndAddressFromMergedMessage()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 250
    const-string/jumbo v1, ""

    .line 252
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ActivityController;->getFiltFrom()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    :goto_0
    return-object v2

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ActivityController;->getFilterSender()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "from":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->isVirtualAccount()Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    :cond_1
    move-object v1, v0

    .line 269
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private initializeTitleViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 325
    const v1, 0x7f0c00ad

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    .line 326
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-static {v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->actionBarSupportsNewMethods(Landroid/app/ActionBar;)Z

    move-result v0

    .line 331
    .local v0, "runningMR11OrLater":Z
    const/4 v0, 0x0

    .line 333
    if-eqz v0, :cond_2

    .line 335
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    .line 388
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    new-instance v2, Lcom/kingsoft/mail/ui/MailActionBarView$4;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$4;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .end local v0    # "runningMR11OrLater":Z
    :cond_1
    return-void

    .line 338
    .restart local v0    # "runningMR11OrLater":Z
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    .line 341
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    .line 343
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f0c00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    .line 345
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f0c00b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mTitleSplitView:Landroid/widget/ImageView;

    .line 348
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    .line 349
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/kingsoft/mail/ui/MailActionBarView$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$2;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    .line 367
    const v1, 0x7f0c00b5

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mChatSwitcher:Landroid/widget/ImageView;

    .line 368
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mChatSwitcher:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingsoft/mail/ui/MailActionBarView$3;

    invoke-direct {v2, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$3;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 383
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mChatSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static isHideAllActionMenu()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/kingsoft/mail/ui/MailActionBarView;->hideAllActionMenu:Z

    return v0
.end method

.method private onFolderChanged()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 675
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setMenuItemVisible(Landroid/view/Menu;)V

    .line 677
    :cond_0
    return-void
.end method

.method private processHideMenuId(Landroid/view/MenuItem;Z)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "vhideAllActionMenu"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_1

    .line 110
    if-eqz p2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reorderMenu(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/view/Menu;I)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "maxItems"    # I

    .prologue
    .line 867
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v14

    if-eqz p1, :cond_4

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Lcom/kingsoft/mail/preferences/MailPrefs;->getRemovalAction(Z)Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, "removalAction":Ljava/lang/String;
    const-string/jumbo v13, "archive"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "archive-and-delete"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_0
    const/4 v9, 0x1

    .line 872
    .local v9, "showArchive":Z
    :goto_1
    const-string/jumbo v13, "delete"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "archive-and-delete"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_1
    const/4 v11, 0x1

    .line 878
    .local v11, "showDelete":Z
    :goto_2
    const/4 v2, 0x0

    .line 879
    .local v2, "archiveVisibleEnabled":Z
    const/4 v3, 0x0

    .line 880
    .local v3, "deleteVisibleEnabled":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v13

    if-ge v5, v13, :cond_9

    .line 881
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 882
    .local v7, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 883
    .local v6, "itemId":I
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    .line 884
    .local v12, "visible":Z
    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    .line 886
    .local v4, "enabled":Z
    const v13, 0x7f0c0270

    if-eq v6, v13, :cond_2

    const v13, 0x7f0c0271

    if-ne v6, v13, :cond_7

    .line 887
    :cond_2
    and-int v13, v12, v4

    or-int/2addr v2, v13

    .line 880
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 867
    .end local v2    # "archiveVisibleEnabled":Z
    .end local v3    # "deleteVisibleEnabled":Z
    .end local v4    # "enabled":Z
    .end local v5    # "i":I
    .end local v6    # "itemId":I
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    .end local v8    # "removalAction":Ljava/lang/String;
    .end local v9    # "showArchive":Z
    .end local v11    # "showDelete":Z
    .end local v12    # "visible":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 869
    .restart local v8    # "removalAction":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 872
    .restart local v9    # "showArchive":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 888
    .restart local v2    # "archiveVisibleEnabled":Z
    .restart local v3    # "deleteVisibleEnabled":Z
    .restart local v4    # "enabled":Z
    .restart local v5    # "i":I
    .restart local v6    # "itemId":I
    .restart local v7    # "menuItem":Landroid/view/MenuItem;
    .restart local v11    # "showDelete":Z
    .restart local v12    # "visible":Z
    :cond_7
    const v13, 0x7f0c026d

    if-eq v6, v13, :cond_8

    const v13, 0x7f0c0272

    if-ne v6, v13, :cond_3

    .line 889
    :cond_8
    and-int v13, v12, v4

    or-int/2addr v3, v13

    goto :goto_4

    .line 893
    .end local v4    # "enabled":Z
    .end local v6    # "itemId":I
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    .end local v12    # "visible":Z
    :cond_9
    const/4 v1, 0x0

    .line 895
    .local v1, "actionItems":I
    const/4 v5, 0x0

    :goto_5
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v13

    if-ge v5, v13, :cond_17

    .line 896
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 897
    .restart local v7    # "menuItem":Landroid/view/MenuItem;
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 900
    .restart local v6    # "itemId":I
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 901
    const v13, 0x7f0c0270

    if-eq v6, v13, :cond_a

    const v13, 0x7f0c0271

    if-ne v6, v13, :cond_e

    .line 908
    :cond_a
    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v9, :cond_c

    .line 909
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 911
    if-eqz v11, :cond_b

    .line 912
    add-int/lit8 v1, v1, 0x1

    .line 895
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 920
    :cond_c
    if-nez v9, :cond_d

    if-nez v3, :cond_b

    :cond_d
    move/from16 v0, p3

    if-ge v1, v0, :cond_b

    .line 922
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 927
    :cond_e
    const v13, 0x7f0c026b

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c026e

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c026f

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c026a

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c026c

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c017e

    if-eq v6, v13, :cond_f

    const v13, 0x7f0c0288

    if-ne v6, v13, :cond_11

    .line 933
    :cond_f
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 934
    const/16 v13, 0xa

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 937
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 939
    :cond_11
    const v13, 0x7f0c026d

    if-eq v6, v13, :cond_12

    const v13, 0x7f0c0272

    if-ne v6, v13, :cond_14

    .line 946
    :cond_12
    if-nez v11, :cond_13

    if-nez v2, :cond_b

    :cond_13
    move/from16 v0, p3

    if-ge v1, v0, :cond_b

    .line 948
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 949
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 951
    :cond_14
    const v13, 0x7f0c0275

    if-ne v6, v13, :cond_15

    .line 952
    const/16 v13, 0x2000

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v10

    .line 954
    .local v10, "showChangeFolder":Z
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    if-eqz v10, :cond_b

    move/from16 v0, p3

    if-ge v1, v0, :cond_b

    .line 957
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 960
    .end local v10    # "showChangeFolder":Z
    :cond_15
    const v13, 0x7f0c027e

    if-ne v6, v13, :cond_16

    .line 961
    const/16 v13, 0xa

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 965
    :cond_16
    move/from16 v0, p3

    if-ge v1, v0, :cond_b

    .line 966
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 972
    .end local v6    # "itemId":I
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_17
    return-void
.end method

.method public static setContactInfoUri(Lcom/kingsoft/mail/ContactInfoSource;)V
    .locals 5
    .param p0, "cis"    # Lcom/kingsoft/mail/ContactInfoSource;

    .prologue
    const/4 v4, 0x0

    .line 841
    sget-object v2, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v2, :cond_0

    .line 857
    :goto_0
    return-void

    .line 845
    :cond_0
    if-eqz p0, :cond_2

    .line 846
    sget-object v2, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/MessageInfo;

    .line 847
    .local v1, "mi":Lcom/kingsoft/mail/providers/MessageInfo;
    iget-object v2, v1, Lcom/kingsoft/mail/providers/MessageInfo;->senderEmail:Ljava/lang/String;

    invoke-interface {p0, v2}, Lcom/kingsoft/mail/ContactInfoSource;->getContactInfo(Ljava/lang/String;)Lcom/kingsoft/mail/ContactInfo;

    move-result-object v0

    .line 849
    .local v0, "info":Lcom/kingsoft/mail/ContactInfo;
    if-eqz v0, :cond_1

    .line 850
    iget-object v2, v0, Lcom/kingsoft/mail/ContactInfo;->contactUri:Landroid/net/Uri;

    sput-object v2, Lcom/kingsoft/mail/ui/MailActionBarView;->mContactInfoUri:Landroid/net/Uri;

    goto :goto_0

    .line 852
    :cond_1
    sput-object v4, Lcom/kingsoft/mail/ui/MailActionBarView;->mContactInfoUri:Landroid/net/Uri;

    goto :goto_0

    .line 855
    .end local v0    # "info":Lcom/kingsoft/mail/ContactInfo;
    .end local v1    # "mi":Lcom/kingsoft/mail/providers/MessageInfo;
    :cond_2
    sput-object v4, Lcom/kingsoft/mail/ui/MailActionBarView;->mContactInfoUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setFolderAndAccount(I)V
    .locals 8
    .param p1, "newMode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1220
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v6, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isWaitingForSync(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1225
    const-string/jumbo v4, ""

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1230
    :cond_2
    iget-boolean v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mIsOnTablet:Z

    if-nez v6, :cond_3

    invoke-static {p1}, Lcom/kingsoft/mail/ui/ViewMode;->isListMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v2, v5

    .line 1232
    .local v2, "isShowingFolder":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1235
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v6, :cond_5

    .line 1236
    const-string/jumbo v4, ""

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2    # "isShowingFolder":Z
    :cond_4
    move v2, v4

    .line 1230
    goto :goto_1

    .line 1240
    .restart local v2    # "isShowingFolder":Z
    :cond_5
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Folder;->isUnreadCountHidden()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Folder;->isStarredFolder()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v1, v4

    .line 1242
    .local v1, "folderUnreadCount":I
    :goto_2
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v0, v6, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    .line 1244
    .local v0, "displayTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ActivityController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1246
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ActivityController;->getFiltFrom()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1248
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getSenderNameAndAddressFromMergedMessage()[Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, "nameAndAddress":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1251
    aget-object v0, v3, v4

    .line 1252
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1253
    const-string/jumbo v6, ""

    invoke-direct {p0, v6}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    .line 1255
    aget-object v4, v3, v4

    aget-object v6, v3, v5

    invoke-direct {p0, v5, v4, v6}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSenderImageDisplayInfo(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    .end local v0    # "displayTitle":Ljava/lang/String;
    .end local v1    # "folderUnreadCount":I
    .end local v3    # "nameAndAddress":[Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, v6, Lcom/kingsoft/mail/providers/Folder;->unreadCount:I

    goto :goto_2

    .line 1258
    .restart local v0    # "displayTitle":Ljava/lang/String;
    .restart local v1    # "folderUnreadCount":I
    :cond_8
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ActivityController;->getFiltRawSubject()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1260
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ActivityController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    .line 1261
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 1262
    :cond_9
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100293

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    :cond_a
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1265
    const-string/jumbo v5, ""

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1266
    invoke-direct {p0, v4, v7, v7}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSenderImageDisplayInfo(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    goto/16 :goto_0

    .line 1270
    :cond_b
    const/16 v4, 0xc

    if-ne p1, v4, :cond_c

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100228

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1273
    const-string/jumbo v4, ""

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1274
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    goto/16 :goto_0

    .line 1275
    :cond_c
    if-ne p1, v5, :cond_e

    .line 1276
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1277
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ActivityController;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_d

    .line 1278
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1282
    :goto_3
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    goto/16 :goto_0

    .line 1280
    :cond_d
    const-string/jumbo v4, ""

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1283
    :cond_e
    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mIsOnTablet:Z

    if-eqz v4, :cond_0

    .line 1284
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ActivityController;->getFiltRawSubject()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1285
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getMergeUnreadCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    goto/16 :goto_0

    .line 1289
    :cond_f
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ActivityController;->getAllAccounts()[Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_10

    .line 1291
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v4, v4, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1295
    :goto_4
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setUnreadTitle(I)V

    goto/16 :goto_0

    .line 1293
    :cond_10
    const-string/jumbo v4, ""

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static setHideAllActionMenu(Z)V
    .locals 0
    .param p0, "vhideAllActionMenu"    # Z

    .prologue
    .line 103
    sput-boolean p0, Lcom/kingsoft/mail/ui/MailActionBarView;->hideAllActionMenu:Z

    .line 104
    return-void
.end method

.method private setMenuItemForFolder()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 685
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    .line 690
    .local v0, "mode":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAllreadItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 691
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v4, 0x800

    invoke-virtual {v1, v4}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d

    .line 692
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAllreadItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 698
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mResendItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_4

    .line 699
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, v2, :cond_e

    .line 701
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mResendItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 706
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_5

    .line 707
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const v5, 0x8000

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 710
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_6

    .line 711
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v5, 0x10000

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 715
    :cond_6
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_7

    .line 717
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 720
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_8

    .line 721
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->isVirtualAccount()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x200

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 725
    :cond_8
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_9

    .line 726
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v5, 0x200000

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, v1, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    if-lez v1, :cond_12

    move v1, v2

    :goto_6
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 732
    :cond_9
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    .line 733
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v5, 0x400000

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget v1, v1, Lcom/kingsoft/mail/providers/Folder;->totalCount:I

    if-lez v1, :cond_13

    move v1, v2

    :goto_7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 739
    :cond_a
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_c

    .line 742
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 743
    :cond_b
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 750
    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAllreadItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mResendItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Folder;->isVirtualFolder()Z

    move-result v4

    if-nez v4, :cond_17

    :goto_9
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 694
    :cond_d
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAllreadItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 703
    :cond_e
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mResendItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_f
    move v1, v3

    .line 707
    goto/16 :goto_3

    :cond_10
    move v1, v3

    .line 711
    goto/16 :goto_4

    :cond_11
    move v1, v3

    .line 721
    goto/16 :goto_5

    :cond_12
    move v1, v3

    .line 726
    goto/16 :goto_6

    :cond_13
    move v1, v3

    .line 733
    goto :goto_7

    .line 746
    :cond_14
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v5, 0x1000

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Folder;->isCombineInbox()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    move v1, v2

    :goto_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_16
    move v1, v3

    goto :goto_a

    :cond_17
    move v2, v3

    .line 751
    goto :goto_9
.end method

.method private setMenuItemForViewMode(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 756
    packed-switch p2, :pswitch_data_0

    .line 784
    :goto_0
    :pswitch_0
    return-void

    .line 766
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setConversationModeOptions(Landroid/view/Menu;)V

    .line 768
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 769
    .local v2, "resources":Landroid/content/res/Resources;
    const v5, 0x7f0e0002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 770
    .local v1, "maxItems":I
    const v5, 0x7f0e0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 771
    .local v0, "hiddenItems":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .end local v0    # "hiddenItems":I
    :cond_0
    sub-int v3, v1, v0

    .line 772
    .local v3, "totalItems":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-static {v4, v5, p1, v3}, Lcom/kingsoft/mail/ui/MailActionBarView;->reorderMenu(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Landroid/view/Menu;I)V

    goto :goto_0

    .line 781
    .end local v1    # "maxItems":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "totalItems":I
    :pswitch_2
    const v5, 0x7f0c027e

    invoke-static {p1, v5, v4}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMenuItemVisible(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v11, 0x7f0c028c

    const v10, 0x7f0c0268

    const v9, 0x8000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 791
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mMenu:Landroid/view/Menu;

    .line 792
    sget-object v4, Lcom/kingsoft/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "ActionBarView.onPrepareOptionsMenu()."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 793
    invoke-static {}, Lcom/kingsoft/mail/ui/MailActionBarView;->isHideAllActionMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 798
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    .line 799
    .local v3, "size":I
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->isConversationMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_7

    .line 801
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 802
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 803
    .local v1, "id":I
    if-eq v1, v10, :cond_0

    if-eq v1, v11, :cond_0

    .line 805
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 800
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v4, :cond_7

    .line 812
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_7

    .line 813
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 814
    .restart local v2    # "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 815
    .restart local v1    # "id":I
    if-eq v1, v10, :cond_3

    if-eq v1, v11, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0c0269

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v4, v9}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 818
    :cond_2
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 812
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 827
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v3    # "size":I
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSettingItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_5

    .line 828
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSettingItem:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 831
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAttachmentItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_6

    .line 832
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAttachmentItem:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 835
    :cond_6
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setMenuItemForFolder()V

    .line 836
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setMenuItemForViewMode(Landroid/view/Menu;I)V

    .line 837
    :cond_7
    return-void
.end method

.method private setSenderImageDisplayInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "displayFlag"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 1181
    if-nez p1, :cond_1

    .line 1183
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->setVisibility(I)V

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->setVisibility(I)V

    .line 1187
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v3, :cond_0

    .line 1188
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1190
    .local v1, "idealIconHeight":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1192
    .local v2, "idealIconWidth":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, v4, v2, v1}, Lcom/kingsoft/mail/photomanager/PhotoManager;->getIconFromContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1193
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    invoke-virtual {v3, v0}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1194
    sget-object v3, Lcom/kingsoft/mail/ui/MailActionBarView;->mContactInfoUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 1195
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderImageView:Lcom/kingsoft/mail/ui/CustomQuickContactBadge;

    sget-object v4, Lcom/kingsoft/mail/ui/MailActionBarView;->mContactInfoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/ui/CustomQuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 984
    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mTitleSplitView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :cond_0
    :goto_1
    return-void

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mTitleSplitView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_1
    return-void
.end method

.method private setTitleModeFlags(I)V
    .locals 3
    .param p1, "enabledFlags"    # I

    .prologue
    .line 1396
    const/16 v0, 0x18

    .line 1398
    .local v0, "mask":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x18

    invoke-virtual {v1, p1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1399
    return-void
.end method

.method private setUnreadTitle(I)V
    .locals 7
    .param p1, "unreadCount"    # I

    .prologue
    const v6, 0x7f020067

    const/4 v5, 0x1

    .line 999
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1002
    :cond_0
    if-nez p1, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v3, :cond_3

    const v0, 0x7f020066

    .line 1013
    .local v0, "background":I
    :goto_1
    iget v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v3, :cond_4

    const v1, 0x7f0b009c

    .line 1014
    .local v1, "textColor":I
    :goto_2
    const/4 v2, 0x1

    .line 1016
    .local v2, "textColorLight":I
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-nez v3, :cond_5

    .line 1017
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1012
    .end local v0    # "background":I
    .end local v1    # "textColor":I
    .end local v2    # "textColorLight":I
    :cond_3
    const v0, 0x7f020065

    goto :goto_1

    .line 1013
    .restart local v0    # "background":I
    :cond_4
    const v1, 0x7f0b000e

    goto :goto_2

    .line 1020
    .restart local v1    # "textColor":I
    .restart local v2    # "textColorLight":I
    :cond_5
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1022
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1025
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v3, v5}, Lcom/kingsoft/mail/providers/Folder;->isType(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Folder;->isInbox()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 1027
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1028
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1032
    :cond_8
    iget-object v3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mUnreadTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private showNavList(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setFolderAndAccount(I)V

    .line 979
    return-void
.end method

.method private updateAccount(Lcom/kingsoft/mail/providers/Account;)V
    .locals 8
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 544
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v7, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v0, v5

    .line 546
    .local v0, "accountChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 547
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 548
    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 550
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 551
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 553
    new-instance v3, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-direct {v3, p0, v6, v2}, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 555
    .local v3, "updater":Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;
    new-array v5, v5, [Landroid/os/Bundle;

    aput-object v1, v5, v4

    invoke-virtual {v3, v5}, Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 556
    iget-object v4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/kingsoft/mail/ui/MailActionBarView;->setFolderAndAccount(I)V

    .line 558
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "updater":Lcom/kingsoft/mail/ui/MailActionBarView$UpdateProvider;
    :cond_1
    return-void

    .end local v0    # "accountChanged":Z
    :cond_2
    move v0, v4

    .line 544
    goto :goto_0
.end method


# virtual methods
.method public HideAllActionMenu(Z)V
    .locals 1
    .param p1, "vhideAllActionMenu"    # Z

    .prologue
    .line 128
    sput-boolean p1, Lcom/kingsoft/mail/ui/MailActionBarView;->hideAllActionMenu:Z

    .line 129
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mapVisible:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mComposeItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->processHideMenuId(Landroid/view/MenuItem;Z)V

    .line 135
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->processHideMenuId(Landroid/view/MenuItem;Z)V

    .line 136
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->processHideMenuId(Landroid/view/MenuItem;Z)V

    .line 137
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAttachmentItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->processHideMenuId(Landroid/view/MenuItem;Z)V

    .line 138
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->processHideMenuId(Landroid/view/MenuItem;Z)V

    .line 139
    return-void
.end method

.method public attachActionBar(Landroid/app/ActionBar;)V
    .locals 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 527
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 529
    .local v0, "lp":Landroid/app/ActionBar$LayoutParams;
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 531
    invoke-virtual {p1, p0, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 532
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    const v1, 0x7f020060

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onViewModeChanged(I)V

    .line 541
    .end local v0    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_0
    return-void

    .line 537
    .restart local v0    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_1
    const v1, 0x7f02005e

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setLogo(I)V

    goto :goto_0
.end method

.method public changeChatSwitcherVisibility(I)V
    .locals 1
    .param p1, "visibile"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mChatSwitcher:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mChatSwitcher:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public closeSearchField()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method public collapseSearch()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 438
    :cond_0
    return-void
.end method

.method public enSureDisplaySubTitle(Z)V
    .locals 1
    .param p1, "able"    # Z

    .prologue
    .line 1203
    if-nez p1, :cond_0

    .line 1204
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1206
    :cond_0
    return-void
.end method

.method public expandSearch()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 429
    :cond_0
    return-void
.end method

.method public getOptionsMenuId()I
    .locals 4

    .prologue
    const v0, 0x7f120004

    .line 478
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 497
    :pswitch_0
    sget-object v1, Lcom/kingsoft/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Menu requested for unknown view mode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 498
    :goto_0
    :pswitch_1
    return v0

    .line 489
    :pswitch_2
    const v0, 0x7f120005

    goto :goto_0

    .line 493
    :pswitch_3
    const v0, 0x7f120011

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getSearch()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    return-object v0
.end method

.method public hideRefreshAnimation()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/RotationDrawable;->stop()V

    .line 1578
    :cond_0
    return-void
.end method

.method public initialize(Lcom/kingsoft/mail/ui/ControllableActivity;Lcom/kingsoft/mail/ui/ActivityController;Landroid/app/ActionBar;Lcom/kingsoft/mail/providers/Folder;)V
    .locals 2
    .param p1, "activity"    # Lcom/kingsoft/mail/ui/ControllableActivity;
    .param p2, "callback"    # Lcom/kingsoft/mail/ui/ActivityController;
    .param p3, "actionBar"    # Landroid/app/ActionBar;
    .param p4, "currentFolder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 503
    iput-object p3, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    .line 504
    iput-object p2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    .line 505
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 506
    iput-object p4, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 507
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->initializeTitleViews()V

    .line 508
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-interface {p1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 510
    new-instance v0, Lcom/kingsoft/mail/ui/MailActionBarView$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$5;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 519
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/FolderObserver;->initialize(Lcom/kingsoft/mail/ui/FolderController;)Lcom/kingsoft/mail/providers/Folder;

    .line 521
    invoke-virtual {p0, p3}, Lcom/kingsoft/mail/ui/MailActionBarView;->attachActionBar(Landroid/app/ActionBar;)V

    .line 522
    return-void
.end method

.method public initializeSenderTitleViews(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    const v0, 0x7f0c0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderInfoTitleContainer:Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderInfoTitleContainer:Landroid/view/View;

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderTitle:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderInfoTitleContainer:Landroid/view/View;

    const v1, 0x7f0c0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSenderSubTitle:Landroid/widget/TextView;

    .line 421
    return-void
.end method

.method public isRefreshing()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating()Z

    move-result v0

    .line 1564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00af

    if-ne v0, v1, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ActivityController;->onUpPressed()Z

    .line 1543
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 449
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 474
    :goto_0
    return v1

    .line 452
    :cond_0
    const v1, 0x7f0c0269

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    .line 453
    const v1, 0x7f0c028c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    .line 455
    const v1, 0x7f0c0281

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderItem:Landroid/view/MenuItem;

    .line 456
    const v1, 0x7f0c011f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mComposeItem:Landroid/view/MenuItem;

    .line 458
    const v1, 0x7f0c0285

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    .line 459
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/mail/ui/RotationDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    .line 465
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    const v1, 0x7f0c0286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    .line 466
    const v1, 0x7f0c027f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    .line 467
    const v1, 0x7f0c0280

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    .line 469
    const v1, 0x7f0c0268

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSettingItem:Landroid/view/MenuItem;

    .line 470
    const v1, 0x7f0c0282

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAttachmentItem:Landroid/view/MenuItem;

    .line 471
    const v1, 0x7f0c0283

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAllreadItem:Landroid/view/MenuItem;

    .line 472
    const v1, 0x7f0c0284

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mResendItem:Landroid/view/MenuItem;

    .line 473
    const v1, 0x7f0c027e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    .line 474
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->unbind()V

    .line 570
    return-void
.end method

.method public onFolderUpdated(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 4
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 1326
    if-nez p1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v2, p1}, Lcom/kingsoft/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1332
    .local v0, "changingFolders":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1333
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/kingsoft/mail/ui/MailActionBarView$6;

    invoke-direct {v3, p0}, Lcom/kingsoft/mail/ui/MailActionBarView$6;-><init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1341
    :cond_3
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 1342
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/kingsoft/mail/ui/MailActionBarView;->setFolderAndAccount(I)V

    .line 1343
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-nez v2, :cond_5

    const/4 v1, 0x0

    .line 1345
    .local v1, "listContext":Lcom/kingsoft/mail/ConversationListContext;
    :goto_2
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/kingsoft/mail/ConversationListContext;->isSearchResult(Lcom/kingsoft/mail/ConversationListContext;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->closeSearchField()V

    goto :goto_0

    .line 1330
    .end local v0    # "changingFolders":Z
    .end local v1    # "listContext":Lcom/kingsoft/mail/ConversationListContext;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1343
    .restart local v0    # "changingFolders":Z
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ActivityController;->getCurrentListContext()Lcom/kingsoft/mail/ConversationListContext;

    move-result-object v1

    goto :goto_2
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setVisibility(I)V

    .line 1382
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->clearSearchState()V

    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1365
    const-string/jumbo v0, "A01"

    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mMenu:Landroid/view/Menu;

    .line 681
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setMenuItemVisible(Landroid/view/Menu;)V

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1104
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    instance-of v1, v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-eqz v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListCursor()Lcom/kingsoft/mail/browse/ConversationCursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->clearSearchState()V

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getConversationListFragment()Lcom/kingsoft/mail/ui/ConversationListFragment;

    move-result-object v0

    .line 1110
    .local v0, "fragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ConversationListFragment;->invisibleSearchResultHeader()V

    .line 1119
    .end local v0    # "fragment":Lcom/kingsoft/mail/ui/ConversationListFragment;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1115
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onSearchRequired(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1099
    const/4 v0, 0x1

    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1130
    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1131
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v6

    .line 1133
    .local v1, "haveValidQuery":Z
    :goto_0
    if-nez v1, :cond_1

    .line 1134
    sget-object v8, Lcom/kingsoft/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "onSuggestionClick: Couldn\'t get a search query"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1174
    :goto_1
    return v6

    .end local v1    # "haveValidQuery":Z
    :cond_0
    move v1, v7

    .line 1131
    goto :goto_0

    .line 1141
    .restart local v1    # "haveValidQuery":Z
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->collapseSearch()V

    .line 1143
    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "queryText":Ljava/lang/String;
    const-string/jumbo v8, "suggest_intent_query"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, "query":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 1152
    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1154
    .local v4, "queryTokenIndex":I
    if-le v4, v9, :cond_2

    .line 1155
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1165
    :cond_2
    if-le v4, v9, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1168
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1169
    .local v5, "start":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1173
    .end local v4    # "queryTokenIndex":I
    .end local v5    # "start":I
    :cond_3
    iget-object v7, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/kingsoft/mail/ui/ActivityController;->executeSearch(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1125
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->onSuggestionClick(I)Z

    move-result v0

    return v0
.end method

.method public onViewModeChanged(I)V
    .locals 5
    .param p1, "newMode"    # I

    .prologue
    const v4, 0x7f10035b

    .line 575
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 578
    :cond_0
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingsoft/email/EmailApplication;->setConversationActionBarView(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    .line 585
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 658
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 581
    :cond_2
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/EmailApplication;->setConversationActionBarView(Lcom/kingsoft/mail/ui/MailActionBarView;)V

    goto :goto_0

    .line 594
    :pswitch_1
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->showNavList(I)V

    goto :goto_1

    .line 600
    :pswitch_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ActivityController;->getMergedMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    .line 604
    .local v0, "rawSubject":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 605
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_4
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 607
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 612
    .end local v0    # "rawSubject":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/providers/Account;->isEqualType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 613
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchFilter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 628
    :goto_2
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(I)V

    goto/16 :goto_1

    .line 622
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mController:Lcom/kingsoft/mail/ui/ActivityController;

    check-cast v1, Lcom/kingsoft/mail/ui/AbstractActivityController;

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/AbstractActivityController;->getSearchFilter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 633
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->closeSearchField()V

    .line 637
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->showNavList(I)V

    goto/16 :goto_1

    .line 642
    :pswitch_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->closeSearchField()V

    .line 643
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->showNavList(I)V

    goto/16 :goto_1

    .line 647
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->closeSearchField()V

    .line 648
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setEmptyMode()V

    goto/16 :goto_1

    .line 655
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->showNavList(I)V

    goto/16 :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeBackButton()V
    .locals 4

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1068
    :cond_0
    const/4 v0, 0x6

    .line 1070
    .local v0, "mask":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1071
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setBackButton()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1075
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x6

    .line 1081
    .local v0, "mask":I
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1082
    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setConversationModeOptions(Landroid/view/Menu;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1407
    sget-object v5, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v5, :cond_0

    .line 1513
    :goto_0
    return-void

    .line 1410
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Conversation;->isImportant()Z

    move-result v5

    if-nez v5, :cond_2

    move v4, v6

    .line 1411
    .local v4, "showMarkImportant":Z
    :goto_1
    const v8, 0x7f0c0277

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v9, 0x20000

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1418
    const v8, 0x7f0c0278

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v9, 0x20000

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1425
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v6

    .line 1428
    .local v2, "showDelete":Z
    :goto_4
    const v5, 0x7f0c026d

    invoke-static {p1, v5, v2}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1434
    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/high16 v8, 0x100000

    invoke-virtual {v5, v8}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v6

    .line 1440
    .local v3, "showDiscardDrafts":Z
    :goto_5
    const v5, 0x7f0c0272

    invoke-static {p1, v5, v3}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1442
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5, v10}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5, v12}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isTrash()Z

    move-result v5

    if-nez v5, :cond_7

    move v0, v6

    .line 1447
    .local v0, "archiveVisible":Z
    :goto_6
    const v5, 0x7f0c0270

    invoke-static {p1, v5, v0}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1448
    const v8, 0x7f0c0271

    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5, v10}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Folder;->isProviderFolder()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5, v10}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_7
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1459
    const v8, 0x7f0c0274

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v9, 0x4000

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_8
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1465
    const v8, 0x7f0c0276

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/high16 v9, 0x10000

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    :goto_9
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1472
    const v5, 0x7f0c0271

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1473
    .local v1, "removeFolder":Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 1474
    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/kingsoft/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f100340

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    iget-object v10, v10, Lcom/kingsoft/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1477
    :cond_1
    const v8, 0x7f0c027b

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v9, 0x40

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v5, v5, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    if-nez v5, :cond_b

    move v5, v6

    :goto_a
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1486
    const v8, 0x7f0c027c

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5, v11}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v5, v5, Lcom/kingsoft/mail/providers/Conversation;->spam:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_b
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1495
    const v8, 0x7f0c027d

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v9, 0x2000

    invoke-virtual {v5, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v5, v5, Lcom/kingsoft/mail/providers/Conversation;->phishing:Z

    if-nez v5, :cond_d

    move v5, v6

    :goto_c
    invoke-static {p1, v8, v5}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 1504
    const v5, 0x7f0c0279

    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v8, v12}, Lcom/kingsoft/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/kingsoft/mail/providers/Folder;->supportsCapability(I)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-boolean v8, v8, Lcom/kingsoft/mail/providers/Conversation;->muted:Z

    if-nez v8, :cond_e

    :goto_d
    invoke-static {p1, v5, v6}, Lcom/kingsoft/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    .end local v0    # "archiveVisible":Z
    .end local v1    # "removeFolder":Landroid/view/MenuItem;
    .end local v2    # "showDelete":Z
    .end local v3    # "showDiscardDrafts":Z
    .end local v4    # "showMarkImportant":Z
    :cond_2
    move v4, v7

    .line 1410
    goto/16 :goto_1

    .restart local v4    # "showMarkImportant":Z
    :cond_3
    move v5, v7

    .line 1411
    goto/16 :goto_2

    :cond_4
    move v5, v7

    .line 1418
    goto/16 :goto_3

    :cond_5
    move v2, v7

    .line 1425
    goto/16 :goto_4

    .restart local v2    # "showDelete":Z
    :cond_6
    move v3, v7

    .line 1434
    goto/16 :goto_5

    .restart local v3    # "showDiscardDrafts":Z
    :cond_7
    move v0, v7

    .line 1442
    goto/16 :goto_6

    .restart local v0    # "archiveVisible":Z
    :cond_8
    move v5, v7

    .line 1448
    goto/16 :goto_7

    :cond_9
    move v5, v7

    .line 1459
    goto/16 :goto_8

    :cond_a
    move v5, v7

    .line 1465
    goto/16 :goto_9

    .restart local v1    # "removeFolder":Landroid/view/MenuItem;
    :cond_b
    move v5, v7

    .line 1477
    goto/16 :goto_a

    :cond_c
    move v5, v7

    .line 1486
    goto :goto_b

    :cond_d
    move v5, v7

    .line 1495
    goto :goto_c

    :cond_e
    move v6, v7

    .line 1504
    goto :goto_d
.end method

.method public setCurrentConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 1402
    sput-object p1, Lcom/kingsoft/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 1403
    return-void
.end method

.method protected setEmptyMode()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setTitleModeFlags(I)V

    .line 1058
    return-void
.end method

.method public setFolder(Lcom/kingsoft/mail/providers/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/kingsoft/mail/providers/Folder;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolder:Lcom/kingsoft/mail/providers/Folder;

    .line 565
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getViewMode()Lcom/kingsoft/mail/ui/ViewMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/ViewMode;->getMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/MailActionBarView;->setFolderAndAccount(I)V

    .line 566
    return-void
.end method

.method public showRefreshAnimation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/RotationDrawable;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1554
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshDrawable:Lcom/kingsoft/mail/ui/RotationDrawable;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/RotationDrawable;->start()V

    goto :goto_0
.end method

.method public showRefreshAnimation(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->hideRefreshAnimation()V

    .line 1569
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    .line 1570
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/MailActionBarView;->showRefreshAnimation()V

    .line 1571
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1581
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 1583
    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mFolderObserver:Lcom/kingsoft/mail/providers/FolderObserver;

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 1587
    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBarOriginalInfo:Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

    if-eqz v0, :cond_2

    .line 1594
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBarOriginalInfo:Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;->clearInfo()V

    .line 1595
    iput-object v1, p0, Lcom/kingsoft/mail/ui/MailActionBarView;->mActionBarOriginalInfo:Lcom/kingsoft/mail/ui/MailActionBarView$ActionBarInfo;

    .line 1597
    :cond_2
    return-void
.end method
