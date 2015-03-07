.class public Lcom/kingsoft/email/activity/setup/AccountSettings;
.super Lcom/kingsoft/mail/ui/BasePreferenceActivity;
.source "AccountSettings.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
.implements Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;,
        Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;,
        Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;,
        Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;,
        Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static ACTION_ACCOUNT_MANAGER_ENTRY:Ljava/lang/String; = null

.field private static final ADD_ACCOUNT_REQUEST_CODE:I = 0x2

.field private static final EXTRA_ACCOUNT_MANAGER_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_ENABLE_DEBUG:Ljava/lang/String; = "AccountSettings.enable_debug"

.field private static final EXTRA_LOGIN_ACCOUNT_ID:Ljava/lang/String; = "AccountSettings.accountid"

.field private static final EXTRA_LOGIN_WARNING_FOR_ACCOUNT:Ljava/lang/String; = "AccountSettings.for_account"

.field private static final EXTRA_LOGIN_WARNING_REASON_FOR_ACCOUNT:Ljava/lang/String; = "AccountSettings.for_account_reason"

.field public static final EXTRA_NO_ACCOUNTS:Ljava/lang/String; = "AccountSettings.no_account"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "AccountSettings.title"

.field private static final FEEDBACK_CREATE_ACCOUNT:I = 0x3

.field private static final HEADER_TITLE_MAX_LENGTH:I = 0x14

.field private static final HEADER_TITLE_SUF:Ljava/lang/String; = "..."

.field private static final QUICK_RESPONSE_ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final SECRET_KEY_CODES:[I

.field private static final SELECTION_ACCOUNT_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress=?"


# instance fields
.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mAccountServerSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mDeletingAccountId:J

.field private mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAccountIdFromAccountTask:Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mRequestedAccountId:J

.field private mSecretKeyCodeIndex:I

.field private mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

.field private mShowDebugMenu:Z

.field private showMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x1e
        0x31
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;-><init>()V

    .line 118
    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 125
    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    .line 144
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    .line 146
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->showMenu:Z

    .line 988
    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->updateAccounts()V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountSettings;)[Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$502(Lcom/kingsoft/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p1, "x1"    # [Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kingsoft/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p1, "x1"    # [Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->invalidateHeaderPreferences([Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method static synthetic access$702(Lcom/kingsoft/email/activity/setup/AccountSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/kingsoft/email/activity/setup/AccountSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettings;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    return-wide p1
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 1
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "accountId"    # J

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p1, p2, v0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .locals 3
    .param p0, "fromContext"    # Landroid/content/Context;

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    const-string/jumbo v1, "AccountSettings.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method private addAccountPreferencesEntry(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 575
    :cond_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 558
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 559
    .local v0, "accountCategory":Landroid/preference/PreferenceCategory;
    const v5, 0x7f1001f2

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 560
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 563
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 564
    .local v4, "preferences":Landroid/preference/Preference;
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v5, v1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v5, Lcom/kingsoft/email/activity/setup/AccountSettings$2;

    invoke-direct {v5, p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettings$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Landroid/preference/PreferenceActivity$Header;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 573
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addOtherPrefereces()V
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 579
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, "accountCategory":Landroid/preference/PreferenceCategory;
    const v3, 0x7f1001f4

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 581
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 583
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSettings;->addPreferencesFromResource(I)V

    .line 584
    const-string/jumbo v3, "feed_back"

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 585
    .local v1, "feedBack":Landroid/preference/Preference;
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSettings$3;

    invoke-direct {v3, p0}, Lcom/kingsoft/email/activity/setup/AccountSettings$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 602
    return-void
.end method

.method public static createAccountSettingsIntent(JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "loginWarningAccountName"    # Ljava/lang/String;
    .param p3, "loginWarningReason"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v2, "settings"

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    .local v0, "b":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .local v1, "i":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 168
    const-string/jumbo v2, "AccountSettings.for_account"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    .line 171
    const-string/jumbo v2, "AccountSettings.for_account_reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_1
    const-string/jumbo v2, "AccountSettings.accountid"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    return-object v1
.end method

.method private enableDebugMenu()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 445
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->invalidateHeaders()V

    .line 446
    return-void
.end method

.method private forceBack()V
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 730
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 731
    return-void
.end method

.method private forceSwitchHeader(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 720
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->setSelection(I)V

    .line 721
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 722
    return-void
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 543
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 545
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f1001f5

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 546
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 547
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 548
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/kingsoft/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private headerHasChanged([Landroid/preference/PreferenceActivity$Header;)Z
    .locals 5
    .param p1, "newHeaders"    # [Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_2

    if-nez p1, :cond_0

    .line 472
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_3

    move v1, v2

    .line 473
    goto :goto_0

    .line 475
    :cond_3
    array-length v3, p1

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 478
    array-length v3, p1

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 480
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    move v1, v2

    .line 485
    goto :goto_0
.end method

.method private invalidateHeaderPreferences([Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "newHeaders"    # [Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->headerHasChanged([Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 608
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onBuildHeaderPreferences([Landroid/preference/PreferenceActivity$Header;)V

    .line 610
    :cond_0
    return-void
.end method

.method private launchMailboxSettings(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    const-string/jumbo v3, "extra_folder"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Folder;

    .line 435
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    iget-object v3, v0, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    iget-object v3, v3, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 438
    .local v1, "mailboxId":J
    invoke-static {p0, v1, v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    .line 439
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->finish()V

    .line 440
    return-void
.end method

.method private limitHeaderTitleLength(Landroid/preference/PreferenceActivity$Header;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/16 v3, 0x14

    .line 1115
    if-eqz p1, :cond_0

    .line 1116
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 1117
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1121
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onAddNewAccount()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionNewAccountWithResult4Result(Landroid/app/Activity;I)V

    .line 451
    return-void
.end method

.method private updateAccounts()V
    .locals 6

    .prologue
    .line 457
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 458
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 461
    return-void
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 868
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/kingsoft/email/activity/setup/AccountSettings$4;

    invoke-direct {v2, p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettings$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/android/emailcommon/provider/Account;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 878
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 880
    .local v0, "prefsHeader":Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettings;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 881
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    .line 882
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->updateAccounts()V

    .line 888
    .end local v0    # "prefsHeader":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->finish()V

    goto :goto_0
.end method

.method public getAccountListHeaders()[Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1059
    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 179
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 180
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    .line 181
    .local v0, "accountId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 191
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 184
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 185
    .local v3, "modIntent":Landroid/content/Intent;
    const-string/jumbo v4, ":android:show_fragment"

    const-class v5, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v4, ":android:show_fragment_args"

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->getAccountNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v4, ":android:no_headers"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v2, v3

    .line 191
    goto :goto_0
.end method

.method public getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 1102
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1078
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1083
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1085
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->finish()V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1090
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/Utils;->sendFeedback(Lcom/kingsoft/mail/ui/FeedbackEnabledActivity;Z)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 735
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 736
    instance-of v2, p1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_1

    .line 737
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->showMenu:Z

    move-object v1, p1

    .line 738
    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .line 739
    .local v1, "asf":Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 748
    .end local v1    # "asf":Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    :goto_0
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 751
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->invalidateOptionsMenu()V

    .line 752
    :cond_0
    return-void

    .line 740
    :cond_1
    instance-of v2, p1, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    .line 741
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->showMenu:Z

    move-object v0, p1

    .line 742
    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    .line 743
    .local v0, "asbf":Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountServerSettingsFragmentCallback:Lcom/kingsoft/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onBackPressed()V

    .line 426
    return-void
.end method

.method public onBuildHeaderPreferences([Landroid/preference/PreferenceActivity$Header;)V
    .locals 10
    .param p1, "newHeaders"    # [Landroid/preference/PreferenceActivity$Header;

    .prologue
    const-wide/16 v8, -0x1

    .line 493
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-nez v4, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 497
    :cond_0
    if-eqz p1, :cond_3

    .line 498
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v3, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    array-length v1, p1

    .line 500
    .local v1, "headerCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 501
    aget-object v0, p1, v2

    .line 502
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_1

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 503
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 504
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 506
    iput-wide v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 500
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    invoke-direct {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSettings;->addAccountPreferencesEntry(Ljava/util/List;)V

    .line 515
    .end local v1    # "headerCount":I
    .end local v2    # "index":I
    .end local v3    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    if-nez v4, :cond_4

    .line 516
    new-instance v4, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    .line 518
    :cond_4
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->onCreate()V

    .line 520
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->addOtherPrefereces()V

    .line 536
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "title":Ljava/lang/String;
    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    .line 400
    const-string/jumbo v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-static {p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 210
    sget-object v10, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    invoke-virtual {v10, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 213
    .local v4, "i":Landroid/content/Intent;
    if-nez p1, :cond_8

    .line 217
    sget-object v10, Lcom/kingsoft/email/activity/setup/AccountSettings;->ACTION_ACCOUNT_MANAGER_ENTRY:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 218
    const v10, 0x7f100205

    invoke-virtual {p0, v10}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/emailcommon/service/ServiceProxy;->getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/kingsoft/email/activity/setup/AccountSettings;->ACTION_ACCOUNT_MANAGER_ENTRY:Ljava/lang/String;

    .line 222
    :cond_0
    sget-object v10, Lcom/kingsoft/email/activity/setup/AccountSettings;->ACTION_ACCOUNT_MANAGER_ENTRY:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 224
    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Lcom/kingsoft/email/activity/setup/AccountSettings$1;)V

    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/content/Intent;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    .line 254
    :cond_1
    :goto_0
    const-string/jumbo v10, "AccountSettings.enable_debug"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mShowDebugMenu:Z

    .line 256
    const-string/jumbo v10, "AccountSettings.title"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "title":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 258
    invoke-virtual {p0, v9}, Lcom/kingsoft/email/activity/setup/AccountSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 265
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onIsHidingHeaders()Z

    move-result v10

    if-nez v10, :cond_3

    .line 266
    new-instance v10, Lcom/kingsoft/email/activity/setup/AccountSettings$1;

    invoke-static {}, Lcom/kingsoft/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/kingsoft/email/activity/setup/AccountSettings$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettings;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    .line 272
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->updateAccounts()V

    .line 276
    :cond_3
    const-string/jumbo v10, "AccountSettings.accountid"

    const-wide/16 v11, -0x64

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 277
    .local v1, "accountId":J
    const-wide/16 v10, -0x64

    cmp-long v10, v1, v10

    if-eqz v10, :cond_4

    .line 278
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 279
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 281
    const-string/jumbo v10, "AccountSettings.for_account"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "loginWarningAccount":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 283
    invoke-virtual {p0, v7}, Lcom/kingsoft/email/activity/setup/AccountSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "accountId":J
    .end local v7    # "loginWarningAccount":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 227
    :cond_5
    const-string/jumbo v10, "extra_folder"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 228
    invoke-direct {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSettings;->launchMailboxSettings(Landroid/content/Intent;)V

    goto :goto_1

    .line 230
    :cond_6
    const-string/jumbo v10, "AccountSettings.no_account"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 231
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionNewAccountWithResult(Landroid/app/Activity;)V

    .line 233
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/kingsoft/email/activity/setup/AccountSettings;->overridePendingTransition(II)V

    .line 234
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->finish()V

    .line 235
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/kingsoft/email/activity/setup/AccountSettings;->overridePendingTransition(II)V

    goto :goto_1

    .line 239
    :cond_7
    invoke-static {v4}, Lcom/kingsoft/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mRequestedAccountId:J

    .line 240
    const-string/jumbo v10, "AccountSettings.for_account"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .restart local v7    # "loginWarningAccount":Ljava/lang/String;
    const-string/jumbo v10, "AccountSettings.for_account_reason"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "loginWarningReason":Ljava/lang/String;
    const-string/jumbo v10, "AccountSettings.accountid"

    const-wide/16 v11, -0x64

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 244
    .local v5, "id":J
    if-eqz v7, :cond_1

    .line 246
    invoke-static {v7, v8, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;

    move-result-object v3

    .line 248
    .local v3, "dialog":Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string/jumbo v11, "loginwarning"

    invoke-virtual {v3, v10, v11}, Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v3    # "dialog":Lcom/kingsoft/email/activity/setup/AccountSettings$LoginWarningDialog;
    .end local v5    # "id":J
    .end local v7    # "loginWarningAccount":Ljava/lang/String;
    .end local v8    # "loginWarningReason":Ljava/lang/String;
    :cond_8
    const-string/jumbo v10, "com.android.email.setupdata"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 355
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onDestroy()V

    .line 315
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 316
    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mLoadAccountListTask:Lcom/kingsoft/email/activity/setup/AccountSettings$LoadAccountListTask;

    .line 317
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 318
    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGetAccountIdFromAccountTask:Lcom/kingsoft/email/activity/setup/AccountSettings$GetAccountIdFromAccountTask;

    .line 319
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountObserver:Landroid/database/ContentObserver;

    .line 323
    :cond_0
    return-void
.end method

.method public onEditQuickResponses(Lcom/kingsoft/mail/providers/Account;)V
    .locals 10
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 835
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 836
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "account"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 837
    const-class v0, Lcom/kingsoft/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f10002d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kingsoft/email/activity/setup/AccountSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v7

    .line 840
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error while trying to invoke edit quick responses."

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v8

    invoke-static {v0, v1, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 2
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 698
    :cond_0
    if-nez p2, :cond_2

    .line 699
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    .line 700
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 708
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 704
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mNumGeneralHeaderClicked:I

    goto :goto_1
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v4, 0x1

    .line 849
    :try_start_0
    new-instance v1, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILcom/android/emailcommon/provider/Account;)V

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 855
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while trying to invoke store settings."

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/kingsoft/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 339
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 340
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/kingsoft/email/activity/setup/AccountSettings;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 341
    iput v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    .line 342
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->enableDebugMenu()V

    .line 347
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 345
    :cond_1
    iput v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 385
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 387
    :goto_0
    return v0

    .line 379
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 387
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->onAddNewAccount()V

    goto :goto_1

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c028e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onPause()V

    .line 307
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->onPause()V

    .line 310
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 363
    const v1, 0x7f0c028e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    .local v0, "addNewAccount":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 365
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->showMenu:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onResume()V

    .line 299
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mGeneralPreferencesController:Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->onResume()V

    .line 302
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    const-string/jumbo v0, "com.android.email.setupdata"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 815
    const-string/jumbo v4, "account_description"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 816
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v4, :cond_0

    .line 817
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    .local v0, "arr$":[Landroid/preference/PreferenceActivity$Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 818
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 821
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 822
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->invalidateHeaders()V

    .line 828
    .end local v0    # "arr$":[Landroid/preference/PreferenceActivity$Header;
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void

    .line 817
    .restart local v0    # "arr$":[Landroid/preference/PreferenceActivity$Header;
    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onStop()V

    .line 329
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/EmailApplication;->setApplicationIconNumber(Z)V

    .line 330
    return-void
.end method

.method public setSetupData(Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettings;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 1070
    return-void
.end method
