.class public Lcom/kingsoft/mail/browse/EmlViewerActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "EmlViewerActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/browse/ConversationAccountController;
.implements Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/EmlViewerActivity$1;,
        Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;
    }
.end annotation


# static fields
.field private static final ACCOUNT_LOADER:I = 0x0

.field public static final EXTRA_ACCOUNT_URI:Ljava/lang/String; = "extra-account-uri"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "eml_message_fragment"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SAVED_ACCOUNT:Ljava/lang/String; = "saved-account"


# instance fields
.field private mAccount:Lcom/kingsoft/mail/providers/Account;

.field private final mAccountLoadCallbacks:Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

.field private mAccountUri:Landroid/net/Uri;

.field private mHelpItem:Landroid/view/MenuItem;

.field private mSendFeedbackItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;-><init>(Lcom/kingsoft/mail/browse/EmlViewerActivity;Lcom/kingsoft/mail/browse/EmlViewerActivity$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountLoadCallbacks:Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    .line 173
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/EmlViewerActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/EmlViewerActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/browse/EmlViewerActivity;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/EmlViewerActivity;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object p1
.end method


# virtual methods
.method public getAccount()Lcom/kingsoft/mail/providers/Account;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 165
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v4, 0x7f040081

    invoke-virtual {p0, v4}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v4, "extra-account-uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    .line 79
    if-nez p1, :cond_3

    .line 80
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/kingsoft/mail/utils/MimeType;->isEmlMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 83
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const v4, 0x7f0c01e6

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->newInstance(Landroid/net/Uri;Landroid/net/Uri;)Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    move-result-object v5

    const-string/jumbo v6, "eml_message_fragment"

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 85
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccountLoadCallbacks:Lcom/kingsoft/mail/browse/EmlViewerActivity$AccountLoadCallbacks;

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 104
    :cond_1
    :goto_1
    return-void

    .line 87
    :cond_2
    sget-object v4, Lcom/kingsoft/mail/browse/EmlViewerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Entered EmlViewerActivity with wrong intent action or type: %s, %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/EmlViewerActivity;->finish()V

    goto :goto_1

    .line 94
    :cond_3
    const-string/jumbo v4, "saved-account"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string/jumbo v4, "saved-account"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/mail/providers/Account;

    iput-object v4, p0, Lcom/kingsoft/mail/browse/EmlViewerActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 109
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 114
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 115
    return-void
.end method
