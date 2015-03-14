.class public Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
.super Landroid/app/Fragment;
.source "EmlMessageViewFragment.java"

# interfaces
.implements Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;,
        Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;,
        Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;,
        Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_URI:Ljava/lang/String; = "account_uri"

.field private static final ARG_EML_FILE_URI:Ljava/lang/String; = "eml_file_uri"

.field private static final BASE_URI:Ljava/lang/String; = "x-thread://message/rfc822/"

.field private static final CONTACT_LOADER:I = 0x1

.field private static final FILENAME_LOADER:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_LOADER:I


# instance fields
.field private mAccountUri:Landroid/net/Uri;

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

.field private mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

.field private mEmlFileUri:Landroid/net/Uri;

.field private final mFilenameLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private final mMessageLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

.field private mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

.field private mWebViewClient:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mMessageLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    .line 76
    new-instance v0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/browse/EmlMessageViewFragment$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mFilenameLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    .line 146
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static newInstance(Landroid/net/Uri;Landroid/net/Uri;)Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
    .locals 3
    .param p0, "emlFileUri"    # Landroid/net/Uri;
    .param p1, "accountUri"    # Landroid/net/Uri;

    .prologue
    .line 134
    new-instance v1, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-direct {v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;-><init>()V

    .line 135
    .local v1, "f":Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "eml_file_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    const-string/jumbo v2, "account_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    return-object v1
.end method


# virtual methods
.method public getAccountUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAccountUri:Landroid/net/Uri;

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
    .line 223
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "x-thread://message/rfc822/"

    return-object v0
.end method

.method public bridge synthetic getContactInfoSource()Lcom/kingsoft/mail/ContactInfoSource;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mContactLoaderCallbacks:Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    return-object v0
.end method

.method public getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/EmlViewerActivity;

    return-object v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 195
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewClient()Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isViewOnlyMode()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public isViewVisibleToUser()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->setActivity(Landroid/app/Activity;)V

    .line 172
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "eml_file_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mEmlFileUri:Landroid/net/Uri;

    .line 154
    const-string/jumbo v1, "account_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAccountUri:Landroid/net/Uri;

    .line 156
    new-instance v1, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;-><init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/providers/Account;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mWebViewClient:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;

    .line 157
    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    .line 159
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f1000e1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 178
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->onDestroyView()V

    .line 179
    return-void
.end method

.method public setupConversationHeaderView(Lcom/kingsoft/mail/browse/ConversationViewHeader;)V
    .locals 0
    .param p1, "headerView"    # Lcom/kingsoft/mail/browse/ConversationViewHeader;

    .prologue
    .line 201
    return-void
.end method

.method public setupMessageHeaderVeiledMatcher(Lcom/kingsoft/mail/browse/MessageHeaderView;)V
    .locals 0
    .param p1, "messageHeaderView"    # Lcom/kingsoft/mail/browse/MessageHeaderView;

    .prologue
    .line 229
    return-void
.end method

.method public startMessageLoader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 234
    .local v0, "manager":Landroid/app/LoaderManager;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mMessageLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 235
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mFilenameLoadCallbacks:Lcom/kingsoft/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 236
    return-void
.end method
