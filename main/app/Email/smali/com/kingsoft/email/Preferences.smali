.class public Lcom/kingsoft/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final ACCOUNT_UUIDS:Ljava/lang/String; = "accountUuids"

.field private static final AUTO_ADVANCE_DEFAULT:I = 0x1

.field private static final AUTO_ADVANCE_DIRECTION:Ljava/lang/String; = "autoAdvance"

.field public static final AUTO_ADVANCE_MESSAGE_LIST:I = 0x2

.field public static final AUTO_ADVANCE_NEWER:I = 0x0

.field public static final AUTO_ADVANCE_OLDER:I = 0x1

.field private static final BACKGROUND_ATTACHMENTS:Ljava/lang/String; = "backgroundAttachments"

.field private static final CONFIRM_DELETE:Ljava/lang/String; = "confirm_delete"

.field private static final CONFIRM_DELETE_DEFAULT:Z = false

.field private static final CONFIRM_SEND:Ljava/lang/String; = "confirm_send"

.field private static final CONFIRM_SEND_DEFAULT:Z = false

.field private static final CONV_LIST_ICON:Ljava/lang/String; = "conversation_list_icons"

.field public static final CONV_LIST_ICON_DEFAULT:Ljava/lang/String; = "senderimage"

.field public static final CONV_LIST_ICON_NONE:Ljava/lang/String; = "none"

.field public static final CONV_LIST_ICON_SENDER_IMAGE:Ljava/lang/String; = "senderimage"

.field private static final DEVICE_UID:Ljava/lang/String; = "deviceUID"

.field private static final ENABLE_DEBUG_LOGGING:Ljava/lang/String; = "enableDebugLogging"

.field private static final ENABLE_EXCHANGE_FILE_LOGGING:Ljava/lang/String; = "enableExchangeFileLogging"

.field private static final ENABLE_EXCHANGE_LOGGING:Ljava/lang/String; = "enableExchangeLogging"

.field private static final ENABLE_STRICT_MODE:Ljava/lang/String; = "enableStrictMode"

.field private static final FORCE_ONE_MINUTE_REFRESH:Ljava/lang/String; = "forceOneMinuteRefresh"

.field private static final INHIBIT_GRAPHICS_ACCELERATION:Ljava/lang/String; = "inhibitGraphicsAcceleration"

.field private static final LAST_ACCOUNT_USED:Ljava/lang/String; = "lastAccountUsed"

.field private static final ONE_TIME_INITIALIZATION_PROGRESS:Ljava/lang/String; = "oneTimeInitializationProgress"

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "AndroidMail.Main"

.field private static final REPLY_ALL:Ljava/lang/String; = "reply_all"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REQUIRE_MANUAL_SYNC_DIALOG_SHOWN:Ljava/lang/String; = "requireManualSyncDialogShown"

.field private static final SWIPE_DELETE:Ljava/lang/String; = "swipe_delete"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TEXT_ZOOM:Ljava/lang/String; = "textZoom"

.field public static final TEXT_ZOOM_DEFAULT:I = 0x2

.field public static final TEXT_ZOOM_HUGE:I = 0x4

.field public static final TEXT_ZOOM_LARGE:I = 0x3

.field public static final TEXT_ZOOM_NORMAL:I = 0x2

.field public static final TEXT_ZOOM_SMALL:I = 0x1

.field public static final TEXT_ZOOM_TINY:I = 0x0

.field private static final TRUSTED_SENDERS:Ljava/lang/String; = "trustedSenders"

.field private static sPreferences:Lcom/kingsoft/email/Preferences;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string/jumbo v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 91
    return-void
.end method

.method public static clearLegacyBackupPreference(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "accountUuids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1, p2}, Lcom/kingsoft/email/Preferences;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "accountUuids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-class v1, Lcom/kingsoft/email/Preferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingsoft/email/Preferences;->sPreferences:Lcom/kingsoft/email/Preferences;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/kingsoft/email/Preferences;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/email/Preferences;->sPreferences:Lcom/kingsoft/email/Preferences;

    .line 103
    :cond_0
    sget-object v0, Lcom/kingsoft/email/Preferences;->sPreferences:Lcom/kingsoft/email/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v0

    iget-object v0, v0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 365
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private setBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/kingsoft/email/Preferences;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    return-void
.end method

.method public dump()V
    .locals 5

    .prologue
    .line 340
    sget-boolean v2, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAutoAdvanceDirection()I
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "autoAdvance"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBackgroundAttachments()Z
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "backgroundAttachments"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConfirmDelete()Z
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "confirm_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConfirmSend()Z
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "confirm_send"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConversationListIcon()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "conversation_list_icons"

    const-string/jumbo v2, "senderimage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "deviceUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-object v0

    .line 172
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeLogging()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableStrictMode()Z
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "enableStrictMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceOneMinuteRefresh()Z
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "forceOneMinuteRefresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasShownRequireManualSync(Lcom/android/emailcommon/provider/Account;)Z
    .locals 3
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireManualSyncDialogShown"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/Preferences;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInhibitGraphicsAcceleration()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "inhibitGraphicsAcceleration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastUsedAccountId()J
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "lastAccountUsed"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOneTimeInitializationProgress()I
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReplyAll()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "reply_all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSwipeDelete()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "swipe_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextZoom()I
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "textZoom"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWhitelistedSenderAddresses()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "trustedSenders"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/Preferences;->parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    :goto_0
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public hasReplyAll()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "reply_all"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSwipeDelete()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "swipe_delete"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method packEmailSet(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseEmailSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .param p1, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v3, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    return-object v3
.end method

.method public setAutoAdvanceDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoAdvance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    return-void
.end method

.method public setBackgroundAttachments(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "backgroundAttachments"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    return-void
.end method

.method public setConfirmDelete(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "confirm_delete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method public setConfirmSend(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "confirm_send"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    return-void
.end method

.method public setEnableDebugLogging(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public setEnableStrictMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "enableStrictMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    return-void
.end method

.method public setForceOneMinuteRefresh(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "forceOneMinuteRefresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public setHasShownRequireManualSync(Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "value"    # Z

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireManualSyncDialogShown"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/Preferences;->setBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    return-void
.end method

.method public setInhibitGraphicsAcceleration(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "inhibitGraphicsAcceleration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method public setLastUsedAccountId(J)V
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastAccountUsed"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "oneTimeInitializationProgress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    return-void
.end method

.method public setTextZoom(I)V
    .locals 2
    .param p1, "zoom"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kingsoft/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "textZoom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    return-void
.end method

.method public shouldShowRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 331
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Account;->isAutomaticSyncDisabledByRoaming(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/kingsoft/email/Preferences;->getHasShownRequireManualSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
