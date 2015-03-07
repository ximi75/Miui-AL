.class public Lcom/kingsoft/email/activity/setup/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREFERENCE_KEY_AUTO_ADVANCE:Ljava/lang/String; = "auto_advance"

.field private static final PREFERENCE_KEY_CONFIRM_DELETE:Ljava/lang/String; = "confirm_delete"

.field private static final PREFERENCE_KEY_CONFIRM_SEND:Ljava/lang/String; = "confirm_send"

.field private static final PREFERENCE_KEY_CONV_LIST_ICON:Ljava/lang/String; = "conversation_list_icon"

.field private static final PREFERENCE_KEY_LOCAL_SEARCH:Ljava/lang/String; = "local_search"

.field private static final PREFERENCE_KEY_TEXT_ZOOM:Ljava/lang/String; = "text_zoom"


# instance fields
.field private mAutoAdvance:Landroid/preference/ListPreference;

.field private mChatView:Landroid/preference/CheckBoxPreference;

.field private mConfirmDelete:Landroid/preference/CheckBoxPreference;

.field private mConfirmSend:Landroid/preference/CheckBoxPreference;

.field private mLocalSearch:Landroid/preference/CheckBoxPreference;

.field private mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mPreferences:Lcom/kingsoft/email/Preferences;

.field private mSettingsChanged:Z

.field mSizeSummaries:[Ljava/lang/CharSequence;

.field private mTextZoom:Landroid/preference/ListPreference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSettingsChanged:Z

    return-void
.end method

.method private clearDisplayImages()V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;->newInstance()Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;

    move-result-object v0

    .line 242
    .local v0, "fragment":Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ClearPictureApprovalsDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/mail/ui/settings/ClearPictureApprovalsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private loadSettings()V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    .line 162
    const-string/jumbo v2, "auto_advance"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    .line 163
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v3}, Lcom/kingsoft/email/Preferences;->getAutoAdvanceDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 164
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string/jumbo v2, "text_zoom"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    .line 167
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v3}, Lcom/kingsoft/email/Preferences;->getTextZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 169
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    :cond_0
    const-string/jumbo v2, "conversation_list_icon"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 174
    .local v0, "convListIcon":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_1

    .line 175
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v1

    .line 176
    .local v1, "showSenderImage":Z
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    .end local v1    # "showSenderImage":Z
    :cond_1
    const-string/jumbo v2, "confirm_delete"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mConfirmDelete:Landroid/preference/CheckBoxPreference;

    .line 181
    const-string/jumbo v2, "confirm_send"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mConfirmSend:Landroid/preference/CheckBoxPreference;

    .line 184
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const-string/jumbo v2, "local_search"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mLocalSearch:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mLocalSearch:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getLocalSearch()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    :cond_2
    const-string/jumbo v2, "chat-view"

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mChatView:Landroid/preference/CheckBoxPreference;

    .line 193
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mChatView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    invoke-virtual {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    .line 201
    return-void
.end method

.method private reloadDynamicSummaries()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    invoke-virtual {v2}, Lcom/kingsoft/email/Preferences;->getTextZoom()I

    move-result v1

    .line 210
    .local v1, "textZoomIndex":I
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "summary":Ljava/lang/CharSequence;
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSizeSummaries:[Ljava/lang/CharSequence;

    aget-object v0, v2, v1

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    .end local v0    # "summary":Ljava/lang/CharSequence;
    .end local v1    # "textZoomIndex":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->setHasOptionsMenu(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 76
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string/jumbo v2, "AndroidMail.Main"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 79
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 83
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "text_zoom"

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string/jumbo v1, "local_search"

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 225
    const v0, 0x7f12000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->clearDisplayImages()V

    .line 233
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c028f
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 102
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSettingsChanged:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 107
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

    .line 111
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "key":Ljava/lang/String;
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSettingsChanged:Z

    .line 114
    const-string/jumbo v2, "auto_advance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mAutoAdvance:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/Preferences;->setAutoAdvanceDirection(I)V

    .line 128
    :goto_0
    return v1

    .line 117
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "text_zoom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mTextZoom:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/Preferences;->setTextZoom(I)V

    .line 119
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->reloadDynamicSummaries()V

    goto :goto_0

    .line 121
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "default-reply-all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setDefaultReplyAll(Z)V

    goto :goto_0

    .line 124
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "conversation_list_icon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowSenderImages(Z)V

    goto :goto_0

    .line 128
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSettingsChanged:Z

    .line 138
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v3, "confirm_delete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mConfirmDelete:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/Preferences;->setConfirmDelete(Z)V

    move v1, v2

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v3, "confirm_send"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mPreferences:Lcom/kingsoft/email/Preferences;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mConfirmSend:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kingsoft/email/Preferences;->setConfirmSend(Z)V

    move v1, v2

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    const-string/jumbo v3, "local_search"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mLocalSearch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setLocalSearch(Z)V

    move v1, v2

    .line 149
    goto :goto_0

    .line 153
    :cond_4
    const-string/jumbo v3, "chat-view"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mChatView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->setShowChatView(Z)V

    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->loadSettings()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/GeneralPreferences;->mSettingsChanged:Z

    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 97
    return-void
.end method
