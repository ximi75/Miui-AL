.class public Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;
.super Ljava/lang/Object;
.source "GeneralPreferencesController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PREFERENCE_KEY_AUTO_ADVANCE:Ljava/lang/String; = "auto_advance"

.field private static final PREFERENCE_KEY_CONFIRM_DELETE:Ljava/lang/String; = "confirm_delete"

.field private static final PREFERENCE_KEY_CONFIRM_SEND:Ljava/lang/String; = "confirm_send"

.field public static final PREFERENCE_KEY_DONOT_DISTURB:Ljava/lang/String; = "do_not_disturb"

.field private static final PREFERENCE_KEY_HEAD_LOAD:Ljava/lang/String; = "preference_head_load_checkbox"

.field private static final PREFERENCE_KEY_TEXT_ZOOM:Ljava/lang/String; = "text_zoom"


# instance fields
.field private mActivity:Landroid/preference/PreferenceActivity;

.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mHeadLoad:Landroid/preference/CheckBoxPreference;

.field private mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mPreferences:Lcom/kingsoft/email/Preferences;

.field private mSettingsChanged:Z


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mSettingsChanged:Z

    .line 47
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    .line 48
    return-void
.end method

.method private loadSettings()V
    .locals 15

    .prologue
    .line 125
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v10}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v10

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    .line 126
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "auto_advance"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 127
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getAutoAdvanceDirection()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 128
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "confirm_delete"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 131
    .local v1, "confirmDelete":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 132
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v10}, Lcom/kingsoft/email/Preferences;->getConfirmDelete()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    :cond_0
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "confirm_send"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 137
    .local v2, "confirmSend":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_1

    .line 138
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v10}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v10

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    :cond_1
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "conversation-list-sender-image"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 144
    .local v6, "showSenderImages":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_2

    .line 145
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    :cond_2
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "local-search"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 150
    .local v3, "localSearch":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_3

    .line 151
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->getLocalSearch()Z

    move-result v10

    invoke-virtual {v3, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    :cond_3
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "preference_head_load_checkbox"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mHeadLoad:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mHeadLoad:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v11}, Lcom/kingsoft/mail/preferences/MailPrefs;->getHeaderOnlyConfig()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mHeadLoad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string/jumbo v7, ""

    .line 160
    .local v7, "summary":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    .line 161
    .local v4, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual {v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->getFlowSaveTotalSize()J

    move-result-wide v8

    .line 162
    .local v8, "totalSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v10, v8

    if-gez v10, :cond_4

    .line 163
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const v11, 0x7f1001b8

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Lcom/kingsoft/emailcommon/utility/Utility;->bytes2kb(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/preference/PreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 165
    :cond_4
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mHeadLoad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "chat-view"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 170
    .local v0, "chatView":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_5

    .line 171
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    :cond_5
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v11, "do_not_disturb"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 176
    .local v5, "notDisturbPreference":Landroid/preference/Preference;
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 51
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 52
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string/jumbo v3, "AndroidMail.Main"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 56
    .local v1, "ps":Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "generalCategory":Landroid/preference/PreferenceCategory;
    const v2, 0x7f1001f3

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 60
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 62
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v3, "text_zoom"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-string/jumbo v3, "local-search"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->loadSettings()V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mSettingsChanged:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 80
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "key":Ljava/lang/String;
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mSettingsChanged:Z

    .line 97
    const-string/jumbo v2, "confirm_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/Preferences;->setConfirmDelete(Z)V

    .line 121
    :goto_0
    return v1

    .line 100
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "confirm_send"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/Preferences;->setConfirmSend(Z)V

    goto :goto_0

    .line 103
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "auto_advance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mPreferences:Lcom/kingsoft/email/Preferences;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/Preferences;->setAutoAdvanceDirection(I)V

    goto :goto_0

    .line 106
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "conversation-list-sender-image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowSenderImages(Z)V

    goto :goto_0

    .line 109
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "local-search"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setLocalSearch(Z)V

    goto :goto_0

    .line 113
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "preference_head_load_checkbox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setHeaderOnlyConfig(Z)V

    goto :goto_0

    .line 117
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v2, "chat-view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowChatView(Z)V

    goto :goto_0

    .line 121
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 84
    const-string/jumbo v1, "do_not_disturb"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/kingsoft/email/activity/setup/DisturbSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    const/4 v1, 0x1

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferencesController;->mSettingsChanged:Z

    .line 72
    return-void
.end method
