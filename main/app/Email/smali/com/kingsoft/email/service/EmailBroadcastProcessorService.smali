.class public Lcom/kingsoft/email/service/EmailBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "EmailBroadcastProcessorService.java"


# static fields
.field private static final ACTION_BROADCAST:Ljava/lang/String; = "broadcast_receiver"

.field private static final ACTION_DEVICE_POLICY_ADMIN:Ljava/lang/String; = "com.android.email.devicepolicy"

.field private static final ACTION_SECRET_CODE:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final ACTION_UPGRADE_BROADCAST:Ljava/lang/String; = "upgrade_broadcast_receiver"

.field private static final EXTRA_DEVICE_POLICY_ADMIN:Ljava/lang/String; = "message_code"

.field private static final SECRET_CODE_HOST_DEBUG_SCREEN:Ljava/lang/String; = "36245"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->setIntentRedelivery(Z)V

    .line 99
    return-void
.end method

.method private disableComponent(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 177
    return-void
.end method

.method private isComponentDisabled(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAppUpgrade()V
    .locals 5

    .prologue
    const v4, 0x7f100207

    .line 205
    const-class v2, Lcom/kingsoft/email/service/EmailUpgradeBroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->isComponentDisabled(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 216
    .local v0, "protocolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "imap"

    const v3, 0x7f100304

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v2, "pop3"

    const v3, 0x7f100305

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {v0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->removeNoopUpgrades(Ljava/util/Map;)V

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    const-string/jumbo v2, "imap_type"

    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v2, "pop3_type"

    const v3, 0x7f100019

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->updateAccountManagerAccountsOfType(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    const-string/jumbo v2, "eas"

    const v3, 0x7f100302

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->removeNoopUpgrades(Ljava/util/Map;)V

    .line 228
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    const-string/jumbo v2, "eas_type"

    const v3, 0x7f100016

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->updateAccountManagerAccountsOfType(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    :cond_2
    const-class v2, Lcom/kingsoft/email/service/LegacyEmailAuthenticatorService;

    invoke-direct {p0, v2}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->disableComponent(Ljava/lang/Class;)V

    .line 235
    const-class v2, Lcom/kingsoft/email/service/LegacyEasAuthenticatorService;

    invoke-direct {p0, v2}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->disableComponent(Ljava/lang/Class;)V

    .line 237
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v1

    .line 238
    .local v1, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->handleSilenceMode(Z)V

    .line 243
    const-class v2, Lcom/kingsoft/email/service/EmailUpgradeBroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->disableComponent(Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method private onBootCompleted()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->performOneTimeInitialization()V

    .line 252
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->reconcileAndStartServices()V

    .line 253
    return-void
.end method

.method private onSystemAccountChanged()V
    .locals 3

    .prologue
    .line 354
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "System accounts updated."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->reconcileAndStartServices()V

    .line 356
    return-void
.end method

.method private performOneTimeInitialization()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v1

    .line 285
    .local v1, "pref":Lcom/kingsoft/email/Preferences;
    invoke-virtual {v1}, Lcom/kingsoft/email/Preferences;->getOneTimeInitializationProgress()I

    move-result v2

    .line 286
    .local v2, "progress":I
    move v0, v2

    .line 288
    .local v0, "initialProgress":I
    if-ge v2, v7, :cond_0

    .line 289
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Onetime initialization: 1"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    const/4 v2, 0x1

    .line 291
    invoke-static {p0}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/kingsoft/emailcommon/VendorPolicyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-class v3, Lcom/kingsoft/email/service/EasAuthenticatorServiceAlternate;

    invoke-direct {p0, v3, v7}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 293
    const-class v3, Lcom/kingsoft/email/service/EasAuthenticatorService;

    invoke-direct {p0, v3, v6}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 297
    :cond_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 298
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Onetime initialization: 2"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    const/4 v2, 0x2

    .line 300
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->setImapDeletePolicy(Landroid/content/Context;)V

    .line 308
    :cond_1
    if-eq v2, v0, :cond_2

    .line 309
    invoke-virtual {v1, v2}, Lcom/kingsoft/email/Preferences;->setOneTimeInitializationProgress(I)V

    .line 310
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Onetime initialization: completed."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    :cond_2
    return-void
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastIntent"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method

.method public static processDevicePolicyMessage(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # I

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.devicepolicy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "message_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    return-void
.end method

.method public static processUpgradeBroadcastIntent(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "upgrade_broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method private reconcileAndStartServices()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 260
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->onAppUpgrade()V

    .line 262
    invoke-static {p0}, Lcom/kingsoft/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;)V

    .line 264
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->startRemoteServices(Landroid/content/Context;)V

    .line 269
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->registNetWorkReceiverForImapPushService(Landroid/content/Context;)V

    .line 273
    invoke-static {p0, v1}, Lcom/kingsoft/email/service/ImapPushService;->actionStart(Landroid/content/Context;I)V

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->unregistNetWorkReceiverForImapPushService(Landroid/content/Context;)V

    .line 278
    invoke-static {p0, v1}, Lcom/kingsoft/email/service/ImapPushService;->actionStop(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected static removeNoopUpgrades(Ljava/util/Map;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "protocolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setComponentEnabled(Ljava/lang/Class;Z)V
    .locals 4
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 346
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    .local v0, "c":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 351
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static setImapDeletePolicy(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 320
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 322
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 324
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 326
    .local v14, "recvAuthKey":J
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v13

    .line 327
    .local v13, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    const v2, 0x7f100304

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, "legacyImapProtocol":Ljava/lang/String;
    iget-object v2, v13, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const/16 v2, 0x8

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 330
    .local v11, "flags":I
    and-int/lit8 v11, v11, -0xd

    .line 331
    or-int/lit8 v11, v11, 0x8

    .line 332
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "flags"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 335
    .local v7, "accountId":J
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 336
    .local v16, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v7    # "accountId":J
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "flags":I
    .end local v12    # "legacyImapProtocol":Ljava/lang/String;
    .end local v13    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v14    # "recvAuthKey":J
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_2
    return-void
.end method

.method private updateAccountManagerAccountsOfType(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "amAccountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "protocolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 189
    .local v1, "amAccounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 190
    .local v0, "amAccount":Landroid/accounts/Account;
    invoke-static {p0, v0, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->updateAccountManagerType(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Map;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "amAccount":Landroid/accounts/Account;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "broadcast_receiver"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 137
    .local v2, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "broadcastAction":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    const-string/jumbo v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onHandleIntent accountNUmber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->onBootCompleted()V

    .line 172
    .end local v1    # "broadcastAction":Ljava/lang/String;
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v1    # "broadcastAction":Ljava/lang/String;
    .restart local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Lcom/kingsoft/email/service/EmailBroadcastProcessorService$1;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService$1;-><init>(Lcom/kingsoft/email/service/EmailBroadcastProcessorService;)V

    .line 156
    .local v4, "task":Ljava/util/TimerTask;
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 157
    .local v5, "timer":Ljava/util/Timer;
    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 160
    .end local v4    # "task":Ljava/util/TimerTask;
    .end local v5    # "timer":Ljava/util/Timer;
    :cond_2
    const-string/jumbo v6, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "36245"

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSettings;->actionSettingsWithDebug(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string/jumbo v6, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->onSystemAccountChanged()V

    goto :goto_0

    .line 166
    .end local v1    # "broadcastAction":Ljava/lang/String;
    .end local v2    # "broadcastIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v6, "com.android.email.devicepolicy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 167
    const-string/jumbo v6, "message_code"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 168
    .local v3, "message":I
    invoke-static {p0, v3}, Lcom/kingsoft/email/SecurityPolicy;->onDeviceAdminReceiverMessage(Landroid/content/Context;I)V

    goto :goto_0

    .line 169
    .end local v3    # "message":I
    :cond_5
    const-string/jumbo v6, "upgrade_broadcast_receiver"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->onAppUpgrade()V

    goto :goto_0
.end method
