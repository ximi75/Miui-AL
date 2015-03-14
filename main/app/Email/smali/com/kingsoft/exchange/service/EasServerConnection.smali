.class public Lcom/kingsoft/exchange/service/EasServerConnection;
.super Ljava/lang/Object;
.source "EasServerConnection.java"


# static fields
.field private static final ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

.field protected static final COMMAND_TIMEOUT:J = 0x7530L

.field private static final CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final DEVICE_TYPE:Ljava/lang/String; = "Android"

.field protected static final EAS_14_MIME_TYPE:Ljava/lang/String; = "application/vnd.ms-sync.wbxml"

.field public static final STOPPED_REASON_ABORT:I = 0x1

.field public static final STOPPED_REASON_NONE:I = 0x0

.field public static final STOPPED_REASON_RESTART:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static sDeviceId:Ljava/lang/String;


# instance fields
.field protected final mAccount:Lcom/android/emailcommon/provider/Account;

.field private final mAccountId:J

.field private mClient:Lorg/apache/http/client/HttpClient;

.field private mClientConnectionManager:Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mProtocolVersion:D

.field private mProtocolVersionIsSet:Z

.field private mStopped:Z

.field private mStoppedReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "EAS-1.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->USER_AGENT:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "securitySyncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 148
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 119
    iput-boolean v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStopped:Z

    .line 120
    iput v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 125
    iput-boolean v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    .line 140
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 142
    iput-object p2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 143
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mAccountId:J

    .line 144
    iget-object v0, p2, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->setProtocolVersion(Ljava/lang/String;)Z

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/exchange/service/EasServerConnection;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/service/EasServerConnection;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private makeAuthString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "cs":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBaseUriString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v2

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeUserString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Could not get device id, defaulting to \'0\'"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "&User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/exchange/service/EasServerConnection;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static requestSyncForMailbox(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 4
    .param p0, "amAccount"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "mailboxId"    # J

    .prologue
    .line 555
    invoke-static {p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v0

    .line 556
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 557
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "requestSync EasServerConnection requestSyncForMailbox"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 558
    return-void
.end method


# virtual methods
.method public executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/kingsoft/exchange/EasResponse;
    .locals 8
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 407
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v4, "EasServerConnection about to make request %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStopped:Z

    if-eqz v3, :cond_0

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStopped:Z

    .line 417
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Command was stopped before POST"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 419
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 420
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "postCompleted":Z
    :try_start_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v3

    invoke-virtual {p0, p2, p3}, Lcom/kingsoft/exchange/service/EasServerConnection;->getHttpClient(J)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/kingsoft/exchange/EasResponse;->fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 425
    .local v2, "response":Lcom/kingsoft/exchange/EasResponse;
    const/4 v1, 0x1

    .line 434
    monitor-enter p0

    .line 435
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 436
    if-eqz v1, :cond_1

    .line 437
    const/4 v3, 0x0

    iput v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 439
    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 428
    .end local v2    # "response":Lcom/kingsoft/exchange/EasResponse;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v3

    monitor-enter p0

    .line 435
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 436
    if-eqz v1, :cond_2

    .line 437
    const/4 v4, 0x0

    iput v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 439
    :cond_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method protected executePost(Lorg/apache/http/client/methods/HttpPost;)Lcom/kingsoft/exchange/EasResponse;
    .locals 2
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 445
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->instance()Lcom/kingsoft/exchange/eas/EasConnectionCache;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->getConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 155
    .local v0, "connManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClientConnectionManager:Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    if-eq v1, v0, :cond_0

    .line 156
    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClientConnectionManager:Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 159
    :cond_0
    return-object v0
.end method

.method protected getHttpClient(J)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    .line 175
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 176
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 177
    long-to-int v1, p1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 178
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 179
    new-instance v1, Lcom/kingsoft/exchange/service/EasServerConnection$1;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/kingsoft/exchange/service/EasServerConnection$1;-><init>(Lcom/kingsoft/exchange/service/EasServerConnection;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 188
    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    return-object v1
.end method

.method public getProtocolVersion()D
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    return-wide v0
.end method

.method public declared-synchronized getStoppedReason()I
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStoppedReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/kingsoft/exchange/service/EasServerConnection;->USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method public isProtocolVersionSet()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    return v0
.end method

.method public makeOptions()Lorg/apache/http/client/methods/HttpOptions;
    .locals 3

    .prologue
    .line 321
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 322
    .local v0, "method":Lorg/apache/http/client/methods/HttpOptions;
    const-string/jumbo v1, "Authorization"

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0
.end method

.method public makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "usePolicyKey"    # Z

    .prologue
    const/4 v3, 0x0

    .line 284
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 285
    .local v9, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v0, "Authorization"

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "MS-ASProtocolVersion"

    iget-wide v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "User-Agent"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    if-eqz p3, :cond_0

    .line 290
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {v9, v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    if-eqz p4, :cond_1

    .line 298
    iget-wide v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mAccountId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 299
    const/4 v7, 0x0

    .line 305
    .local v7, "accountKey":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    move-object v8, v7

    .line 310
    .local v8, "key":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "X-MS-PolicyKey"

    invoke-virtual {v9, v0, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v7    # "accountKey":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 313
    return-object v9

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/exchange/service/EasServerConnection;->ACCOUNT_SECURITY_KEY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "accountKey":Ljava/lang/String;
    goto :goto_0

    .line 308
    :cond_3
    const-string/jumbo v8, "0"

    .restart local v8    # "key":Ljava/lang/String;
    goto :goto_1
.end method

.method public makeUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeBaseUriString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "uriString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?Cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeUserString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0
.end method

.method protected makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public redirectHostAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "newAddress"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mClient:Lorg/apache/http/client/HttpClient;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p1, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/HostAuth;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->instance()Lcom/kingsoft/exchange/eas/EasConnectionCache;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/eas/EasConnectionCache;->uncacheConnectionManager(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 168
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 171
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public registerClientCert()Z
    .locals 4

    .prologue
    .line 496
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resetAuthorization(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 2
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 270
    const-string/jumbo v0, "Authorization"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "Authorization"

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method protected sendHttpClientOptions()Lcom/kingsoft/exchange/EasResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 263
    .local v0, "method":Lorg/apache/http/client/methods/HttpOptions;
    const-string/jumbo v1, "Authorization"

    invoke-direct {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeAuthString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v2, v3}, Lcom/kingsoft/exchange/service/EasServerConnection;->getHttpClient(J)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kingsoft/exchange/EasResponse;->fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v1

    return-object v1
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/kingsoft/exchange/EasResponse;
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 337
    const-string/jumbo v7, "Ping"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 340
    .local v3, "isPingCommand":Z
    const/4 v2, 0x0

    .line 341
    .local v2, "extra":Ljava/lang/String;
    const/4 v5, 0x0

    .line 342
    .local v5, "msg":Z
    const-string/jumbo v7, "SmartForward&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "SmartReply&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    :cond_0
    const/16 v7, 0x26

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    .local v0, "cmdLength":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 346
    const/4 v5, 0x1

    .line 355
    .end local v0    # "cmdLength":I
    :cond_1
    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getProtocolVersion()D

    move-result-wide v7

    const-wide/high16 v9, 0x402c000000000000L

    cmpg-double v7, v7, v9

    if-gez v7, :cond_4

    .line 356
    const-string/jumbo v1, "message/rfc822"

    .line 364
    .local v1, "contentType":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_6

    .line 365
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "uriString":Ljava/lang/String;
    :goto_2
    if-nez v3, :cond_7

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {p0, v6, p2, v1, v7}, Lcom/kingsoft/exchange/service/EasServerConnection;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    .line 374
    .local v4, "method":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v3, :cond_2

    .line 375
    const-string/jumbo v7, "Connection"

    const-string/jumbo v8, "close"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_2
    invoke-virtual {p0, v4, p3, p4}, Lcom/kingsoft/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v7

    return-object v7

    .line 347
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v4    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "uriString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "SendMail&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    const/4 v5, 0x1

    goto :goto_0

    .line 357
    :cond_4
    if-eqz p2, :cond_5

    .line 358
    const-string/jumbo v1, "application/vnd.ms-sync.wbxml"

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 361
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 367
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "uriString":Ljava/lang/String;
    goto :goto_2

    .line 369
    :cond_7
    const/4 v7, 0x0

    goto :goto_3
.end method

.method protected sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 393
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpClientPost(Ljava/lang/String;[BJ)Lcom/kingsoft/exchange/EasResponse;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 383
    if-nez p2, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 388
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/kingsoft/exchange/service/EasServerConnection;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v1

    return-object v1

    .line 386
    .end local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .restart local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    goto :goto_0
.end method

.method protected sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 12
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 521
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5, v6, v11}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 523
    .local v1, "mailboxId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 524
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "No outbox for account %d, creating it"

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 525
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5, v6, v11}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 527
    .local v3, "outbox":Lcom/android/emailcommon/provider/Mailbox;
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 528
    iget-wide v1, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 530
    .end local v3    # "outbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    iput-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 531
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 534
    new-instance v0, Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .local v0, "fromAddress":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->pack()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 536
    iput v10, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 537
    iput-boolean v10, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 538
    iput-boolean v10, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 539
    invoke-static {}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 542
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 543
    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v6, "com.android.exchange"

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v4, v5, v1, v2}, Lcom/kingsoft/exchange/service/EasServerConnection;->requestSyncForMailbox(Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 545
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)Z
    .locals 7
    .param p1, "protocolVersionString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersionIsSet:Z

    .line 233
    if-nez p1, :cond_0

    .line 234
    const-string/jumbo p1, "2.5"

    .line 236
    :cond_0
    iget-wide v0, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 237
    .local v0, "oldProtocolVersion":D
    invoke-static {p1}, Lcom/kingsoft/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    .line 238
    iget-wide v5, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mProtocolVersion:D

    cmpl-double v2, v0, v5

    if-eqz v2, :cond_2

    :goto_1
    return v3

    .end local v0    # "oldProtocolVersion":D
    :cond_1
    move v2, v4

    .line 232
    goto :goto_0

    .restart local v0    # "oldProtocolVersion":D
    :cond_2
    move v3, v4

    .line 238
    goto :goto_1
.end method

.method public declared-synchronized stop(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 460
    monitor-enter p0

    if-lt p1, v0, :cond_0

    if-gt p1, v2, :cond_0

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_1

    .line 462
    .local v0, "isMidPost":Z
    :goto_0
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "%s with reason %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "Interrupt"

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    iput p1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStoppedReason:I

    .line 464
    if-eqz v0, :cond_4

    .line 465
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 466
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mPendingRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v0    # "isMidPost":Z
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 461
    goto :goto_0

    .line 462
    .restart local v0    # "isMidPost":Z
    :cond_2
    :try_start_1
    const-string/jumbo v1, "Stop next"

    goto :goto_1

    .line 469
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/kingsoft/exchange/service/EasServerConnection$2;

    invoke-direct {v2, p0}, Lcom/kingsoft/exchange/service/EasServerConnection$2;-><init>(Lcom/kingsoft/exchange/service/EasServerConnection;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 460
    .end local v0    # "isMidPost":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 477
    .restart local v0    # "isMidPost":Z
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/kingsoft/exchange/service/EasServerConnection;->mStopped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
