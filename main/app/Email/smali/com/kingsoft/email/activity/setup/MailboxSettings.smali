.class public Lcom/kingsoft/email/activity/setup/MailboxSettings;
.super Lcom/kingsoft/mail/ui/BasePreferenceActivity;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;
    }
.end annotation


# static fields
.field private static final BUNDLE_MAILBOX:Ljava/lang/String; = "MailboxSettings.mailbox"

.field private static final BUNDLE_MAX_LOOKBACK:Ljava/lang/String; = "MailboxSettings.maxLookback"

.field private static final BUNDLE_SYNC_ENABLED_VALUE:Ljava/lang/String; = "MailboxSettings.syncEnabled"

.field private static final BUNDLE_SYNC_WINDOW_VALUE:Ljava/lang/String; = "MailboxSettings.syncWindow"

.field private static final EXTRA_MAILBOX_ID:Ljava/lang/String; = "MAILBOX_ID"

.field private static final MAX_EMAIL_LOOKBACK_COLUMN:I = 0x0

.field private static final MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

.field private static final POLICY_KEY_COLUMN:I = 0x0

.field private static final POLICY_KEY_PROJECTION:[Ljava/lang/String;

.field private static final PREF_SYNC_ENABLED_KEY:Ljava/lang/String; = "sync_enabled"

.field private static final PREF_SYNC_WINDOW_KEY:Ljava/lang/String; = "sync_window"


# instance fields
.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMaxLookback:I

.field private final mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mSyncLookbackPref:Landroid/preference/ListPreference;

.field private final mTaskTracker:Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

.field subTitleTv:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "policyKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->POLICY_KEY_PROJECTION:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "maxEmailLookback"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 296
    new-instance v0, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings$1;-><init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/kingsoft/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;
    .param p1, "x1"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$202(Lcom/kingsoft/email/activity/setup/MailboxSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->POLICY_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->MAX_EMAIL_LOOKBACK_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$800(Lcom/kingsoft/email/activity/setup/MailboxSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/MailboxSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    return-void
.end method

.method private enablePreferences(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 143
    return-void
.end method

.method private initializeActionBar()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 383
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040027

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 384
    .local v2, "mActionBarView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 385
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 387
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 390
    .local v1, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 392
    const/16 v3, 0x10

    .line 393
    .local v3, "mask":I
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 394
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 395
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 396
    const v4, 0x7f0c00af

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->title:Landroid/widget/TextView;

    .line 397
    const v4, 0x7f0c00b0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->subTitleTv:Landroid/widget/TextView;

    .line 398
    const v4, 0x7f0c00a4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/kingsoft/email/activity/setup/MailboxSettings$3;

    invoke-direct {v5, p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings$3;-><init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .end local v1    # "lp":Landroid/app/ActionBar$LayoutParams;
    .end local v3    # "mask":I
    :cond_0
    return-void
.end method

.method private onDataLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 269
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 273
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 281
    .local v1, "mailboxName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 282
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->subTitleTv:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->initializeActionBar()V

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->subTitleTv:Landroid/widget/TextView;

    const v3, 0x7f100231

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I

    invoke-static {p0, v2, v3, v5}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V

    .line 293
    return-void

    .line 288
    :cond_2
    const v2, 0x7f100232

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private saveToDatabase()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    move v4, v0

    .line 316
    .local v4, "syncInterval":I
    :goto_0
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "mSyncLookbackPrefValue":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 361
    :cond_0
    :goto_1
    return-void

    .end local v4    # "syncInterval":I
    .end local v10    # "mSyncLookbackPrefValue":Ljava/lang/String;
    :cond_1
    move v4, v1

    .line 314
    goto :goto_0

    .line 320
    .restart local v4    # "syncInterval":I
    .restart local v10    # "mSyncLookbackPrefValue":Ljava/lang/String;
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 323
    .local v6, "syncLookback":I
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-eq v4, v11, :cond_4

    move v3, v0

    .line 324
    .local v3, "syncIntervalChanged":Z
    :goto_2
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    if-eq v6, v11, :cond_5

    move v5, v0

    .line 327
    .local v5, "syncLookbackChanged":Z
    :goto_3
    if-nez v3, :cond_3

    if-eqz v5, :cond_0

    .line 328
    :cond_3
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Saving mailbox settings..."

    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    invoke-direct {p0, v1}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 331
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 332
    .local v7, "id":J
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 334
    .local v9, "context":Landroid/content/Context;
    new-instance v0, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;-><init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;ZIZIJLandroid/content/Context;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings$2;->executeSerial([Ljava/lang/Object;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    goto :goto_1

    .end local v3    # "syncIntervalChanged":Z
    .end local v5    # "syncLookbackChanged":Z
    .end local v7    # "id":J
    .end local v9    # "context":Landroid/content/Context;
    :cond_4
    move v3, v1

    .line 323
    goto :goto_2

    .restart local v3    # "syncIntervalChanged":Z
    :cond_5
    move v5, v1

    .line 324
    goto :goto_3
.end method

.method public static setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "maxLookback"    # I
    .param p3, "showWithDefault"    # Z

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 242
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz p3, :cond_1

    .line 243
    const v5, 0x7f090008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 245
    .local v0, "entries":[Ljava/lang/CharSequence;
    const v5, 0x7f09000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 247
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 254
    .local v1, "offset":I
    :goto_0
    if-lez p2, :cond_0

    .line 255
    add-int v3, p2, v1

    .line 256
    .local v3, "size":I
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entries":[Ljava/lang/CharSequence;
    check-cast v0, [Ljava/lang/CharSequence;

    .line 257
    .restart local v0    # "entries":[Ljava/lang/CharSequence;
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "values":[Ljava/lang/CharSequence;
    check-cast v4, [Ljava/lang/CharSequence;

    .line 260
    .end local v3    # "size":I
    .restart local v4    # "values":[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return-void

    .line 249
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "offset":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :cond_1
    const v5, 0x7f090006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    .restart local v0    # "entries":[Ljava/lang/CharSequence;
    const v5, 0x7f090009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 251
    .restart local v4    # "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method public static final start(Landroid/app/Activity;J)V
    .locals 2
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "mailboxId"    # J

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method


# virtual methods
.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x4

    .line 104
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "MAILBOX_ID"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 107
    .local v1, "mailboxId":J
    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->finish()V

    .line 138
    :goto_0
    return-void

    .line 112
    :cond_0
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->addPreferencesFromResource(I)V

    .line 114
    const-string/jumbo v3, "sync_enabled"

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string/jumbo v3, "sync_window"

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    .line 117
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    if-eqz p1, :cond_2

    .line 120
    const-string/jumbo v3, "MailboxSettings.mailbox"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 121
    const-string/jumbo v3, "MailboxSettings.maxLookback"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I

    .line 122
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "MailboxSettings.syncEnabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    const-string/jumbo v4, "MailboxSettings.syncWindow"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->onDataLoaded()V

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->initializeActionBar()V

    goto :goto_0

    .line 127
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->enablePreferences(Z)V

    .line 128
    new-instance v4, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;

    invoke-direct {v4, p0, v1, v2}, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;-><init>(Lcom/kingsoft/email/activity/setup/MailboxSettings;J)V

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/kingsoft/email/activity/setup/MailboxSettings$LoadMailboxTask;->executeParallel([Ljava/lang/Object;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 166
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->onBackPressed()V

    .line 367
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 173
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->saveToDatabase()V

    .line 174
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onPause()V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onResume()V

    .line 180
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string/jumbo v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const-string/jumbo v0, "MailboxSettings.maxLookback"

    iget v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mMaxLookback:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string/jumbo v0, "MailboxSettings.syncEnabled"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string/jumbo v0, "MailboxSettings.syncWindow"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/MailboxSettings;->mSyncLookbackPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
