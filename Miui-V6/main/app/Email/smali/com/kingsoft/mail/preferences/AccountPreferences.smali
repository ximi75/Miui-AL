.class public Lcom/kingsoft/mail/preferences/AccountPreferences;
.super Lcom/kingsoft/mail/preferences/VersionedPrefs;
.source "AccountPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/preferences/AccountPreferences$PreferenceKeys;
    }
.end annotation


# static fields
.field private static final PREFS_NAME_PREFIX:Ljava/lang/String; = "Account"

.field private static mInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/mail/preferences/AccountPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p2}, Lcom/kingsoft/mail/preferences/AccountPreferences;->buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/preferences/VersionedPrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static buildSharedPrefsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Account-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/mail/preferences/AccountPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountEmail"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v2, Lcom/kingsoft/mail/preferences/AccountPreferences;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/kingsoft/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    .line 80
    .local v0, "pref":Lcom/kingsoft/mail/preferences/AccountPreferences;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/kingsoft/mail/preferences/AccountPreferences;

    .end local v0    # "pref":Lcom/kingsoft/mail/preferences/AccountPreferences;
    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/preferences/AccountPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .restart local v0    # "pref":Lcom/kingsoft/mail/preferences/AccountPreferences;
    sget-object v1, Lcom/kingsoft/mail/preferences/AccountPreferences;->mInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v2

    return-object v0

    .line 79
    .end local v0    # "pref":Lcom/kingsoft/mail/preferences/AccountPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "notifications-enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected canBackup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/kingsoft/mail/preferences/AccountPreferences$PreferenceKeys;->BACKUP_KEYS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearDefaultInboxNotificationsEnabled()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method public getDefaultInboxNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "inbox-notifications-enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastSeenOutboxCount()I
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last-seen-outbox-count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNotificationRingtoneUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "notification-ringtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumOfDismissesForAccountSyncOff()I
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "num-of-dismisses-account-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public incNumOfDismissesForAccountSyncOff()V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-account-sync-off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-account-sync-off"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    return-void
.end method

.method public isDefaultInboxNotificationsEnabledSet()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationVibrateEnabled()Z
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "notification-vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected performUpgrade(II)V
    .locals 2
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 89
    if-le p1, p2, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You appear to have downgraded your app. Please clear app data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public resetNumOfDismissesForAccountSyncOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-account-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "value":I
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "num-of-dismisses-account-sync-off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    :cond_0
    return-void
.end method

.method public setDefaultInboxNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public setLastSeenOutboxCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last-seen-outbox-count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    return-void
.end method

.method public setNotificationRingtoneUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "notification-ringtone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->notifyBackupPreferenceChanged()V

    .line 144
    return-void
.end method

.method public setNotificationVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "notification-vibrate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->notifyBackupPreferenceChanged()V

    .line 134
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "notifications-enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/AccountPreferences;->notifyBackupPreferenceChanged()V

    .line 124
    return-void
.end method
