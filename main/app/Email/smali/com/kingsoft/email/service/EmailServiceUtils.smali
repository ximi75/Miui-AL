.class public Lcom/kingsoft/email/service/EmailServiceUtils;
.super Ljava/lang/Object;
.source "EmailServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/EmailServiceUtils$NullService;,
        Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    }
.end annotation


# static fields
.field private static final sOldConfiguration:Landroid/content/res/Configuration;

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sServiceMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 562
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/kingsoft/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    .line 563
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    .line 564
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    return-void
.end method

.method public static areRemoteServicesInstalled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 125
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v2, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 126
    const/4 v2, 0x1

    .line 129
    .end local v1    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    const/4 v3, 0x0

    .line 285
    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 288
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 290
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz p1, :cond_0

    .line 244
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 246
    :cond_0
    if-nez v0, :cond_1

    .line 247
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Returning NullService for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    const-class v2, Lcom/kingsoft/email/service/EmailServiceUtils$NullService;

    invoke-direct {v1, p0, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceFromInfo(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v1

    goto :goto_0
.end method

.method public static getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 188
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceFromInfo(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Lcom/android/emailcommon/service/EmailServiceProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .prologue
    .line 256
    iget-object v1, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v2, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    :goto_0
    return-object v1

    .line 259
    :cond_0
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-direct {v1, p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    return-object v0
.end method

.method public static getServiceInfoForAccount(Landroid/content/Context;J)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 266
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "protocol":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v1, "eas"

    iget-object v2, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string/jumbo v1, "com.android.email.EXCHANGE_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_0
    return-object v0
.end method

.method private static getServiceMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    .line 571
    sget-object v10, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMapLock:Ljava/lang/Object;

    monitor-enter v10

    .line 576
    :try_start_0
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    if-nez v9, :cond_0

    .line 577
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 581
    :cond_0
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 584
    .local v1, "delta":I
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    invoke-static {v1, v9}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 587
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    monitor-exit v10

    .line 714
    :goto_0
    return-object v9

    .line 590
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 594
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 595
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f070017

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 598
    .local v7, "xml":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, "xmlEventType":I
    if-eq v8, v13, :cond_4

    .line 599
    if-ne v8, v12, :cond_2

    const-string/jumbo v9, "emailservice"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 601
    new-instance v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    invoke-direct {v3}, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;-><init>()V

    .line 602
    .local v3, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    sget-object v9, Lcom/android/email/R$styleable;->EmailServiceInfo:[I

    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 604
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    .line 606
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    .line 608
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->name:Ljava/lang/String;

    .line 610
    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->hide:Z

    .line 612
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "klass":Ljava/lang/String;
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    .line 616
    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->intentPackage:Ljava/lang/String;

    .line 618
    const/16 v9, 0x9

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSsl:Z

    .line 620
    const/4 v9, 0x7

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->port:I

    .line 622
    const/16 v9, 0x8

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->portSsl:I

    .line 624
    const/16 v9, 0xa

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerTls:Z

    .line 626
    const/16 v9, 0xb

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerCerts:Z

    .line 628
    const/16 v9, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    .line 631
    const/16 v9, 0xd

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLocalDeletes:I

    .line 635
    const/16 v9, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    .line 639
    const/16 v9, 0xf

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    .line 641
    const/16 v9, 0x13

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    .line 644
    const/16 v9, 0x14

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLookback:Z

    .line 647
    const/16 v9, 0x17

    const/4 v11, 0x2

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLookback:I

    .line 650
    const/16 v9, 0x10

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncChanges:Z

    .line 654
    const/16 v9, 0x11

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncContacts:Z

    .line 657
    const/16 v9, 0x12

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncCalendar:Z

    .line 660
    const/16 v9, 0x18

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerAttachmentPreload:Z

    .line 664
    const/16 v9, 0x19

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervalStrings:[Ljava/lang/CharSequence;

    .line 666
    const/16 v9, 0x1a

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncIntervals:[Ljava/lang/CharSequence;

    .line 668
    const/16 v9, 0x1b

    const/16 v11, 0x3c

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSyncInterval:I

    .line 672
    const/16 v9, 0x1c

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->inferPrefix:Ljava/lang/String;

    .line 674
    const/16 v9, 0x15

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLoadMore:Z

    .line 677
    const/16 v9, 0x16

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerMoveTo:Z

    .line 681
    const/16 v9, 0x1d

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->requiresSetup:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    if-eqz v4, :cond_3

    .line 689
    :try_start_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    iput-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    :cond_3
    :try_start_3
    iget-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-nez v9, :cond_5

    iget-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 698
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "No class or intent action specified in service descriptor"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    .end local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v4    # "klass":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v7    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v8    # "xmlEventType":I
    :catch_0
    move-exception v9

    .line 713
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    sput-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    .line 714
    sget-object v9, Lcom/kingsoft/email/service/EmailServiceUtils;->sServiceMap:Ljava/util/Map;

    monitor-exit v10

    goto/16 :goto_0

    .line 715
    .end local v0    # "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    .end local v1    # "delta":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 691
    .restart local v0    # "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    .restart local v1    # "delta":I
    .restart local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .restart local v4    # "klass":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "ta":Landroid/content/res/TypedArray;
    .restart local v7    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "xmlEventType":I
    :catch_1
    move-exception v2

    .line 692
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Class not found in service descriptor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 710
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v4    # "klass":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v7    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v8    # "xmlEventType":I
    :catch_2
    move-exception v9

    goto :goto_2

    .line 701
    .restart local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .restart local v4    # "klass":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "ta":Landroid/content/res/TypedArray;
    .restart local v7    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "xmlEventType":I
    :cond_5
    iget-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v9, :cond_6

    iget-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->intentAction:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 702
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Both class and intent action specified in service descriptor"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 705
    :cond_6
    iget-object v9, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public static isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 156
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-nez v0, :cond_0

    .line 157
    const/4 v2, 0x0

    .line 161
    :goto_0
    return v2

    .line 158
    :cond_0
    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 159
    const/4 v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v2, Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-direct {v2, p0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->test()Z

    move-result v2

    goto :goto_0
.end method

.method public static killService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 90
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "ServiceProxy.FORCE_SHUTDOWN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "ServiceProxy will be force shutdown"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static moveCalendarData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldType"    # Ljava/lang/String;
    .param p3, "newType"    # Ljava/lang/String;

    .prologue
    .line 531
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "account_type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 539
    .local v0, "oldCalendars":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v2, "account_name=? AND account_type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method private static moveContactsData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldType"    # Ljava/lang/String;
    .param p3, "newType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 548
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "account_type"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 557
    .local v0, "oldContacts":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 558
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public static setRemoteServicesLogging(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debugBits"    # I

    .prologue
    .line 136
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 137
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kingsoft/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v2

    .line 140
    .local v2, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    if-eqz v2, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    goto :goto_0

    .line 149
    .end local v1    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v2    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_1
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "email"    # Z
    .param p3, "calendar"    # Z
    .param p4, "contacts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 316
    new-instance v4, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 317
    .local v4, "options":Landroid/os/Bundle;
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 319
    .local v8, "hostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v8, :cond_0

    .line 335
    :goto_0
    return-object v2

    .line 323
    :cond_0
    const-string/jumbo v0, "username"

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v0, "password"

    iget-object v1, v8, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    const-string/jumbo v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string/jumbo v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    iget-object v0, v8, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v9

    .line 335
    .local v9, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, v9, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    move-object v6, p5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    goto :goto_0
.end method

.method public static startRemoteServices(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 113
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 114
    invoke-static {p0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 115
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 118
    .end local v1    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 102
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 103
    invoke-static {p0, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceIntent(Landroid/content/Context;Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 104
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static updateAccountManagerType(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Map;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "amAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "protocolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 343
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "emailAddress=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 348
    .local v15, "c":Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 527
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 353
    new-instance v5, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 354
    .local v5, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v5, v15}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 355
    iget-wide v0, v5, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 357
    .local v20, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v20, :cond_1

    .line 525
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    :cond_1
    :try_start_1
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    .local v22, "newProtocol":Ljava/lang/String;
    if-nez v22, :cond_2

    .line 525
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 370
    :cond_2
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v12, "accountValues":Landroid/content/ContentValues;
    iget v0, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v23, v0

    .line 375
    .local v23, "oldFlags":I
    iget v4, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 376
    const-string/jumbo v4, "flags"

    iget v9, v5, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 379
    .local v11, "accountUri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v11, v12, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v21, "hostValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "protocol"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v4, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v3, v4, v0, v9, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Updated HostAuths"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    :try_start_3
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 396
    .local v6, "email":Z
    if-nez v6, :cond_3

    .line 398
    const-string/jumbo v4, "com.android.email.provider"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 401
    :cond_3
    const-string/jumbo v4, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 404
    .local v8, "contacts":Z
    const-string/jumbo v4, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 409
    .local v7, "calendar":Z
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 410
    .local v14, "amName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 411
    .local v24, "oldType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    .line 414
    .local v17, "client":Landroid/content/ContentProviderClient;
    const/16 v16, 0x0

    .line 416
    .local v16, "calendarSyncKey":[B
    :try_start_4
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0}, Lcom/kingsoft/email/service/EmailServiceUtils;->asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v9, Landroid/accounts/Account;

    move-object/from16 v0, v24

    invoke-direct {v9, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v0, v4, v9}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v16

    .line 424
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 426
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v17

    .line 429
    const/16 v18, 0x0

    .line 431
    .local v18, "contactsSyncKey":[B
    :try_start_6
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Landroid/accounts/Account;

    move-object/from16 v0, v24

    invoke-direct {v9, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-static {v0, v4, v9}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v18

    .line 437
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 439
    :goto_2
    if-eqz v16, :cond_4

    .line 440
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Got calendar key: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    :cond_4
    if-eqz v18, :cond_5

    .line 444
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Got contacts key: "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 450
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/kingsoft/email/service/EmailServiceUtils;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 452
    .local v13, "amFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    invoke-static {v13}, Lcom/kingsoft/email/service/EmailServiceUtils;->finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V

    .line 453
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Created new AccountManager account"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "_type"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 463
    .local v10, "accountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0, v10}, Lcom/kingsoft/email/service/EmailServiceUtils;->moveCalendarData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v4, v14, v0, v10}, Lcom/kingsoft/email/service/EmailServiceUtils;->moveContactsData(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v9, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v13

    .line 471
    invoke-static {v13}, Lcom/kingsoft/email/service/EmailServiceUtils;->finishAccountManagerBlocker(Landroid/accounts/AccountManagerFuture;)V

    .line 472
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Deleted old AccountManager account"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    if-eqz v10, :cond_6

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v4, v0

    if-eqz v4, :cond_6

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v17

    .line 483
    :try_start_8
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v10}, Lcom/kingsoft/email/service/EmailServiceUtils;->asCalendarSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v14, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v4, v9, v1}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 490
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Set calendar key..."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 495
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    .line 498
    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v4, v0

    if-eqz v4, :cond_7

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v9, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v17

    .line 504
    :try_start_a
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v14, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v9, v1}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 508
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Set contacts key..."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 516
    :cond_7
    :goto_4
    :try_start_b
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Account update completed."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 519
    :try_start_c
    const-string/jumbo v4, "flags"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v11, v12, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 521
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "[Incomplete flag cleared]"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 525
    .end local v5    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v6    # "email":Z
    .end local v7    # "calendar":Z
    .end local v8    # "contacts":Z
    .end local v10    # "accountType":Ljava/lang/String;
    .end local v11    # "accountUri":Landroid/net/Uri;
    .end local v12    # "accountValues":Landroid/content/ContentValues;
    .end local v13    # "amFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    .end local v14    # "amName":Ljava/lang/String;
    .end local v16    # "calendarSyncKey":[B
    .end local v17    # "client":Landroid/content/ContentProviderClient;
    .end local v18    # "contactsSyncKey":[B
    .end local v20    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v21    # "hostValues":Landroid/content/ContentValues;
    .end local v22    # "newProtocol":Ljava/lang/String;
    .end local v23    # "oldFlags":I
    .end local v24    # "oldType":Ljava/lang/String;
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 421
    .restart local v5    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v6    # "email":Z
    .restart local v7    # "calendar":Z
    .restart local v8    # "contacts":Z
    .restart local v11    # "accountUri":Landroid/net/Uri;
    .restart local v12    # "accountValues":Landroid/content/ContentValues;
    .restart local v14    # "amName":Ljava/lang/String;
    .restart local v16    # "calendarSyncKey":[B
    .restart local v17    # "client":Landroid/content/ContentProviderClient;
    .restart local v20    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v21    # "hostValues":Landroid/content/ContentValues;
    .restart local v22    # "newProtocol":Ljava/lang/String;
    .restart local v23    # "oldFlags":I
    .restart local v24    # "oldType":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 422
    .local v19, "e":Landroid/os/RemoteException;
    :try_start_d
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Get calendar key FAILED"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 424
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 519
    .end local v6    # "email":Z
    .end local v7    # "calendar":Z
    .end local v8    # "contacts":Z
    .end local v14    # "amName":Ljava/lang/String;
    .end local v16    # "calendarSyncKey":[B
    .end local v17    # "client":Landroid/content/ContentProviderClient;
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v24    # "oldType":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_f
    const-string/jumbo v9, "flags"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    const/4 v9, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v11, v12, v9, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 521
    sget-object v9, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v25, "[Incomplete flag cleared]"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v9, v0, v1}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 525
    .end local v5    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v11    # "accountUri":Landroid/net/Uri;
    .end local v12    # "accountValues":Landroid/content/ContentValues;
    .end local v20    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v21    # "hostValues":Landroid/content/ContentValues;
    .end local v22    # "newProtocol":Ljava/lang/String;
    .end local v23    # "oldFlags":I
    :catchall_1
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 424
    .restart local v5    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v6    # "email":Z
    .restart local v7    # "calendar":Z
    .restart local v8    # "contacts":Z
    .restart local v11    # "accountUri":Landroid/net/Uri;
    .restart local v12    # "accountValues":Landroid/content/ContentValues;
    .restart local v14    # "amName":Ljava/lang/String;
    .restart local v16    # "calendarSyncKey":[B
    .restart local v17    # "client":Landroid/content/ContentProviderClient;
    .restart local v20    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v21    # "hostValues":Landroid/content/ContentValues;
    .restart local v22    # "newProtocol":Ljava/lang/String;
    .restart local v23    # "oldFlags":I
    .restart local v24    # "oldType":Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_10
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 434
    .restart local v18    # "contactsSyncKey":[B
    :catch_1
    move-exception v19

    .line 435
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_11
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Get contacts key FAILED"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 437
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 491
    .restart local v10    # "accountType":Ljava/lang/String;
    .restart local v13    # "amFuture":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<*>;"
    :catch_2
    move-exception v19

    .line 492
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_13
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Set calendar key FAILED"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 495
    :try_start_14
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .end local v19    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderClient;->release()Z

    throw v4

    .line 509
    :catch_3
    move-exception v19

    .line 510
    .restart local v19    # "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Set contacts key FAILED"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v4, v9, v0}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_4
.end method
