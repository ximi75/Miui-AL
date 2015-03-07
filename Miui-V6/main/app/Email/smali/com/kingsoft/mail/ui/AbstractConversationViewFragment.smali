.class public abstract Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.super Lmiui/app/Fragment;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ConversationAccountController;
.implements Lcom/kingsoft/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
.implements Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;,
        Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
    }
.end annotation


# static fields
.field protected static final ARG_ACCOUNT:Ljava/lang/String; = "account"

.field public static final ARG_CONVERSATION:Ljava/lang/String; = "conversation"

.field private static final BUNDLE_DETACHED:Ljava/lang/String;

.field private static final BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

.field private static final BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

.field private static final BUNDLE_USER_VISIBLE:Ljava/lang/String;

.field private static final BUNDLE_VIEW_STATE:Ljava/lang/String;

.field protected static final CONTACT_LOADER:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final MESSAGE_LOADER:I


# instance fields
.field protected mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

.field protected mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

.field protected mActivityController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field protected final mAddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseUri:Ljava/lang/String;

.field private mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

.field private mChangeFoldersMenuItem:Landroid/view/MenuItem;

.field private mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

.field private mContext:Landroid/content/Context;

.field protected mConversation:Lcom/kingsoft/mail/providers/Conversation;

.field private mCurTime:J

.field private mCursor:Lcom/kingsoft/mail/browse/MessageCursor;

.field private final mHandler:Landroid/os/Handler;

.field private mHasConversationBeenTransformed:Z

.field private mHasConversationTransformBeenReverted:Z

.field private mHasCreateActionbar:Z

.field private mIsDetached:Z

.field private final mMessageLoaderCallbacks:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

.field private mSuppressMarkingViewed:Z

.field public mUnloadedMessage:Z

.field private mUserVisible:Z

.field protected mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

.field protected mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "viewstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uservisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "conversationtransformed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "conversationreverted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 92
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mMessageLoaderCallbacks:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasCreateActionbar:Z

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAddressCache:Ljava/util/Map;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUnloadedMessage:Z

    .line 137
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    .line 176
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/mail/browse/MessageCursor;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/browse/MessageCursor;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/browse/MessageCursor;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    return v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onError()V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCurTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;)Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .param p1, "x1"    # Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureActionbarHasInited()V
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasCreateActionbar:Z

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivityController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    if-nez v0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActivity;->getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivityController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->initConversationActionBar(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasCreateActionbar:Z

    goto :goto_0
.end method

.method private getMessageBodySynclistener()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$5;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V

    .line 864
    .local v0, "listener":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    return-object v0
.end method

.method private isTallTitle(Ljava/lang/String;)Z
    .locals 9
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04005c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 422
    .local v4, "root":Landroid/view/View;
    const v6, 0x7f0c0163

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 423
    .local v0, "back":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 424
    .local v1, "backParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const v6, 0x7f0c0164

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 425
    .local v5, "title":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 426
    .local v2, "mainTitleParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 429
    .local v3, "maxTitleWidth":I
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v7, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static makeBasicArgs(Lcom/kingsoft/mail/providers/Account;)Landroid/os/Bundle;
    .locals 2
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 167
    return-object v0
.end method

.method private onError()V
    .locals 3

    .prologue
    .line 625
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "CVF: visible conv has no messages, exiting conv mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->popOut()V

    .line 630
    return-void
.end method

.method private popOut()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;

    const-string/jumbo v2, "popOut"

    invoke-direct {v1, p0, v2, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$3;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    return-void
.end method


# virtual methods
.method public closeDownloadingDialog()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;->dismissAllowingStateLoss()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    .line 872
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getListController()Lcom/kingsoft/mail/ui/ConversationUpdater;
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 303
    .local v0, "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;

    return-object v0
.end method

.method public getMessageLoaderCallbacks()Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mMessageLoaderCallbacks:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;

    return-object v0
.end method

.method protected getNewViewState()Lcom/kingsoft/mail/ui/ConversationViewState;
    .locals 1

    .prologue
    .line 690
    new-instance v0, Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/ConversationViewState;-><init>()V

    return-object v0
.end method

.method public initConversationActionBar(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 11
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 367
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 368
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 370
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04005c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 372
    .local v3, "ll":Landroid/widget/RelativeLayout;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 373
    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 376
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 377
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 378
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 380
    const v7, 0x7f0c0162

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 382
    .local v4, "senderInfoTitleContainer":Landroid/view/View;
    const v7, 0x7f0c0164

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 384
    .local v6, "senderTitle":Landroid/widget/TextView;
    const v7, 0x7f0c0165

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 387
    .local v5, "senderSubTitle":Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v7, p1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/kingsoft/mail/providers/Conversation;->conversationInfo:Lcom/kingsoft/mail/providers/ConversationInfo;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/ConversationInfo;->messageInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 391
    :cond_1
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v7, p1, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100293

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v7, 0x7f0c0163

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 399
    .local v1, "home_btn":Landroid/widget/ImageButton;
    new-instance v7, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$2;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 394
    .end local v1    # "home_btn":Landroid/widget/ImageButton;
    :cond_3
    iget-object v7, p1, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    goto :goto_1
.end method

.method public isUserVisible()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    return v0
.end method

.method protected markUnread()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    .line 185
    return-void
.end method

.method protected abstract onAccountChanged(Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Account;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    if-nez v2, :cond_0

    .line 281
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "ConversationViewFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    .line 288
    check-cast v2, Lcom/kingsoft/mail/ui/ControllableActivity;

    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 289
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    .line 290
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    invoke-virtual {v2, v0}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->setActivity(Landroid/app/Activity;)V

    .line 291
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    invoke-interface {v3}, Lcom/kingsoft/mail/ui/ControllableActivity;->getAccountController()Lcom/kingsoft/mail/ui/AccountController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/AccountObserver;->initialize(Lcom/kingsoft/mail/ui/AccountController;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 292
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;->setAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 293
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationPagerAdapter;->getInitialConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 295
    .local v1, "initialConversation":Lcom/kingsoft/mail/providers/Conversation;
    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingsoft/mail/providers/Conversation;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v2, v2, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->startMessageBodyDownloadTask(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected onConversationSeen()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 647
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "AbstractConversationViewFragment#onConversationSeen()"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 650
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ControllableActivity;

    .line 651
    .local v0, "activity":Lcom/kingsoft/mail/ui/ControllableActivity;
    if-nez v0, :cond_0

    .line 652
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "ignoring onConversationSeen for conv=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v6, v6, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v5, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 687
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2, v5}, Lcom/kingsoft/mail/ui/ConversationViewState;->setInfoForConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 658
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onConversationSeen() - mSuppressMarkingViewed = %b"

    new-array v6, v3, [Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 664
    iget-boolean v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mSuppressMarkingViewed:Z

    if-nez v2, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v1

    .line 670
    .local v1, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    sget-object v5, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "onConversationSeen() - mConversation.isViewed() = %b, cursor null = %b, cursor.isConversationRead() = %b"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Conversation;->isViewed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v4

    if-nez v1, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v8, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->isConversationRead()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Conversation;->isViewed()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->isConversationRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 676
    :cond_1
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getConversationUpdater()Lcom/kingsoft/mail/ui/ConversationUpdater;

    move-result-object v2

    new-array v5, v3, [Lcom/kingsoft/mail/providers/Conversation;

    iget-object v6, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    aput-object v6, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4, v3, v3}, Lcom/kingsoft/mail/ui/ConversationUpdater;->markConversationsRead(Ljava/util/Collection;ZZ)V

    .line 681
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 682
    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/MessageCursor;->markMessagesRead()V

    .line 686
    .end local v1    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_2
    invoke-interface {v0}, Lcom/kingsoft/mail/ui/ControllableActivity;->getListHandler()Lcom/kingsoft/mail/ui/ConversationListCallbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingsoft/mail/ui/ConversationListCallbacks;->onConversationSeen()V

    goto/16 :goto_0

    .restart local v1    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_3
    move v2, v4

    .line 670
    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method public onConversationTransformed()V
    .locals 3

    .prologue
    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 752
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$4;

    const-string/jumbo v2, "invalidateOptionsMenu"

    invoke-direct {v1, p0, v2, p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$4;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method

.method public abstract onConversationUpdated(Lcom/kingsoft/mail/providers/Conversation;)V
.end method

.method public abstract onConversationViewHeaderHeightChange(I)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->parseArguments()V

    .line 214
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Conversation;->subject:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isTallTitle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1100bc

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->setThemeRes(I)V

    .line 215
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/MailActivity;->getActionbarController()Lcom/kingsoft/mail/ui/ActivityController;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/AbstractActivityController;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivityController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 217
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->setBaseUri()V

    .line 220
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate in ConversationViewFragment (this=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    if-eqz p1, :cond_1

    .line 223
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/ui/ConversationViewState;

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    .line 224
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    .line 225
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    .line 226
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 228
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    .line 235
    :goto_1
    return-void

    .line 214
    :cond_0
    const v0, 0x7f1100bb

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getNewViewState()Lcom/kingsoft/mail/ui/ConversationViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    .line 232
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    .line 233
    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->ensureActionbarHasInited()V

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 512
    invoke-super {p0}, Lmiui/app/Fragment;->onDestroyView()V

    .line 513
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccountObserver:Lcom/kingsoft/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 514
    return-void
.end method

.method public onDetachedModeEntered()V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 738
    .local v0, "messageCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->popOut()V

    .line 743
    :goto_0
    return-void

    .line 741
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    goto :goto_0
.end method

.method public onFoldersClicked()V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mChangeFoldersMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to open \'change folders\' dialog for a conversation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/kingsoft/mail/ui/ControllableActivity;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mChangeFoldersMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/ui/ControllableActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method protected abstract onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)V
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
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    .line 240
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 475
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    .line 245
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_VIEW_STATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mViewState:Lcom/kingsoft/mail/ui/ConversationViewState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 502
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_USER_VISIBLE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_DETACHED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_TRANSFORMED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationBeenTransformed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->BUNDLE_KEY_HAS_CONVERSATION_BEEN_REVERTED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    return-void
.end method

.method public onSelected(J)V
    .locals 0
    .param p1, "initConversationID"    # J

    .prologue
    .line 645
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Lmiui/app/Fragment;->onStart()V

    .line 494
    invoke-static {}, Lcom/kingsoft/mail/analytics/Analytics;->getInstance()Lcom/kingsoft/mail/analytics/Tracker;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/analytics/Tracker;->sendView(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public abstract onUserVisibleHintChanged()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 435
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->ensureActionbarHasInited()V

    .line 436
    return-void
.end method

.method protected parseArguments()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 252
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Account;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 253
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    iput-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 254
    return-void
.end method

.method protected setBaseUri()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "x-thread://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v1, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBaseUri:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setExtraUserVisibleHint(Z)V
    .locals 6
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 521
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "in CVF.setHint, val=%s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 522
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    if-eq v1, p1, :cond_0

    .line 523
    iput-boolean p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    .line 524
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getMessageCursor()Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v0

    .line 525
    .local v0, "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    iget-boolean v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onError()V

    .line 532
    .end local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_0
    :goto_0
    return-void

    .line 530
    .restart local v0    # "cursor":Lcom/kingsoft/mail/browse/MessageCursor;
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onUserVisibleHintChanged()V

    goto :goto_0
.end method

.method public shouldApplyTransforms()Z
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget v0, v0, Lcom/kingsoft/mail/providers/Account;->enableMessageTransforms:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showUntransformedConversation()V
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mHasConversationTransformBeenReverted:Z

    .line 769
    return-void
.end method

.method public startMessageBodyDownloadTask(Ljava/lang/Long;)V
    .locals 10
    .param p1, "msgId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x1

    .line 784
    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->setRetainInstance(Z)V

    .line 785
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget v3, v3, Lcom/kingsoft/mail/providers/Conversation;->flagLoaded:I

    if-ne v4, v3, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isRemoving()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3

    .line 790
    :cond_2
    iput-boolean v4, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUnloadedMessage:Z

    goto :goto_0

    .line 793
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUnloadedMessage:Z

    .line 794
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 795
    .local v8, "manager":Landroid/app/FragmentManager;
    new-instance v3, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    invoke-direct {v3}, Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;-><init>()V

    iput-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    .line 796
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mBodyDlg:Lcom/kingsoft/email/callback/MessageBodySync$DownloadingDialogFragment;

    const-string/jumbo v9, "DownloadingDialog"

    invoke-virtual {v3, v4, v9}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 797
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->getMessageBodySynclistener()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    move-result-object v6

    .line 801
    .local v6, "listener":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v0

    .line 802
    .local v0, "bodyLoad":Lcom/kingsoft/email/callback/MessageBodySync;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 806
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Conversation;->accountUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "key":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 809
    .local v1, "accountKey":J
    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-wide v3, v3, Lcom/kingsoft/mail/providers/Conversation;->mailboxKey:J

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodyOpenRequests(JJLjava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    goto/16 :goto_0
.end method

.method abstract supportsMessageTransforms()Z
.end method

.method protected timerMark(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/kingsoft/mail/utils/Utils;->sConvLoadTimer:Lcom/kingsoft/mail/perf/SimpleTimer;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/perf/SimpleTimer;->mark(Ljava/lang/String;)V

    .line 542
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Lmiui/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v1, :cond_1

    .line 273
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
