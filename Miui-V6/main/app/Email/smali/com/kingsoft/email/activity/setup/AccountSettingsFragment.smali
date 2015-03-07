.class public Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;,
        Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_ACCOUNT_EMAIL:Ljava/lang/String; = "AccountSettingsFragment.Email"

.field private static final BUNDLE_KEY_ACCOUNT_ID:Ljava/lang/String; = "AccountSettingsFragment.AccountId"

.field public static final INTENT_CLOSE:Ljava/lang/String; = "com.android.email.activity.setup.AccountSettingsFragment.closeActivity"

.field private static final PREFERENCE_ACCOUNT_ALWAYS_BCC_MYSELF:Ljava/lang/String; = "always_bcc_myself"

.field private static final PREFERENCE_ACCOUNT_DELETE:Ljava/lang/String; = "account_delete"

.field private static final PREFERENCE_ACCOUNT_DELETE_ITEM:Ljava/lang/String; = "account_delete_item"

.field private static final PREFERENCE_ACCOUNT_TYPE_CHANGE:Ljava/lang/String; = "account_change_type"

.field private static final PREFERENCE_BACKGROUND_ATTACHMENTS:Ljava/lang/String; = "account_background_attachments"

.field private static final PREFERENCE_CATEGORY_DATA_USAGE:Ljava/lang/String; = "data_usage"

.field private static final PREFERENCE_CATEGORY_NOTIFICATIONS:Ljava/lang/String; = "account_notifications"

.field private static final PREFERENCE_CATEGORY_POLICIES:Ljava/lang/String; = "account_policies"

.field private static final PREFERENCE_CATEGORY_SERVER:Ljava/lang/String; = "account_servers"

.field public static final PREFERENCE_DESCRIPTION:Ljava/lang/String; = "account_description"

.field private static final PREFERENCE_FREQUENCY:Ljava/lang/String; = "account_check_frequency"

.field private static final PREFERENCE_INCOMING:Ljava/lang/String; = "incoming"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "account_name"

.field private static final PREFERENCE_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PREFERENCE_POLICIES_ENFORCED:Ljava/lang/String; = "policies_enforced"

.field private static final PREFERENCE_POLICIES_RETRY_ACCOUNT:Ljava/lang/String; = "policies_retry_account"

.field private static final PREFERENCE_POLICIES_UNSUPPORTED:Ljava/lang/String; = "policies_unsupported"

.field private static final PREFERENCE_QUICK_RESPONSES:Ljava/lang/String; = "account_quick_responses"

.field private static final PREFERENCE_SIGNATURE:Ljava/lang/String; = "account_signature"

.field private static final PREFERENCE_SYNC_CALENDAR:Ljava/lang/String; = "account_sync_calendar"

.field private static final PREFERENCE_SYNC_CONTACTS:Ljava/lang/String; = "account_sync_contacts"

.field private static final PREFERENCE_SYNC_EMAIL:Ljava/lang/String; = "account_sync_email"

.field private static final PREFERENCE_SYSTEM_FOLDERS:Ljava/lang/String; = "system_folders"

.field private static final PREFERENCE_SYSTEM_FOLDERS_SENT:Ljava/lang/String; = "system_folders_sent"

.field private static final PREFERENCE_SYSTEM_FOLDERS_TRASH:Ljava/lang/String; = "system_folders_trash"

.field private static final RINGTONE_REQUEST_CODE:I


# instance fields
.field private di:Landroid/content/DialogInterface;

.field private handler:Landroid/os/Handler;

.field private mAccount:Lcom/android/emailcommon/provider/Account;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/Preference;

.field private mAccountDirty:Z

.field private mAccountEmail:Ljava/lang/String;

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNames:[Ljava/lang/String;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mBccToMyself:Landroid/preference/CheckBoxPreference;

.field private mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

.field private mChangeAccountType:Landroid/preference/ListPreference;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field public mCloseActivityIntentFilter:Landroid/content/IntentFilter;

.field private mCloseActivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

.field private mInboxNotify:Landroid/preference/CheckBoxPreference;

.field private mInboxRingtone:Landroid/preference/Preference;

.field private mInboxVibrate:Landroid/preference/CheckBoxPreference;

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

.field private mNotificationsCategory:Landroid/preference/PreferenceCategory;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSaveOnExit:Z

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;

.field private mUiAccount:Lcom/kingsoft/mail/providers/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 182
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->handler:Landroid/os/Handler;

    .line 229
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    .line 320
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 1341
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/preferences/FolderPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/mail/preferences/FolderPreferences;)Lcom/kingsoft/mail/preferences/FolderPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/preferences/FolderPreferences;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    return-object p1
.end method

.method static synthetic access$102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->di:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxNotify:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->setRingtoneSummary()V

    return-void
.end method

.method static synthetic access$1500(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mNotificationsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->createDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->showRingtonePicker()V

    return-void
.end method

.method static synthetic access$2100(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->isRepetitions(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/mail/providers/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/providers/Account;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    return-object p1
.end method

.method static synthetic access$402(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$602(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;
    .param p1, "x1"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method public static buildArguments(JLjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 270
    const-string/jumbo v1, "AccountSettingsFragment.Email"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-object v0
.end method

.method private checkProtocol(Ljava/lang/String;)Z
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1326
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "currentProtocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    :goto_0
    return v1

    .line 1331
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "eas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "eas"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1332
    const v2, 0x7f100024

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$NoteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1384
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1385
    .local v4, "scale":F
    const/high16 v7, 0x41a00000

    mul-float/2addr v7, v4

    const/high16 v8, 0x3f000000

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 1386
    .local v5, "space":I
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1387
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1388
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1389
    .local v3, "mAccountNameEdit":Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1391
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5, v9, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1392
    const/16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1393
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1395
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1397
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 1398
    const v7, 0x7f10002c

    invoke-virtual {v0, v7}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 1400
    const v7, 0x7f10029f

    new-instance v8, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;

    invoke-direct {v8, p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$13;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1448
    const v7, 0x7f100107

    new-instance v8, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$14;

    invoke-direct {v8, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$14;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v7, v8}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 1470
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    .line 1472
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1473
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 1474
    .local v6, "timer":Ljava/util/Timer;
    new-instance v7, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$15;

    invoke-direct {v7, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$15;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    const-wide/16 v8, 0xb4

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1485
    .end local v6    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method private getSystemPoliciesList(Lcom/android/emailcommon/provider/Policy;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 660
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eqz v2, :cond_0

    .line 662
    const v2, 0x7f1002e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_0
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v2, :cond_1

    .line 665
    const v2, 0x7f1002e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_1
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v2, :cond_2

    .line 668
    const v2, 0x7f1002e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_2
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v2, :cond_3

    .line 671
    const v2, 0x7f1002e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_3
    iget-boolean v2, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v2, :cond_4

    .line 674
    const v2, 0x7f1002d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_4
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    if-eqz v2, :cond_5

    .line 677
    const v2, 0x7f1002dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5
    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    if-eqz v2, :cond_6

    .line 680
    const v2, 0x7f1002cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_6
    return-object v0
.end method

.method public static getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 275
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AccountSettingsFragment.Email"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isRepetitions(Ljava/lang/String;)Z
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 1508
    :goto_0
    return v6

    .line 1491
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/activity/setup/AccountSettings;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/AccountSettings;->getAccountListHeaders()[Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    .line 1492
    .local v2, "headers":[Landroid/preference/PreferenceActivity$Header;
    if-nez v2, :cond_1

    move v6, v7

    .line 1493
    goto :goto_0

    .line 1495
    :cond_1
    const/4 v5, 0x0

    .line 1496
    .local v5, "match":Z
    const-string/jumbo v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1497
    const-string/jumbo v6, "/"

    const-string/jumbo v8, "\\"

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1499
    :cond_2
    move-object v0, v2

    .local v0, "arr$":[Landroid/preference/PreferenceActivity$Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1500
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v6, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iget-object v6, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1501
    const/4 v5, 0x1

    .line 1505
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    if-eqz v5, :cond_5

    .line 1506
    const/4 v6, 0x1

    goto :goto_0

    .line 1499
    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_5
    move v6, v7

    .line 1508
    goto :goto_0
.end method

.method private loadSettings()V
    .locals 27

    .prologue
    .line 770
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    .line 772
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettingsOffMainThread()V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 777
    .local v13, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v7

    .line 778
    .local v7, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-nez v7, :cond_1

    .line 779
    sget-object v21, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not find service info for account "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " with protocol "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->onBackPressed()V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .local v3, "androidAcct":Landroid/accounts/Account;
    const-string/jumbo v21, "account_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/Preference;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/Preference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 803
    const-string/jumbo v21, "account_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v15

    .line 806
    .local v15, "senderName":Ljava/lang/String;
    if-nez v15, :cond_2

    const-string/jumbo v15, ""

    .line 807
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    .line 812
    .local v8, "mAccountNameEd":Landroid/widget/EditText;
    new-instance v21, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/widget/EditText;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f100169

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/emailcommon/provider/Account;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "accountSignature":Ljava/lang/String;
    const-string/jumbo v21, "account_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    .line 827
    .local v9, "mAccountSignatureEd":Landroid/widget/EditText;
    new-instance v21, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/widget/EditText;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    const v22, 0x7f1002fb

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/kingsoft/mail/ui/settings/SettingsUtils;->updatePreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;I)V

    .line 838
    const-string/jumbo v21, "account_check_frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervalStrings:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervals:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 841
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 846
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 861
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 865
    const-string/jumbo v21, "account_quick_responses"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 876
    const-string/jumbo v21, "data_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 880
    .local v4, "dataUsageCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_a

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v12

    .line 884
    .local v12, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v12, :cond_0

    .line 892
    :goto_2
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 893
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLookback:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 894
    new-instance v21, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const v22, 0x7f1000a2

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/Account;->getSyncLookback()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 897
    const/4 v10, 0x0

    .line 904
    .local v10, "maxLookback":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Lcom/kingsoft/email/activity/setup/MailboxSettings;->setupLookbackPreferenceOptions(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 923
    .end local v10    # "maxLookback":I
    :cond_4
    const-string/jumbo v21, "system_folders"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 925
    .local v5, "folderPrefs":Landroid/preference/PreferenceCategory;
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->requiresSetup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 926
    const-string/jumbo v21, "system_folders_trash"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 927
    .local v18, "trashPreference":Landroid/preference/Preference;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/kingsoft/email/provider/FolderPickerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v6, "i":Landroid/content/Intent;
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v21

    const-string/jumbo v22, "account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 930
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 931
    const-string/jumbo v21, "mailbox_type"

    const/16 v22, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 934
    const-string/jumbo v21, "system_folders_sent"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 935
    .local v16, "sentPreference":Landroid/preference/Preference;
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/kingsoft/email/provider/FolderPickerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    .restart local v6    # "i":Landroid/content/Intent;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 937
    const-string/jumbo v21, "mailbox_type"

    const/16 v22, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 943
    .end local v6    # "i":Landroid/content/Intent;
    .end local v16    # "sentPreference":Landroid/preference/Preference;
    .end local v18    # "trashPreference":Landroid/preference/Preference;
    .end local v19    # "uri":Landroid/net/Uri;
    :goto_3
    const-string/jumbo v21, "account_background_attachments"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    .line 945
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerAttachmentPreload:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 953
    :goto_4
    const-string/jumbo v21, "notifications-enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxNotify:Landroid/preference/CheckBoxPreference;

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 957
    const-string/jumbo v21, "notification-ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxRingtone:Landroid/preference/Preference;

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxRingtone:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxRingtone:Landroid/preference/Preference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 968
    const-string/jumbo v21, "account_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mNotificationsCategory:Landroid/preference/PreferenceCategory;

    .line 972
    const-string/jumbo v21, "notification-vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "vibrator"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .line 975
    .local v20, "vibrator":Landroid/os/Vibrator;
    invoke-virtual/range {v20 .. v20}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 986
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0006

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 987
    const-string/jumbo v21, "always_bcc_myself"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mBccToMyself:Landroid/preference/CheckBoxPreference;

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mBccToMyself:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/kingsoft/mail/preferences/MailPrefs;->getBccToMyself(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mBccToMyself:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 993
    :cond_5
    const-string/jumbo v21, "policies_retry_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 994
    .local v14, "retryAccount":Landroid/preference/Preference;
    const-string/jumbo v21, "account_policies"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 1016
    .local v11, "policiesCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1020
    new-instance v21, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v14}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$10;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1031
    const-string/jumbo v21, "incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$11;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1044
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1066
    :goto_6
    const-string/jumbo v21, "account_sync_contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 1067
    const-string/jumbo v21, "account_sync_calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 1068
    const-string/jumbo v21, "account_sync_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    .line 1069
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1070
    :cond_6
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string/jumbo v22, "com.android.contacts"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1078
    :goto_7
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string/jumbo v22, "com.android.calendar"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1086
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1095
    :goto_9
    const-string/jumbo v21, "account_delete_item"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    new-instance v22, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$12;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1168
    const-string/jumbo v21, "account_change_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1173
    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pop"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const-string/jumbo v22, "2"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1180
    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 853
    .end local v4    # "dataUsageCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "folderPrefs":Landroid/preference/PreferenceCategory;
    .end local v11    # "policiesCategory":Landroid/preference/PreferenceCategory;
    .end local v12    # "policy":Lcom/android/emailcommon/provider/Policy;
    .end local v14    # "retryAccount":Landroid/preference/Preference;
    .end local v20    # "vibrator":Landroid/os/Vibrator;
    :cond_8
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v17

    .line 855
    .local v17, "synced":Z
    if-eqz v17, :cond_9

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 858
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 889
    .end local v17    # "synced":Z
    .restart local v4    # "dataUsageCategory":Landroid/preference/PreferenceCategory;
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "policy":Lcom/android/emailcommon/provider/Policy;
    goto/16 :goto_2

    .line 940
    .restart local v5    # "folderPrefs":Landroid/preference/PreferenceCategory;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 948
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x4000

    move/from16 v21, v0

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    :goto_b
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 948
    :cond_d
    const/16 v21, 0x0

    goto :goto_b

    .line 982
    .restart local v20    # "vibrator":Landroid/os/Vibrator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mNotificationsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 1056
    .restart local v11    # "policiesCategory":Landroid/preference/PreferenceCategory;
    .restart local v14    # "retryAccount":Landroid/preference/Preference;
    :cond_f
    iget-boolean v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 1059
    sget-object v21, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v22, "Account %d has a bad outbound hostauth"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1061
    :cond_10
    const-string/jumbo v21, "account_servers"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    goto/16 :goto_6

    .line 1075
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1083
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 1090
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 1175
    :cond_14
    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "eas"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const-string/jumbo v22, "1"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1177
    :cond_15
    iget-object v0, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "imap"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mChangeAccountType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const-string/jumbo v22, "3"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method private loadSettingsOffMainThread()V
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 763
    return-void
.end method

.method private preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v0, v1, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;->onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 1190
    return-void
.end method

.method private saveSettings()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1198
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v5

    and-int/lit16 v4, v5, -0x4001

    .line 1200
    .local v4, "newFlags":I
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    :goto_0
    or-int/2addr v4, v5

    .line 1203
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v3

    .line 1205
    .local v3, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v0, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v7, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    .local v0, "androidAcct":Landroid/accounts/Account;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v5, "Xiaomi"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f100169

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1214
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/emailcommon/provider/Account;->setSignature(Ljava/lang/String;)V

    .line 1219
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1220
    .local v2, "freq":I
    iget-boolean v5, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    if-nez v5, :cond_0

    iget-boolean v5, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    if-eqz v5, :cond_6

    .line 1225
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 1242
    :goto_2
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1243
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 1245
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    .line 1247
    iget-boolean v5, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    if-eqz v5, :cond_3

    .line 1248
    :cond_2
    const-string/jumbo v5, "com.android.contacts"

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1250
    const-string/jumbo v5, "com.android.calendar"

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1252
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1261
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1262
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1265
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 1266
    return-void

    .end local v0    # "androidAcct":Landroid/accounts/Account;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "freq":I
    .end local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_4
    move v5, v6

    .line 1200
    goto/16 :goto_0

    .line 1216
    .restart local v0    # "androidAcct":Landroid/accounts/Account;
    .restart local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/emailcommon/provider/Account;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1232
    .restart local v2    # "freq":I
    :cond_6
    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    .line 1235
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1238
    :cond_7
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1239
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    goto/16 :goto_2
.end method

.method private setPolicyListSummary(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "policiesToAdd"    # Ljava/lang/String;
    .param p3, "preferenceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/emailcommon/provider/Policy;->addPolicyStringToList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 688
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 689
    invoke-virtual {p0, p3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 690
    .local v2, "p":Landroid/preference/Preference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 695
    .end local v0    # "desc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 697
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Landroid/preference/Preference;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private setRingtone(Landroid/net/Uri;)V
    .locals 3
    .param p1, "ringtone"    # Landroid/net/Uri;

    .prologue
    .line 419
    new-instance v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    .local v0, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    if-eqz v1, :cond_0

    .line 422
    if-eqz p1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 425
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->setRingtoneSummary()V

    .line 434
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setNotificationRingtoneUri(Ljava/lang/String;)V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private setRingtoneSummary()V
    .locals 7

    .prologue
    const v6, 0x7f100385

    .line 437
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    .line 442
    new-instance v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    .local v0, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual {v0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "ringtoneFileInexistenceUri":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v4, "media/external"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "ringtoneFileField":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 451
    .end local v0    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    .end local v1    # "ringtoneFileField":[Ljava/lang/String;
    .end local v2    # "ringtoneFileInexistenceUri":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxRingtone:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    return-void

    .line 437
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private showRingtonePicker()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1277
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    if-nez v2, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    invoke-virtual {v2}, Lcom/kingsoft/mail/preferences/FolderPreferences;->getNotificationRingtoneUri()Ljava/lang/String;

    move-result-object v1

    .line 1282
    .local v1, "ringtoneUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1283
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1285
    :cond_1
    const-string/jumbo v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1286
    const-string/jumbo v2, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1288
    const-string/jumbo v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1289
    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1290
    const-string/jumbo v2, "com.android.thememanager"

    const-string/jumbo v3, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateAccountType(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1297
    const-string/jumbo v4, ""

    .line 1298
    .local v4, "protocol":Ljava/lang/String;
    const-string/jumbo v5, "1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1299
    const-string/jumbo v4, "eas"

    .line 1306
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->checkProtocol(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1322
    :goto_1
    return-void

    .line 1300
    :cond_1
    const-string/jumbo v5, "2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1301
    const-string/jumbo v4, "pop"

    goto :goto_0

    .line 1302
    :cond_2
    const-string/jumbo v5, "3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1303
    const-string/jumbo v4, "imap"

    goto :goto_0

    .line 1310
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1311
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v6, v6, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v7, v7, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "ksdomain":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v5, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 1313
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    iget-object v3, v5, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 1314
    .local v3, "password":Ljava/lang/String;
    const-string/jumbo v5, "protocal"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string/jumbo v5, "ksdomain"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string/jumbo v5, "password"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string/jumbo v5, "mId"

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1318
    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string/jumbo v5, "mUiAccount"

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mUiAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1320
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1321
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method public getAccountEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public initIntentFilter()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityIntentFilter:Landroid/content/IntentFilter;

    .line 178
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.email.activity.setup.AccountSettingsFragment.closeActivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onActivityCreated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 407
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 408
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->setRingtone(Landroid/net/Uri;)V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 281
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 290
    sget-boolean v3, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 291
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "AccountSettingsFragment onCreate"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->initIntentFilter()V

    .line 297
    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 301
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 302
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 303
    const-string/jumbo v3, "AccountSettingsFragment.AccountId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 304
    .local v0, "accountId":J
    const-string/jumbo v3, "AccountSettingsFragment.Email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountEmail:Ljava/lang/String;

    .line 305
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v3, :cond_1

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    .line 311
    .end local v0    # "accountId":J
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "always_bcc_myself"

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    .line 317
    iput-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 318
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 558
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 559
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 561
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 562
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCloseActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 381
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 384
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 385
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    .line 388
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v7, "account_check_frequency"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "summary":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 482
    .local v2, "index":I
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v7, "account_check_frequency"

    invoke-direct {p0, v7, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    move v7, v8

    .line 549
    .end local v2    # "index":I
    .end local v5    # "summary":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v7

    .line 486
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v7, "account_change_type"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 487
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .restart local v5    # "summary":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->updateAccountType(Ljava/lang/String;)V

    move v7, v8

    .line 489
    goto :goto_0

    .line 490
    .end local v5    # "summary":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "account_signature"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 494
    const/4 v4, 0x0

    .line 496
    .local v4, "signature":Ljava/lang/String;
    if-eqz p2, :cond_2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 497
    :cond_2
    const-string/jumbo v4, ""

    .line 501
    :goto_1
    const-string/jumbo v7, "Xiaomi"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    .line 502
    goto :goto_0

    :cond_3
    move-object v4, p2

    .line 499
    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 504
    :cond_4
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    const v9, 0x7f1002fb

    invoke-static {v7, v4, v9}, Lcom/kingsoft/mail/ui/settings/SettingsUtils;->updatePreferenceSummary(Landroid/preference/Preference;Ljava/lang/String;I)V

    .line 506
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v7, "account_signature"

    invoke-direct {p0, v7, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    move v7, v8

    .line 508
    goto :goto_0

    .line 509
    .end local v4    # "signature":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "account_name"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 510
    const-string/jumbo v5, ""

    .line 512
    .restart local v5    # "summary":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 517
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 518
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 520
    const-string/jumbo v7, "account_name"

    invoke-direct {p0, v7, v5}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    move v7, v8

    .line 522
    goto/16 :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    goto :goto_2

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "summary":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "notification-vibrate"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, p2

    .line 524
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 525
    .local v6, "vibrateSetting":Z
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    if-eqz v7, :cond_8

    .line 527
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    invoke-virtual {v7, v6}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationVibrateEnabled(Z)V

    .line 529
    :cond_8
    new-instance v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    .local v0, "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-virtual {v0, v6}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setNotificationVibrateEnabled(Z)V

    .line 532
    const-string/jumbo v7, "notification-vibrate"

    invoke-direct {p0, v7, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    move v7, v9

    .line 533
    goto/16 :goto_0

    .line 534
    .end local v0    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    .end local v6    # "vibrateSetting":Z
    :cond_9
    const-string/jumbo v7, "notifications-enabled"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 535
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    if-eqz v7, :cond_a

    .line 536
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mInboxFolderPreferences:Lcom/kingsoft/mail/preferences/FolderPreferences;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/kingsoft/mail/preferences/FolderPreferences;->setNotificationsEnabled(Z)V

    .line 538
    :cond_a
    new-instance v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    move-object v7, p2

    .line 540
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/kingsoft/mail/preferences/AccountPreferences;->setNotificationsEnabled(Z)V

    .line 541
    const-string/jumbo v7, "notifications-enabled"

    invoke-direct {p0, v7, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    move v7, v9

    .line 542
    goto/16 :goto_0

    .line 543
    .end local v0    # "accountPreferences":Lcom/kingsoft/mail/preferences/AccountPreferences;
    :cond_b
    const-string/jumbo v7, "always_bcc_myself"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v7, :cond_c

    .line 544
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mMailPrefs:Lcom/kingsoft/mail/preferences/MailPrefs;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v7, v8, v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->setBccToMyself(Ljava/lang/String;Z)V

    move v7, v9

    .line 545
    goto/16 :goto_0

    .line 548
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    invoke-direct {p0, v3, p2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->preferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    move v7, v9

    .line 549
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 353
    sget-boolean v1, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 354
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AccountSettingsFragment onResume"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 358
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 364
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 368
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 369
    .local v0, "refreshedAccount":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v1, :cond_3

    .line 370
    :cond_1
    iput-boolean v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 371
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 377
    .end local v0    # "refreshedAccount":Lcom/android/emailcommon/provider/Account;
    :cond_2
    :goto_0
    return-void

    .line 374
    .restart local v0    # "refreshedAccount":Lcom/android/emailcommon/provider/Account;
    :cond_3
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 375
    iput-boolean v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 569
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 570
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onSaveInstanceState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 572
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 334
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 341
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    .line 344
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSettingsFragment onStop"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 399
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 400
    return-void
.end method

.method public setCallback(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    .prologue
    .line 579
    if-nez p1, :cond_0

    sget-object p1, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    .end local p1    # "callback":Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$Callback;

    .line 580
    return-void
.end method

.method public startLoadingAccount(J)V
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 586
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 587
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 589
    return-void
.end method
