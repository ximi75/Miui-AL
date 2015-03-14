.class public Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;
.super Lmiui/preference/PreferenceFragment;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePreferenceFragment"
.end annotation


# static fields
.field private static final ACCOUNT_SETTINGS_MAIL_CHECK_FREQUENCY_LABEL:Ljava/lang/String; = "account_settings_mail_check_frequency_label"

.field private static final ACCOUNT_SETTINGS_NAME_LABEL:Ljava/lang/String; = "account_settings_name_label"

.field private static final ACCOUNT_SETUP_OPTIONS_MAIL_WINDOW_LABEL:Ljava/lang/String; = "account_setup_options_mail_window_label"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private account_options_common_cate:Landroid/preference/PreferenceCategory;

.field private account_options_sync_cate:Landroid/preference/PreferenceCategory;

.field private account_options_tips:Landroid/preference/PreferenceCategory;

.field private account_settings_background_attachments_summary:Landroid/preference/CheckBoxPreference;

.field private account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

.field private account_settings_name_label:Landroid/preference/EditTextPreference;

.field private account_settings_sync_calendar_summary:Landroid/preference/CheckBoxPreference;

.field private account_settings_sync_contacts_summary:Landroid/preference/CheckBoxPreference;

.field private account_setup_options_mail_window_label:Landroid/preference/ListPreference;

.field private done_action:Lmiui/preference/ButtonPreference;

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

.field private mCreateAccountDialog:Lmiui/app/ProgressDialog;

.field private mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field private mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

.field private mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    .line 414
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 162
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->onDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/AccountSetupOptions;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->optionsComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)Lcom/kingsoft/email/activity/setup/SetupData;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    return-object v0
.end method

.method private getIndexFromList([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "entry"    # [Ljava/lang/Object;

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 286
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    move v1, v0

    .line 291
    :cond_0
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    .line 217
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-object v3, v3, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 218
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-object v3, v3, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 224
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->setNickName(Z)V

    .line 225
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->setEndTips()V

    .line 226
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 227
    .local v1, "mRecvHost":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v0, v3

    .line 228
    .local v0, "freq_len":I
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 229
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v2, v3

    .line 233
    .local v2, "mail_window":I
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 234
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_calendar_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 236
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_contacts_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_background_attachments_summary:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v3, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    if-nez v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_sync_cate:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_contacts_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_sync_cate:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v3, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    if-nez v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_sync_cate:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_calendar_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v3, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerAttachmentPreload:Z

    if-nez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_common_cate:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_background_attachments_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->invalidateOptionsMenu()V

    .line 252
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "button_preference"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->done_action:Lmiui/preference/ButtonPreference;

    .line 167
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->done_action:Lmiui/preference/ButtonPreference;

    const v1, 0x7f10017c

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->done_action:Lmiui/preference/ButtonPreference;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    const-string/jumbo v0, "account_settings_name_label"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    .line 176
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string/jumbo v0, "account_settings_mail_check_frequency_label"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    .line 178
    const-string/jumbo v0, "account_setup_options_mail_window_label"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    .line 179
    const-string/jumbo v0, "account_settings_sync_contacts_summary"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_contacts_summary:Landroid/preference/CheckBoxPreference;

    .line 180
    const-string/jumbo v0, "account_settings_sync_calendar_summary"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_calendar_summary:Landroid/preference/CheckBoxPreference;

    .line 181
    const-string/jumbo v0, "account_settings_background_attachments_summary"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_background_attachments_summary:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string/jumbo v0, "account_options_tips"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_tips:Landroid/preference/PreferenceCategory;

    .line 184
    const-string/jumbo v0, "account_options_sync_cate"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_sync_cate:Landroid/preference/PreferenceCategory;

    .line 185
    const-string/jumbo v0, "account_options_common_cate"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_common_cate:Landroid/preference/PreferenceCategory;

    .line 187
    return-void
.end method

.method public static initialize()Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;-><init>()V

    return-object v0
.end method

.method private onDone()V
    .locals 14

    .prologue
    .line 324
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v12}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 325
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 392
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v12, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v12, :cond_1

    .line 328
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "in AccountSetupOptions with null mHostAuthRecv"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 332
    :cond_1
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "accountName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v12, "@"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 335
    const-string/jumbo v4, ""

    .line 336
    .local v4, "domain":Ljava/lang/String;
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 337
    :cond_2
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 338
    .local v8, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v9, v8, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 339
    .local v9, "ser":Ljava/lang/String;
    const-string/jumbo v12, "."

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 340
    .local v5, "i":I
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 344
    .end local v5    # "i":I
    .end local v8    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v9    # "ser":Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    .end local v4    # "domain":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->setNickName(Z)V

    .line 351
    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v12

    and-int/lit16 v7, v12, -0x4001

    .line 355
    .local v7, "newFlags":I
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v12, v12, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerAttachmentPreload:Z

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_background_attachments_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 357
    or-int/lit16 v7, v7, 0x4000

    .line 359
    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    .line 360
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v12, v12, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    if-eqz v12, :cond_5

    .line 361
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 363
    :cond_5
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 364
    iget v12, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 365
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v12}, Lcom/kingsoft/email/activity/setup/SetupData;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 366
    iget v12, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 367
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v12}, Lcom/kingsoft/email/activity/setup/SetupData;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v12

    iput-object v12, v0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 369
    :cond_6
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v12, v12, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_calendar_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v2, 0x1

    .line 371
    .local v2, "calendar":Z
    :goto_3
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v12, v12, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_sync_contacts_summary:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v3, 0x1

    .line 373
    .local v3, "contacts":Z
    :goto_4
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->showCreateAccountDialog()V

    .line 374
    const/4 v10, 0x1

    .line 375
    .local v10, "showChatFlag":Z
    const/4 v11, 0x1

    .line 376
    .local v11, "syncEmailFlag":Z
    const/4 v6, 0x1

    .line 377
    .local v6, "mNotifyViewlFlag":Z
    new-instance v12, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;

    invoke-direct {v12, p0, v0, v2, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;Lcom/android/emailcommon/provider/Account;ZZ)V

    invoke-static {v12}, Lcom/kingsoft/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 342
    .end local v2    # "calendar":Z
    .end local v3    # "contacts":Z
    .end local v6    # "mNotifyViewlFlag":Z
    .end local v7    # "newFlags":I
    .end local v10    # "showChatFlag":Z
    .end local v11    # "syncEmailFlag":Z
    .restart local v4    # "domain":Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 369
    .end local v4    # "domain":Ljava/lang/String;
    .restart local v7    # "newFlags":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 371
    .restart local v2    # "calendar":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 347
    .end local v2    # "calendar":Z
    .end local v7    # "newFlags":I
    :catch_0
    move-exception v12

    goto/16 :goto_2
.end method

.method private optionsComplete()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 478
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v1

    .line 480
    .local v1, "authenticatorResponse":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1, v5}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 482
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 488
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 489
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    invoke-static {v4, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 492
    iget v4, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1

    .line 493
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 495
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->saveAccountAndFinish()V

    .line 502
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5, v6}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v3

    .line 506
    .local v3, "proxy":Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_start_0
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/service/EmailServiceProxy;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setEndTips()V
    .locals 5

    .prologue
    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    iget-object v3, v3, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 260
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 261
    .local v1, "protocol":Ljava/lang/String;
    const v2, 0x7f1002f0

    .line 262
    .local v2, "tips":I
    const-string/jumbo v3, "pop3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    const v2, 0x7f1002f1

    .line 264
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 265
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 269
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_options_tips:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 273
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "tips":I
    :goto_1
    return-void

    .line 266
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v1    # "protocol":Ljava/lang/String;
    .restart local v2    # "tips":I
    :cond_1
    const-string/jumbo v3, "eas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const v2, 0x7f1002ed

    goto :goto_0

    .line 270
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "tips":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private setNickName(Z)V
    .locals 3
    .param p1, "isInit"    # Z

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "nickName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 196
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 211
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v0    # "nickName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v0    # "nickName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showCreateAccountDialog()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    .line 402
    :cond_0
    new-instance v0, Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    .line 403
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 404
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 405
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f10005c

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 408
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgResId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->saveAccountAndFinish()V

    .line 470
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 558
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 559
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->addPreferencesFromResource(I)V

    .line 279
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->initView()V

    .line 280
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->initData()V

    .line 281
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->updateData(I)V

    .line 514
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mCreateAccountDialog:Lmiui/app/ProgressDialog;

    .line 518
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDestroy()V

    .line 519
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 549
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->mContext:Lcom/kingsoft/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->finish()V

    .line 551
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "animated_preference"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 299
    check-cast v0, Lmiui/preference/AnimatedPreference;

    .line 300
    .local v0, "animatedPreference":Lmiui/preference/AnimatedPreference;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lmiui/preference/AnimatedPreference;->setAnimating(Z)V

    .line 320
    .end local v0    # "animatedPreference":Lmiui/preference/AnimatedPreference;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 301
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "account_settings_name_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "nickName":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_name_label:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v2    # "nickName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "account_settings_mail_check_frequency_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_settings_mail_check_frequency_label:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getIndexFromList([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_3
    const-string/jumbo v3, "account_setup_options_mail_window_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->account_setup_options_mail_window_label:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;->getIndexFromList([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public saveAccountAndFinish()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupOptions$SimplePreferenceFragment;)V

    .line 544
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 545
    return-void
.end method
