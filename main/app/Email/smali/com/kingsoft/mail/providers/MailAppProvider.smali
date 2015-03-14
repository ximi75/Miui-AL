.class public abstract Lcom/kingsoft/mail/providers/MailAppProvider;
.super Landroid/content/ContentProvider;
.source "MailAppProvider.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentProvider;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_LIST_KEY:Ljava/lang/String; = "accountList"

.field public static final ADD_ACCOUNT_RESULT_ACCOUNTS_EXTRA:Ljava/lang/String; = "addAccountResultAccounts"

.field private static final LAST_SENT_FROM_ACCOUNT_KEY:Ljava/lang/String; = "lastSendFromAccount"

.field private static final LAST_VIEWED_ACCOUNT_KEY:Ljava/lang/String; = "lastViewedAccount"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "MailAppProvider"

.field private static sAuthority:Ljava/lang/String;

.field private static sInstance:Lcom/kingsoft/mail/providers/MailAppProvider;


# instance fields
.field private final mAccountCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAccountsFullyLoaded:Z

.field private final mCursorLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/CursorLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mCursorLoaderMap:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/providers/MailAppProvider;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/providers/MailAppProvider;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/MailAppProvider;->addAccountsForUriAsync(Landroid/net/Uri;)V

    return-void
.end method

.method private addAccountImpl(Landroid/net/Uri;Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;)V
    .locals 2
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "accountEntry"    # Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addAccountImpl(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "accountsQueryUri"    # Landroid/net/Uri;
    .param p3, "notify"    # Z

    .prologue
    .line 276
    iget-object v0, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    new-instance v1, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    invoke-direct {v1, p1, p2}, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;-><init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->addAccountImpl(Landroid/net/Uri;Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;)V

    .line 280
    if-eqz p3, :cond_0

    .line 281
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->broadcastAccountChange()V

    .line 283
    :cond_0
    return-void
.end method

.method private addAccountsForUriAsync(Landroid/net/Uri;)V
    .locals 0
    .param p1, "accountsQueryUri"    # Landroid/net/Uri;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/providers/MailAppProvider;->startAccountsLoader(Landroid/net/Uri;)V

    .line 246
    return-void
.end method

.method private static broadcastAccountChange()V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Lcom/kingsoft/mail/providers/MailAppProvider;->sInstance:Lcom/kingsoft/mail/providers/MailAppProvider;

    .line 296
    .local v0, "provider":Lcom/kingsoft/mail/providers/MailAppProvider;
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 299
    :cond_0
    return-void
.end method

.method private cacheAccountList()V
    .locals 7

    .prologue
    .line 408
    iget-object v6, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v6

    .line 409
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 410
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 413
    .local v2, "arr":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    .line 414
    .local v0, "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 410
    .end local v0    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .end local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 417
    .restart local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 418
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "accountList"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    return-void
.end method

.method public static getAccountFromAccountUri(Landroid/net/Uri;)Lcom/kingsoft/mail/providers/Account;
    .locals 7
    .param p0, "accountUri"    # Landroid/net/Uri;

    .prologue
    .line 431
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v1

    .line 432
    .local v1, "provider":Lcom/kingsoft/mail/providers/MailAppProvider;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    if-eqz v2, :cond_1

    .line 433
    iget-object v3, v1, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 434
    :try_start_0
    iget-object v2, v1, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    .line 435
    .local v0, "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    if-eqz v0, :cond_0

    .line 436
    iget-object v2, v0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    monitor-exit v3

    .line 442
    .end local v0    # "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    :goto_0
    return-object v2

    .line 438
    .restart local v0    # "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v0    # "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    :cond_1
    sget-object v2, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to get account from accout uri : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 442
    const/4 v2, 0x0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getAccountsUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/providers/MailAppProvider;->sAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/kingsoft/mail/providers/MailAppProvider;->sInstance:Lcom/kingsoft/mail/providers/MailAppProvider;

    return-object v0
.end method

.method public static getNoAccountIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getNoAccountsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "MailAppProvider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private loadCachedAccountList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, "accounts":Lorg/json/JSONArray;
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v10, "accountList"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "accountsJson":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 357
    const-string/jumbo v9, "com.kingsoft.email.provider"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 359
    const-string/jumbo v9, "com.kingsoft.email.provider"

    const-string/jumbo v10, "com.android.email.provider"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 362
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "accountList"

    invoke-interface {v7, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "accounts":Lorg/json/JSONArray;
    .local v3, "accounts":Lorg/json/JSONArray;
    move-object v2, v3

    .line 371
    .end local v3    # "accounts":Lorg/json/JSONArray;
    .end local v4    # "accountsJson":Ljava/lang/String;
    .restart local v2    # "accounts":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 403
    :goto_1
    return-void

    .line 367
    :catch_0
    move-exception v6

    .line 368
    .local v6, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "ignoring unparsable accounts cache"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v6, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 375
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 377
    :try_start_1
    new-instance v1, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;-><init>(Lorg/json/JSONObject;)V

    .line 380
    .local v1, "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    iget-object v9, v1, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v9, v9, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    if-nez v9, :cond_4

    .line 381
    sget-object v9, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Dropping account that doesn\'t specify settings"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    .end local v1    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 385
    .restart local v1    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    :cond_4
    iget-object v0, v1, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 386
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v9, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mResolver:Landroid/content/ContentResolver;

    iget-object v10, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 388
    .local v5, "client":Landroid/content/ContentProviderClient;
    if-eqz v5, :cond_3

    .line 389
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    .line 390
    iget-object v9, v0, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-direct {p0, v9, v1}, Lcom/kingsoft/mail/providers/MailAppProvider;->addAccountImpl(Landroid/net/Uri;Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 396
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v1    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .end local v5    # "client":Landroid/content/ContentProviderClient;
    :catch_1
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Unable to create account object from serialized form"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v6, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 402
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->broadcastAccountChange()V

    goto :goto_1
.end method

.method private declared-synchronized startAccountsLoader(Landroid/net/Uri;)V
    .locals 8
    .param p1, "accountsQueryUri"    # Landroid/net/Uri;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v0, "accountsCursorLoader":Landroid/content/CursorLoader;
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 265
    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 268
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mCursorLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/CursorLoader;

    .line 269
    .local v7, "oldLoader":Landroid/content/CursorLoader;
    if-eqz v7, :cond_0

    .line 270
    invoke-virtual {v7}, Landroid/content/CursorLoader;->stopLoading()V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mCursorLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 260
    .end local v0    # "accountsCursorLoader":Landroid/content/CursorLoader;
    .end local v7    # "oldLoader":Landroid/content/CursorLoader;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getLastSentFromAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "lastSendFromAccount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.kingsoft.email.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string/jumbo v1, "com.kingsoft.email.provider"

    const-string/jumbo v2, "com.android.email.provider"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastSentFromAccount(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-object v0
.end method

.method public getLastViewedAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "lastViewedAccount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.kingsoft.email.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string/jumbo v1, "com.kingsoft.email.provider"

    const-string/jumbo v2, "com.android.email.provider"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastSentFromAccount(Ljava/lang/String;)V

    .line 311
    :cond_0
    return-object v0
.end method

.method protected abstract getNoAccountsIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getSuggestionAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 218
    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/MailAppProvider;->sAuthority:Ljava/lang/String;

    .line 146
    sput-object p0, Lcom/kingsoft/mail/providers/MailAppProvider;->sInstance:Lcom/kingsoft/mail/providers/MailAppProvider;

    .line 147
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mResolver:Landroid/content/ContentResolver;

    .line 150
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->loadCachedAccountList()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kingsoft/mail/providers/MailAppProvider$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/providers/MailAppProvider$1;-><init>(Lcom/kingsoft/mail/providers/MailAppProvider;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 16
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 448
    sget-object v11, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "null account cursor returned"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-object v11, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Cursor with %d accounts returned"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object/from16 v5, p1

    .line 453
    check-cast v5, Landroid/content/CursorLoader;

    .line 454
    .local v5, "cursorLoader":Landroid/content/CursorLoader;
    invoke-virtual {v5}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 461
    .local v4, "accountsQueryUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v12

    .line 462
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 463
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 467
    .local v10, "previousQueryUriSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    .line 468
    .local v6, "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    iget-object v11, v6, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    invoke-virtual {v4, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 469
    iget-object v11, v6, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v11, v11, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 463
    .end local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .end local v6    # "entry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "previousQueryUriSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 476
    .restart local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "previousQueryUriSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 477
    .local v7, "extra":Landroid/os/Bundle;
    const-string/jumbo v11, "accounts_loaded"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    .line 479
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 483
    .local v9, "newQueryUriMap":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 484
    new-instance v1, Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 485
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v3, v1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 486
    .local v3, "accountUri":Landroid/net/Uri;
    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    if-eqz v11, :cond_3

    .line 493
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v12

    .line 496
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 499
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4, v11}, Lcom/kingsoft/mail/providers/MailAppProvider;->addAccountImpl(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Z)V

    goto :goto_3

    .line 477
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "accountUri":Landroid/net/Uri;
    .end local v9    # "newQueryUriMap":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 497
    .restart local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v3    # "accountUri":Landroid/net/Uri;
    .restart local v9    # "newQueryUriMap":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 502
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v3    # "accountUri":Landroid/net/Uri;
    :cond_5
    invoke-interface {v10, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 506
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    if-eqz v11, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v12

    .line 508
    :try_start_4
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 509
    .restart local v3    # "accountUri":Landroid/net/Uri;
    sget-object v11, Lcom/kingsoft/mail/providers/MailAppProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Removing account %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-static {v11, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 512
    .end local v3    # "accountUri":Landroid/net/Uri;
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v11

    :cond_6
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 514
    :cond_7
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->broadcastAccountChange()V

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->cacheAccountList()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/providers/MailAppProvider;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static/range {p2 .. p2}, Lcom/kingsoft/mail/providers/UIProviderValidator;->validateAccountProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "resultProjection":[Ljava/lang/String;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v9, "extras":Landroid/os/Bundle;
    const-string/jumbo v15, "accounts_loaded"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountsFullyLoaded:Z

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v9, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    monitor-enter v15

    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mAccountCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 193
    .local v3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    new-instance v8, Lcom/kingsoft/mail/utils/MatrixCursorWithExtra;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v8, v13, v14, v9}, Lcom/kingsoft/mail/utils/MatrixCursorWithExtra;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 198
    .local v8, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;

    .line 199
    .local v2, "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    iget-object v1, v2, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 200
    .local v1, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 201
    .local v6, "builder":Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/Account;->getValueMap()Ljava/util/Map;

    move-result-object v4

    .line 203
    .local v4, "accountValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v13

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v7, v5, v11

    .line 204
    .local v7, "columnName":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 205
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .end local v3    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .end local v4    # "accountValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "builder":Landroid/database/MatrixCursor$RowBuilder;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/MatrixCursor;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 207
    .restart local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .restart local v2    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .restart local v3    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;>;"
    .restart local v4    # "accountValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "builder":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v7    # "columnName":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/MatrixCursor;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_2
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unexpected column: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 212
    .end local v1    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v2    # "accountEntry":Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
    .end local v4    # "accountValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "builder":Landroid/database/MatrixCursor$RowBuilder;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/providers/MailAppProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 213
    return-object v8
.end method

.method public setLastSentFromAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountUriStr"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "lastSendFromAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    return-void
.end method

.method public setLastViewedAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountUriStr"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "lastViewedAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 170
    const/4 v2, 0x0

    sput-object v2, Lcom/kingsoft/mail/providers/MailAppProvider;->sInstance:Lcom/kingsoft/mail/providers/MailAppProvider;

    .line 172
    iget-object v2, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mCursorLoaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/CursorLoader;

    .line 173
    .local v1, "loader":Landroid/content/CursorLoader;
    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    goto :goto_0

    .line 175
    .end local v1    # "loader":Landroid/content/CursorLoader;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/providers/MailAppProvider;->mCursorLoaderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 176
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method
