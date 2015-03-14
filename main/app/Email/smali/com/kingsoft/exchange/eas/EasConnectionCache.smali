.class public Lcom/kingsoft/exchange/eas/EasConnectionCache;
.super Ljava/lang/Object;
.source "EasConnectionCache.java"


# static fields
.field private static final MAX_LIFETIME:J = 0x927c0L

.field private static sCache:Lcom/kingsoft/exchange/eas/EasConnectionCache;

.field private static final sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field private final mConnectionCreationTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/kingsoft/exchange/eas/EasConnectionCache$1;

    invoke-direct {v0}, Lcom/kingsoft/exchange/eas/EasConnectionCache$1;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sCache:Lcom/kingsoft/exchange/eas/EasConnectionCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 88
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Creating new connection manager for HostAuth %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v2, "http.conn-manager.max-total"

    const/16 v3, 0x19

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 91
    const-string/jumbo v2, "http.conn-manager.max-per-route"

    sget-object v3, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    invoke-static {p1, v1, p2}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 95
    .local v0, "mgr":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 97
    return-object v0
.end method

.method private declared-synchronized getCachedConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    .line 112
    .local v0, "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 113
    .local v3, "now":J
    if-eqz v0, :cond_0

    .line 114
    iget-object v5, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 115
    .local v1, "lifetime":J
    const-wide/32 v5, 0x927c0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 116
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "Aging out connection manager for HostAuth %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    invoke-virtual {p0, p2}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 119
    const/4 v0, 0x0

    .line 122
    .end local v1    # "lifetime":J
    :cond_0
    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 124
    iget-object v5, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    .line 127
    :cond_1
    :try_start_1
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "Reusing cached connection manager for HostAuth %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .end local v3    # "now":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static instance()Lcom/kingsoft/exchange/eas/EasConnectionCache;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sCache:Lcom/kingsoft/exchange/eas/EasConnectionCache;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;

    invoke-direct {v0}, Lcom/kingsoft/exchange/eas/EasConnectionCache;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sCache:Lcom/kingsoft/exchange/eas/EasConnectionCache;

    .line 71
    :cond_0
    sget-object v0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->sCache:Lcom/kingsoft/exchange/eas/EasConnectionCache;

    return-object v0
.end method


# virtual methods
.method public getConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->getCachedConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 151
    .local v0, "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :goto_0
    return-object v0

    .line 149
    .end local v0    # "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->createConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .restart local v0    # "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    goto :goto_0
.end method

.method public declared-synchronized uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 7
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Uncaching connection manager for HostAuth %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    .line 163
    .local v0, "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->shutdown()V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasConnectionCache;->mConnectionCreationTimes:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "connectionManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
