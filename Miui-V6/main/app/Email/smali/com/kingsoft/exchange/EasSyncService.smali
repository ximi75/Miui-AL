.class public Lcom/kingsoft/exchange/EasSyncService;
.super Lcom/kingsoft/emailsync/AbstractSyncService;
.source "EasSyncService.java"


# static fields
.field private static final AUTO_DISCOVER_PAGE:Ljava/lang/String; = "/autodiscover/autodiscover.xml"

.field private static final AUTO_DISCOVER_SCHEMA_PREFIX:Ljava/lang/String; = "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/"

.field public static final COMMAND_TIMEOUT:I = 0x7530

.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final DEBUG_GAL_SERVICE:Z = false

.field static final DEVICE_TYPE:Ljava/lang/String; = "Android"

.field public static final EAS_12_POLICY_TYPE:Ljava/lang/String; = "MS-EAS-Provisioning-WBXML"

.field public static final EAS_2_POLICY_TYPE:Ljava/lang/String; = "MS-WAP-Provisioning-XML"

.field protected static final EAS_REDIRECT_CODE:I = 0x1c3

.field public static final INTERNAL_SERVER_ERROR_CODE:I = 0x1f4

.field private static final MAX_LOOPING_COUNT:I = 0x64

.field private static final MAX_REDIRECTS:I = 0x3

.field public static final MESSAGE_FLAG_MOVED_MESSAGE:I = 0x200

.field protected static final PING_COMMAND:Ljava/lang/String; = "Ping"

.field private static final POST_LOCK_TIMEOUT:I = 0x2710

.field private static final PROVISION_STATUS_OK:Ljava/lang/String; = "1"

.field private static final PROVISION_STATUS_PARTIAL:Ljava/lang/String; = "2"

.field static final USER_AGENT:Ljava/lang/String;

.field private static final WATCHDOG_TIMEOUT_ALLOWANCE:I = 0x7530


# instance fields
.field mAuthString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBaseUriString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClientCertAlias:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field private mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field public mIsValid:Z

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field protected mPostAborted:Z

.field protected mPostReset:Z

.field public mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mRedirectCount:I

.field private mSsl:Z

.field private mTrustSsl:Z

.field public mUpsyncFailed:Z

.field public mUserName:Ljava/lang/String;

.field mUserString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
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

    sput-object v0, Lcom/kingsoft/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    const-string/jumbo v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/emailsync/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 128
    const-string/jumbo v1, "2.5"

    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 130
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 131
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 133
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 135
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 142
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 144
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostAborted:Z

    .line 146
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostReset:Z

    .line 150
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    .line 151
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mTrustSsl:Z

    .line 152
    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 156
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mIsValid:Z

    .line 159
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 433
    iput v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 164
    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_0

    .line 165
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mIsValid:Z

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 169
    .local v0, "ha":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_1

    .line 170
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mIsValid:Z

    goto :goto_0

    .line 173
    :cond_1
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    .line 174
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 173
    goto :goto_1

    :cond_3
    move v2, v3

    .line 174
    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/kingsoft/emailsync/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "2.5"

    iput-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 144
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostAborted:Z

    .line 146
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostReset:Z

    .line 150
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    .line 151
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mTrustSsl:Z

    .line 152
    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mIsValid:Z

    .line 159
    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 433
    iput v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    .line 179
    return-void
.end method

.method private static acknowledgeProvision(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "svc"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p1, "tempKey"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeProvisionImpl(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static acknowledgeProvisionImpl(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "svc"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p1, "tempKey"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "remoteWipe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x38b

    .line 1542
    new-instance v5, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1543
    .local v5, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v6, 0x385

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x386

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1544
    const/16 v6, 0x387

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1547
    const/16 v6, 0x388

    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-static {v7}, Lcom/kingsoft/exchange/EasSyncService;->getPolicyType(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1549
    const/16 v6, 0x389

    invoke-virtual {v5, v6, p1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1550
    invoke-virtual {v5, v8, p2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1551
    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1552
    if-eqz p3, :cond_0

    .line 1553
    const/16 v6, 0x38c

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1554
    const-string/jumbo v6, "1"

    invoke-virtual {v5, v8, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1555
    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1557
    :cond_0
    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1558
    const-string/jumbo v6, "Provision"

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v3

    .line 1560
    .local v3, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1561
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_3

    .line 1562
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1563
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Lcom/kingsoft/exchange/adapter/ProvisionParser;

    iget-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 1564
    .local v2, "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parse()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1566
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v4, "failed"

    .line 1567
    .local v4, "result":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Provision "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v6, "2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PART"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1573
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1578
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    .end local v4    # "result":Ljava/lang/String;
    :goto_2
    return-object v6

    .line 1566
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "confirmed"

    goto :goto_0

    .line 1567
    .restart local v4    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "FULL"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1573
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    .end local v4    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Provisioning failed for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v6, "2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "PART"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1578
    const/4 v6, 0x0

    goto :goto_2

    .line 1573
    .end local v0    # "code":I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v6

    .line 1576
    .restart local v0    # "code":I
    :cond_4
    const-string/jumbo v6, "FULL"

    goto :goto_3
.end method

.method private static acknowledgeRemoteWipe(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;)V
    .locals 2
    .param p0, "svc"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p1, "tempKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    const-string/jumbo v0, "1"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeProvisionImpl(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1533
    return-void
.end method

.method private cacheAuthUserAndBaseUriStrings()V
    .locals 6

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1179
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "safeUserName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "cs":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "&User="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&DeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&DeviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 1184
    iget-boolean v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    iget-boolean v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mTrustSsl:Z

    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "scheme":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1188
    .end local v0    # "cs":Ljava/lang/String;
    .end local v1    # "safeUserName":Ljava/lang/String;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static canProvision(Lcom/kingsoft/exchange/EasSyncService;)Lcom/kingsoft/exchange/adapter/ProvisionParser;
    .locals 11
    .param p0, "svc"    # Lcom/kingsoft/exchange/EasSyncService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1463
    new-instance v6, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1464
    .local v6, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 1465
    .local v4, "protocolVersion":Ljava/lang/Double;
    const/16 v7, 0x385

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1466
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x402c333333333333L

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    .line 1468
    const/16 v7, 0x496

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x488

    invoke-virtual {v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1469
    const/16 v7, 0x497

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1472
    const/16 v7, 0x49a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Android "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1476
    const/16 v7, 0x4a0

    sget-object v8, Lcom/kingsoft/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1477
    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1479
    :cond_0
    const/16 v7, 0x386

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1480
    const/16 v7, 0x387

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1481
    const/16 v7, 0x388

    invoke-static {v4}, Lcom/kingsoft/exchange/EasSyncService;->getPolicyType(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1482
    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1483
    const-string/jumbo v7, "Provision"

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v5

    .line 1485
    .local v5, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1486
    .local v0, "code":I
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_3

    .line 1487
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1488
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Lcom/kingsoft/exchange/adapter/ProvisionParser;

    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v1}, Lcom/kingsoft/exchange/adapter/ProvisionParser;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 1489
    .local v3, "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parse()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1492
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x402c000000000000L

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    .line 1496
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-static {p0, v7, v8}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeProvision(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    .local v2, "policyKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1499
    invoke-virtual {v3, v2}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->setSecuritySyncKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    .end local v2    # "policyKey":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1521
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :goto_1
    return-object v3

    .line 1501
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1505
    const-string/jumbo v7, "PolicySet is NOT fully supportable"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "2"

    invoke-static {p0, v7, v8}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeProvision(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1510
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->clearUnsupportablePolicies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1517
    .end local v0    # "code":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v7

    .restart local v0    # "code":I
    :cond_3
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1521
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->getClientConnectionManager(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 1248
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1249
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1250
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1251
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1252
    new-instance v1, Lcom/kingsoft/exchange/EasSyncService$1;

    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/kingsoft/exchange/EasSyncService$1;-><init>(Lcom/kingsoft/exchange/EasSyncService;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static getPolicyType(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4
    .param p0, "protocolVersion"    # Ljava/lang/Double;

    .prologue
    .line 1452
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, "MS-EAS-Provisioning-WBXML"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "MS-WAP-Provisioning-XML"

    goto :goto_0
.end method

.method private static getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .param p0, "resp"    # Lorg/apache/http/HttpResponse;
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 603
    const-string/jumbo v2, "X-MS-Location"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 604
    .local v1, "locHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "loc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 613
    .end local v0    # "loc":Ljava/lang/String;
    .end local p1    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object p1

    .restart local p1    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getServiceForMailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Lcom/kingsoft/exchange/EasSyncService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "m"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 186
    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 192
    new-instance v0, Lcom/kingsoft/exchange/EasSyncService;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    :goto_0
    return-object v0

    .line 188
    :sswitch_0
    new-instance v0, Lcom/kingsoft/exchange/EasAccountService;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/exchange/EasAccountService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 190
    :sswitch_1
    new-instance v0, Lcom/kingsoft/exchange/EasOutboxService;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;
    .locals 9
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "post"    # Lorg/apache/http/client/methods/HttpPost;
    .param p3, "canRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 630
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, p1, p2, v8}, Lcom/kingsoft/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v2

    .line 632
    .local v2, "resp":Lcom/kingsoft/exchange/EasResponse;
    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 634
    .local v1, "code":I
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_1

    .line 636
    if-eqz p2, :cond_0

    .line 637
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p1, p2, v8}, Lcom/kingsoft/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v2

    .line 660
    .end local v2    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 641
    .restart local v2    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_1
    const/16 v3, 0x191

    if-ne v1, v3, :cond_3

    .line 642
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 644
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 645
    .local v0, "atSignIndex":I
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 646
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 647
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 649
    const-string/jumbo v3, "Authorization"

    invoke-virtual {p2, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 650
    const-string/jumbo v3, "Authorization"

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p1, p2, v6}, Lcom/kingsoft/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v2

    goto :goto_0

    .line 653
    .end local v0    # "atSignIndex":I
    :cond_2
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 655
    :cond_3
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 657
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 658
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/kingsoft/exchange/provider/GalResult;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "limit"    # I

    .prologue
    .line 931
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 932
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_1

    .line 933
    invoke-static {p0, v0}, Lcom/kingsoft/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/exchange/EasSyncService;

    move-result-object v7

    .line 934
    .local v7, "svc":Lcom/kingsoft/exchange/EasSyncService;
    if-nez v7, :cond_0

    const/4 v8, 0x0

    .line 974
    .end local v7    # "svc":Lcom/kingsoft/exchange/EasSyncService;
    :goto_0
    return-object v8

    .line 936
    .restart local v7    # "svc":Lcom/kingsoft/exchange/EasSyncService;
    :cond_0
    :try_start_0
    new-instance v6, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 937
    .local v6, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v8, 0x3c5

    invoke-virtual {v6, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x3c7

    invoke-virtual {v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 938
    const/16 v8, 0x3c8

    const-string/jumbo v9, "GAL"

    invoke-virtual {v6, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x3c9

    invoke-virtual {v8, v9, p3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 939
    const/16 v8, 0x3ca

    invoke-virtual {v6, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 940
    const/16 v8, 0x3cb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "0-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p4, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 941
    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 942
    const-string/jumbo v8, "Search"

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 944
    .local v5, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 945
    .local v1, "code":I
    const/16 v8, 0xc8

    if-ne v1, v8, :cond_3

    .line 946
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 948
    .local v4, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v3, Lcom/kingsoft/exchange/adapter/GalParser;

    invoke-direct {v3, v4, v7}, Lcom/kingsoft/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/EasSyncService;)V

    .line 949
    .local v3, "gp":Lcom/kingsoft/exchange/adapter/GalParser;
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/GalParser;->parse()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 950
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/GalParser;->getGalResult()Lcom/kingsoft/exchange/provider/GalResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 953
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 967
    :try_start_4
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 969
    .end local v1    # "code":I
    .end local v3    # "gp":Lcom/kingsoft/exchange/adapter/GalParser;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v6    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    :catch_0
    move-exception v2

    .line 971
    .local v2, "e":Ljava/io/IOException;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GAL lookup exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 974
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "svc":Lcom/kingsoft/exchange/EasSyncService;
    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 953
    .restart local v1    # "code":I
    .restart local v3    # "gp":Lcom/kingsoft/exchange/adapter/GalParser;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v6    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v7    # "svc":Lcom/kingsoft/exchange/EasSyncService;
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 967
    .end local v3    # "gp":Lcom/kingsoft/exchange/adapter/GalParser;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 953
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 967
    .end local v1    # "code":I
    .end local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    :try_start_8
    invoke-virtual {v5}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 956
    .restart local v1    # "code":I
    :cond_3
    const/16 v8, 0x1c1

    if-ne v8, v1, :cond_4

    .line 960
    :try_start_9
    invoke-static {v7}, Lcom/kingsoft/exchange/EasSyncService;->tryProvision(Lcom/kingsoft/exchange/EasSyncService;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 964
    :cond_4
    :goto_3
    const/4 v8, 0x1

    :try_start_a
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GAL lookup returned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 961
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 16
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "response"    # I

    .prologue
    .line 983
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    new-instance v9, Lcom/kingsoft/emailcommon/mail/PackedString;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v9, v13}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 988
    .local v9, "meetingInfo":Lcom/kingsoft/emailcommon/mail/PackedString;
    const-string/jumbo v13, "ORGMAIL"

    invoke-virtual {v9, v13}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    .line 990
    .local v1, "addrs":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v13, v1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 991
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 993
    .local v10, "organizerEmail":Ljava/lang/String;
    const-string/jumbo v13, "DTSTAMP"

    invoke-virtual {v9, v13}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "dtStamp":Ljava/lang/String;
    const-string/jumbo v13, "DTSTART"

    invoke-virtual {v9, v13}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, "dtStart":Ljava/lang/String;
    const-string/jumbo v13, "DTEND"

    invoke-virtual {v9, v13}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "dtEnd":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    .local v7, "entityValues":Landroid/content/ContentValues;
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v7}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1003
    .local v6, "entity":Landroid/content/Entity;
    const-string/jumbo v13, "DTSTAMP"

    invoke-static {v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v13, "dtstart"

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    const-string/jumbo v13, "dtend"

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string/jumbo v13, "eventLocation"

    const-string/jumbo v14, "LOC"

    invoke-virtual {v9, v14}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v13, "title"

    const-string/jumbo v14, "TITLE"

    invoke-virtual {v9, v14}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v13, "organizer"

    invoke-virtual {v7, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    .local v2, "attendeeValues":Landroid/content/ContentValues;
    const-string/jumbo v13, "attendeeRelationship"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    const-string/jumbo v13, "attendeeEmail"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1019
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1020
    .local v11, "organizerValues":Landroid/content/ContentValues;
    const-string/jumbo v13, "attendeeRelationship"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string/jumbo v13, "attendeeEmail"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v13, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1029
    packed-switch p2, :pswitch_data_0

    .line 1038
    :pswitch_0
    const/16 v8, 0x100

    .line 1041
    .local v8, "flag":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "UID"

    invoke-virtual {v9, v14}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v13, v6, v8, v14, v15}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    .line 1045
    .local v12, "outgoingMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v12, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v14, v14, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v13, v14, v15, v12}, Lcom/kingsoft/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 1031
    .end local v8    # "flag":I
    .end local v12    # "outgoingMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :pswitch_1
    const/16 v8, 0x40

    .line 1032
    .restart local v8    # "flag":I
    goto :goto_1

    .line 1034
    .end local v8    # "flag":I
    :pswitch_2
    const/16 v8, 0x80

    .line 1035
    .restart local v8    # "flag":I
    goto :goto_1

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendSettings()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1582
    new-instance v3, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v3}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1583
    .local v3, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v5, 0x485

    invoke-virtual {v3, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1584
    const/16 v5, 0x496

    invoke-virtual {v3, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x488

    invoke-virtual {v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1585
    const/16 v5, 0x497

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1586
    const/16 v5, 0x49a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Android "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1587
    const/16 v5, 0x4a0

    sget-object v6, Lcom/kingsoft/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1588
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1589
    const-string/jumbo v5, "Settings"

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v2

    .line 1591
    .local v2, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1592
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 1593
    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1594
    .local v1, "is":Ljava/io/InputStream;
    new-instance v4, Lcom/kingsoft/exchange/adapter/SettingsParser;

    invoke-direct {v4, v1}, Lcom/kingsoft/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V

    .line 1595
    .local v4, "sp":Lcom/kingsoft/exchange/adapter/SettingsParser;
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/SettingsParser;->parse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1598
    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1601
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "sp":Lcom/kingsoft/exchange/adapter/SettingsParser;
    :goto_0
    return v5

    .line 1598
    :cond_0
    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 1601
    const/4 v5, 0x0

    goto :goto_0

    .line 1598
    .end local v0    # "code":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v5
.end method

.method public static setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/exchange/EasSyncService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v4, 0x0

    .line 381
    iget v5, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 404
    :goto_0
    return-object v3

    .line 385
    :cond_0
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 386
    .local v2, "protocolVersion":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v4

    .line 387
    goto :goto_0

    .line 389
    :cond_1
    new-instance v3, Lcom/kingsoft/exchange/EasSyncService;

    const-string/jumbo v5, "OutOfBand"

    invoke-direct {v3, v5}, Lcom/kingsoft/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "svc":Lcom/kingsoft/exchange/EasSyncService;
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 391
    .local v1, "ha":Lcom/android/emailcommon/provider/HostAuth;
    iput-object v2, v3, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 392
    invoke-static {v2}, Lcom/kingsoft/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v3, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 393
    iput-object p0, v3, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 394
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 395
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v5, v3, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 396
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 398
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/kingsoft/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 399
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    iput-object p1, v3, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .line 401
    goto :goto_0
.end method

.method public static tryProvision(Lcom/kingsoft/exchange/EasSyncService;)Z
    .locals 12
    .param p0, "svc"    # Lcom/kingsoft/exchange/EasSyncService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1385
    invoke-static {p0}, Lcom/kingsoft/exchange/EasSyncService;->canProvision(Lcom/kingsoft/exchange/EasSyncService;)Lcom/kingsoft/exchange/adapter/ProvisionParser;

    move-result-object v4

    .line 1386
    .local v4, "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    if-nez v4, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v6

    .line 1387
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1388
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1390
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 1391
    .local v3, "policy":Lcom/android/emailcommon/provider/Policy;
    const/4 v2, 0x0

    .line 1393
    .local v2, "oldPolicy":Lcom/android/emailcommon/provider/Policy;
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 1394
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 1398
    :cond_2
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v3, v10}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 1401
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1403
    const-string/jumbo v8, "!!! Remote wipe request received"

    invoke-static {v8}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1405
    invoke-static {v1, v0, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1407
    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Lcom/kingsoft/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 1412
    :try_start_0
    const-string/jumbo v7, "!!! Acknowledging remote wipe to server"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeRemoteWipe(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_1
    const-string/jumbo v7, "!!! Executing remote wipe"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1420
    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe(Landroid/content/Context;)V

    goto :goto_0

    .line 1422
    :cond_3
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v1, v3}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1427
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c000000000000L

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 1428
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v5

    .line 1433
    .local v5, "securitySyncKey":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_0

    .line 1435
    if-eqz v2, :cond_5

    .line 1436
    iget-boolean v6, v2, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v8, v3, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v6, v8, :cond_4

    iget v6, v2, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v8, v3, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v6, v8, :cond_5

    .line 1438
    :cond_4
    invoke-static {v1, v0, v3}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 1442
    :cond_5
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v8, v9, v3, v5}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1444
    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V

    move v6, v7

    .line 1445
    goto/16 :goto_0

    .line 1430
    .end local v5    # "securitySyncKey":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1"

    invoke-static {p0, v8, v9}, Lcom/kingsoft/exchange/EasSyncService;->acknowledgeProvision(Lcom/kingsoft/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "securitySyncKey":Ljava/lang/String;
    goto :goto_2

    .line 1414
    .end local v5    # "securitySyncKey":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public alarm()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 238
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v7, :cond_0

    .line 292
    :goto_0
    return v5

    .line 239
    :cond_0
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "threadName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 246
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_5

    .line 247
    sget-boolean v8, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v8, :cond_2

    .line 248
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 249
    .local v4, "uri":Ljava/net/URI;
    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 252
    const-string/jumbo v1, "POST"

    .line 254
    :cond_1
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, ": Alert, aborting "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 260
    .end local v1    # "query":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostAborted:Z

    .line 261
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 267
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const-wide/16 v7, 0x2710

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 276
    .local v2, "s":Ljava/lang/Thread$State;
    sget-boolean v7, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_3

    .line 277
    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 283
    :try_start_2
    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v2, v8, :cond_6

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v8, v0, :cond_6

    .line 284
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    .line 285
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 286
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Interrupting..."

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 288
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v6

    goto/16 :goto_0

    .line 256
    .end local v2    # "s":Ljava/lang/Thread$State;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_4
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, ": Alert, no URI?"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v0    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 264
    .restart local v0    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Alert, no pending POST"

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 265
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 290
    .restart local v2    # "s":Ljava/lang/Thread$State;
    :cond_6
    :try_start_5
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 272
    .end local v2    # "s":Ljava/lang/Thread$State;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method protected autodiscoverUrlToHostAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 669
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 671
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/kingsoft/exchange/EasResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "method"    # Lorg/apache/http/client/methods/HttpPost;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingsoft/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/kingsoft/exchange/EasResponse;
    .locals 7
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "method"    # Lorg/apache/http/client/methods/HttpPost;
    .param p3, "timeout"    # I
    .param p4, "isPingCommand"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1286
    :try_start_0
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->isHoldingWakeLock(J)Z

    move-result v2

    .line 1287
    .local v2, "hasWakeLock":Z
    if-eqz p4, :cond_0

    if-nez v2, :cond_0

    .line 1288
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "executePostWithTimeout (ping) without holding wakelock"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1290
    :cond_0
    iput-object p2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1291
    add-int/lit16 v3, p3, 0x7530

    int-to-long v0, v3

    .line 1292
    .local v0, "alarmTime":J
    if-eqz p4, :cond_1

    if-eqz v2, :cond_1

    .line 1293
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6, v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1297
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    :try_start_1
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/kingsoft/exchange/EasResponse;->fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 1301
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1302
    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    .line 1303
    :try_start_2
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->runAwake(J)V

    .line 1307
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1308
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 1295
    :cond_1
    :try_start_3
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6, v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    goto :goto_0

    .line 1297
    .end local v0    # "alarmTime":J
    .end local v2    # "hasWakeLock":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1305
    .restart local v0    # "alarmTime":J
    .restart local v2    # "hasWakeLock":Z
    :cond_2
    :try_start_4
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_1

    .line 1308
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1301
    :catchall_2
    move-exception v3

    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1302
    if-eqz p4, :cond_3

    if-eqz v2, :cond_3

    .line 1303
    :try_start_5
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->runAwake(J)V

    .line 1307
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1308
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 1305
    :cond_3
    :try_start_6
    iget-wide v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/kingsoft/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_2

    .line 1308
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1363
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1364
    .local v0, "type":I
    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1365
    const-string/jumbo v1, "Contacts"

    .line 1369
    :goto_0
    return-object v1

    .line 1366
    :cond_0
    const/16 v1, 0x41

    if-ne v0, v1, :cond_1

    .line 1367
    const-string/jumbo v1, "Calendar"

    goto :goto_0

    .line 1369
    :cond_1
    const-string/jumbo v1, "Email"

    goto :goto_0
.end method

.method protected getValidateRedirect(Lcom/kingsoft/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z
    .locals 8
    .param p1, "resp"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 414
    const-string/jumbo v4, "X-MS-Location"

    invoke-virtual {p1, v4}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 415
    .local v1, "locHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 418
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "loc":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 421
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 422
    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    iput-object v4, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 423
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Redirecting to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0    # "loc":Ljava/lang/String;
    :goto_0
    return v2

    .line 425
    :catch_0
    move-exception v2

    :cond_0
    move v2, v3

    .line 429
    goto :goto_0
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1193
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1194
    .local v0, "uriString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?Cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_0
    if-eqz p2, :cond_1

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    :cond_1
    return-object v0
.end method

.method protected messageMoveRequest(Lcom/kingsoft/exchange/MessageMoveRequest;)V
    .locals 18
    .param p1, "req"    # Lcom/kingsoft/exchange/MessageMoveRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/kingsoft/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 1059
    .local v11, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mailboxKey"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1062
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_2

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 1063
    :cond_2
    const/4 v15, 0x0

    .line 1065
    .local v15, "srcMailbox":Lcom/android/emailcommon/provider/Mailbox;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1068
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1066
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 1068
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1070
    if-eqz v15, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/kingsoft/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 1072
    .local v9, "dstMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v9, :cond_0

    .line 1073
    new-instance v14, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v14}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1074
    .local v14, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v1, 0x145

    invoke-virtual {v14, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x146

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1075
    const/16 v1, 0x147

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1076
    const/16 v1, 0x148

    iget-object v2, v15, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1077
    const/16 v1, 0x149

    iget-object v2, v9, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1078
    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1079
    const-string/jumbo v1, "MoveItems"

    invoke-virtual {v14}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v13

    .line 1081
    .local v13, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v16

    .line 1082
    .local v16, "status":I
    const/16 v1, 0xc8

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    .line 1083
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1084
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 1085
    .local v10, "is":Ljava/io/InputStream;
    new-instance v12, Lcom/kingsoft/exchange/adapter/MoveItemsParser;

    invoke-direct {v12, v10}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;)V

    .line 1086
    .local v12, "p":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->parse()Z

    .line 1087
    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v17

    .line 1088
    .local v17, "statusCode":I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1089
    .local v8, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_7

    .line 1091
    const-string/jumbo v1, "mailboxKey"

    iget-object v2, v15, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/kingsoft/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1103
    :cond_4
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_6

    .line 1107
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/kingsoft/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1121
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "p":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    .end local v17    # "statusCode":I
    :cond_6
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1068
    .end local v9    # "dstMailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v14    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v16    # "status":I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1095
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "dstMailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "p":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    .restart local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v14    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v16    # "status":I
    .restart local v17    # "statusCode":I
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_4

    .line 1097
    :try_start_3
    const-string/jumbo v1, "syncServerId"

    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/kingsoft/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1121
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "p":Lcom/kingsoft/exchange/adapter/MoveItemsParser;
    .end local v16    # "status":I
    .end local v17    # "statusCode":I
    :catchall_1
    move-exception v1

    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v1

    .line 1114
    .restart local v16    # "status":I
    :cond_8
    :try_start_4
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1115
    new-instance v1, Lcom/kingsoft/exchange/EasAuthenticationException;

    invoke-direct {v1}, Lcom/kingsoft/exchange/EasAuthenticationException;-><init>()V

    throw v1

    .line 1117
    :cond_9
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Move items request failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1118
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 856
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 869
    return-void

    .line 858
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 859
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 862
    const-string/jumbo v2, "Redirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Redirect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 864
    :cond_2
    const-string/jumbo v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 911
    .local v0, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 917
    return-void

    .line 913
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 894
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    return-void

    .line 896
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 897
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "User"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 900
    :cond_2
    const-string/jumbo v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v1, 0x0

    .line 816
    .local v1, "mobileSync":Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 817
    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 835
    return-void

    .line 819
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 820
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "Type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 822
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MobileSync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    const/4 v1, 0x1

    goto :goto_0

    .line 825
    :cond_2
    if-eqz v1, :cond_0

    const-string/jumbo v4, "Url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->autodiscoverUrlToHostAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "hostAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 829
    iput-object v0, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 830
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Autodiscover, server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 841
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    return-void

    .line 843
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 844
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "Server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 874
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 875
    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 888
    return-void

    .line 877
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 878
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "EMailAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "addr":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Autodiscover, email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 882
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 883
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "dn":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Autodiscover, user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 300
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "query":Ljava/lang/String;
    const-string/jumbo v2, "Cmd=Ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Reset, aborting Ping"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPostReset:Z

    .line 305
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 309
    .end local v0    # "query":Ljava/lang/String;
    .end local v1    # "uri":Ljava/net/URI;
    :cond_0
    monitor-exit v3

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resetCalendarSyncKey()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method resetSecurityPolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1850
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1851
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "securityFlags"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1852
    const-string/jumbo v3, "securitySyncKey"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1853
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 1854
    .local v0, "accountId":J
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1856
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 1862
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->setupService()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z
    :try_end_0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    .line 1868
    :try_start_1
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1869
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v7, v8}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v6

    .line 1870
    .local v6, "trafficFlags":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catch Lcom/kingsoft/exchange/EasAuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 1911
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_3

    .line 1913
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Sync finished"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_0

    .line 1940
    :pswitch_0
    const/16 v4, 0x15

    .line 1941
    .local v4, "status":I
    const-string/jumbo v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_1
    const-string/jumbo v7, "sync finished"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1952
    .end local v4    # "status":I
    .end local v6    # "trafficFlags":I
    :catch_0
    move-exception v1

    .line 1953
    .local v1, "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "EmailProvider unavailable; sync ended prematurely"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1916
    .end local v1    # "e":Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v6    # "trafficFlags":I
    :pswitch_1
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_1

    .line 1919
    .end local v4    # "status":I
    :pswitch_2
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v7, "syncStatus"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_3
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_1

    .line 1931
    .end local v4    # "status":I
    :pswitch_4
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_1

    .line 1937
    .end local v4    # "status":I
    :pswitch_5
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto :goto_1

    .line 1945
    .end local v4    # "status":I
    :cond_3
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto/16 :goto_1

    .line 1874
    .end local v4    # "status":I
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x42

    if-ne v7, v8, :cond_7

    .line 1879
    const/4 v5, 0x0

    .line 1893
    .local v5, "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    :cond_5
    :goto_2
    iget-wide v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mRequestTime:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_6

    .line 1894
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Looping for user request..."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1895
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mRequestTime:J

    .line 1897
    :cond_6
    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/EasSyncService;->sync(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 1898
    iget-wide v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mRequestTime:J
    :try_end_4
    .catch Lcom/kingsoft/exchange/EasAuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v7, v7, v10

    if-nez v7, :cond_5

    .line 1911
    :try_start_5
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_9

    .line 1913
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Sync finished"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_1

    .line 1940
    :pswitch_6
    const/16 v4, 0x15

    .line 1941
    .restart local v4    # "status":I
    const-string/jumbo v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_3
    const-string/jumbo v7, "sync finished"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1880
    .end local v4    # "status":I
    .end local v5    # "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    :cond_7
    :try_start_6
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x41

    if-ne v7, v8, :cond_8

    .line 1885
    const/4 v5, 0x0

    .restart local v5    # "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    goto :goto_2

    .line 1887
    .end local v5    # "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    :cond_8
    or-int/lit8 v7, v6, 0x0

    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1888
    new-instance v5, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v5, p0}, Lcom/kingsoft/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V
    :try_end_6
    .catch Lcom/kingsoft/exchange/EasAuthenticationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v5    # "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    goto :goto_2

    .line 1916
    :pswitch_7
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_3

    .line 1919
    .end local v4    # "status":I
    :pswitch_8
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .restart local v3    # "s":Ljava/lang/String;
    const-string/jumbo v7, "syncStatus"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_9
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_3

    .line 1931
    .end local v4    # "status":I
    :pswitch_a
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3

    .line 1937
    .end local v4    # "status":I
    :pswitch_b
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto/16 :goto_3

    .line 1945
    .end local v4    # "status":I
    :cond_9
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto/16 :goto_3

    .line 1900
    .end local v4    # "status":I
    .end local v5    # "target":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .end local v6    # "trafficFlags":I
    :catch_1
    move-exception v1

    .line 1901
    .local v1, "e":Lcom/kingsoft/exchange/EasAuthenticationException;
    const/4 v7, 0x1

    :try_start_8
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Caught authentication error"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1902
    const/4 v7, 0x2

    iput v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1911
    :try_start_9
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_a

    .line 1913
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Sync finished"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_2

    .line 1940
    :pswitch_c
    const/16 v4, 0x15

    .line 1941
    .restart local v4    # "status":I
    const-string/jumbo v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_4
    const-string/jumbo v7, "sync finished"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1916
    .end local v4    # "status":I
    :pswitch_d
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_4

    .line 1919
    .end local v4    # "status":I
    :pswitch_e
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .restart local v3    # "s":Ljava/lang/String;
    const-string/jumbo v7, "syncStatus"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_f
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_4

    .line 1931
    .end local v4    # "status":I
    :pswitch_10
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_4

    .line 1937
    .end local v4    # "status":I
    :pswitch_11
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto :goto_4

    .line 1945
    .end local v4    # "status":I
    :cond_a
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto/16 :goto_4

    .line 1903
    .end local v1    # "e":Lcom/kingsoft/exchange/EasAuthenticationException;
    .end local v4    # "status":I
    :catch_2
    move-exception v1

    .line 1904
    .local v1, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1905
    .local v2, "message":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Caught IOException: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    if-nez v2, :cond_b

    const-string/jumbo v2, "No message"

    .end local v2    # "message":Ljava/lang/String;
    :cond_b
    aput-object v2, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1906
    const/4 v7, 0x1

    iput v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1911
    :try_start_b
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_c

    .line 1913
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Sync finished"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_3

    .line 1940
    :pswitch_12
    const/16 v4, 0x15

    .line 1941
    .restart local v4    # "status":I
    const-string/jumbo v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_5
    const-string/jumbo v7, "sync finished"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1916
    .end local v4    # "status":I
    :pswitch_13
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_5

    .line 1919
    .end local v4    # "status":I
    :pswitch_14
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .restart local v3    # "s":Ljava/lang/String;
    const-string/jumbo v7, "syncStatus"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_15
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_5

    .line 1931
    .end local v4    # "status":I
    :pswitch_16
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_5

    .line 1937
    .end local v4    # "status":I
    :pswitch_17
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto :goto_5

    .line 1945
    .end local v4    # "status":I
    :cond_c
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_b .. :try_end_b} :catch_0

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto/16 :goto_5

    .line 1907
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "status":I
    :catch_3
    move-exception v1

    .line 1908
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v7, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v7, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1911
    :try_start_d
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v7, :cond_d

    .line 1913
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Sync finished"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v7, :pswitch_data_4

    .line 1940
    :pswitch_18
    const/16 v4, 0x15

    .line 1941
    .restart local v4    # "status":I
    const-string/jumbo v7, "Sync ended due to an exception."

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_6
    const-string/jumbo v7, "sync finished"

    invoke-static {v7}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1916
    .end local v4    # "status":I
    :pswitch_19
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_6

    .line 1919
    .end local v4    # "status":I
    :pswitch_1a
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .restart local v3    # "s":Ljava/lang/String;
    const-string/jumbo v7, "syncStatus"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_1b
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_6

    .line 1931
    .end local v4    # "status":I
    :pswitch_1c
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v7, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6

    .line 1937
    .end local v4    # "status":I
    :pswitch_1d
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto :goto_6

    .line 1945
    .end local v4    # "status":I
    :cond_d
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Stopped sync finished."

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto/16 :goto_6

    .line 1910
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "status":I
    :catchall_0
    move-exception v7

    .line 1911
    invoke-static {p0}, Lcom/kingsoft/exchange/ExchangeService;->done(Lcom/kingsoft/emailsync/AbstractSyncService;)V

    .line 1912
    iget-boolean v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    if-nez v8, :cond_e

    .line 1913
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Sync finished"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1914
    iget v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    packed-switch v8, :pswitch_data_5

    .line 1940
    :pswitch_1e
    const/16 v4, 0x15

    .line 1941
    .restart local v4    # "status":I
    const-string/jumbo v8, "Sync ended due to an exception."

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1950
    :goto_7
    const-string/jumbo v8, "sync finished"

    invoke-static {v8}, Lcom/kingsoft/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1951
    throw v7

    .line 1916
    .end local v4    # "status":I
    :pswitch_1f
    const/16 v4, 0x20

    .line 1917
    .restart local v4    # "status":I
    goto :goto_7

    .line 1919
    .end local v4    # "status":I
    :pswitch_20
    const/4 v4, 0x0

    .line 1920
    .restart local v4    # "status":I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1921
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1923
    .restart local v3    # "s":Ljava/lang/String;
    const-string/jumbo v8, "syncStatus"

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    .line 1928
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "status":I
    :pswitch_21
    const/16 v4, 0x16

    .line 1929
    .restart local v4    # "status":I
    goto :goto_7

    .line 1931
    .end local v4    # "status":I
    :pswitch_22
    const/16 v4, 0x17

    .line 1934
    .restart local v4    # "status":I
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_7

    .line 1937
    .end local v4    # "status":I
    :pswitch_23
    const/16 v4, 0x19

    .line 1938
    .restart local v4    # "status":I
    goto :goto_7

    .line 1945
    .end local v4    # "status":I
    :cond_e
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "Stopped sync finished."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_d .. :try_end_d} :catch_0

    .line 1946
    const/4 v4, 0x0

    .restart local v4    # "status":I
    goto :goto_7

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
        :pswitch_18
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_21
        :pswitch_1e
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method protected sendHttpClientOptions()Lcom/kingsoft/exchange/EasResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1354
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1355
    .local v2, "uriString":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 1356
    .local v1, "method":Lorg/apache/http/client/methods/HttpOptions;
    const-string/jumbo v3, "Authorization"

    iget-object v4, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v3, "User-Agent"

    sget-object v4, Lcom/kingsoft/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/16 v3, 0x7530

    invoke-direct {p0, v3}, Lcom/kingsoft/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1359
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/kingsoft/exchange/EasResponse;->fromHttpRequest(Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v3

    return-object v3
.end method

.method public sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;
    .locals 12
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1314
    invoke-direct {p0, p3}, Lcom/kingsoft/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1315
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string/jumbo v8, "Ping"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1318
    .local v3, "isPingCommand":Z
    const/4 v2, 0x0

    .line 1319
    .local v2, "extra":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1320
    .local v5, "msg":Z
    const-string/jumbo v8, "SmartForward&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "SmartReply&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1321
    :cond_0
    const/16 v8, 0x26

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1322
    .local v1, "cmdLength":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1323
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1324
    const/4 v5, 0x1

    .line 1329
    .end local v1    # "cmdLength":I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/kingsoft/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1330
    .local v6, "us":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1334
    .local v4, "method":Lorg/apache/http/client/methods/HttpPost;
    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x402c000000000000L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 1335
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "message/rfc822"

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {p0, v4, v7}, Lcom/kingsoft/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1344
    if-eqz v3, :cond_4

    .line 1345
    const-string/jumbo v7, "Connection"

    const-string/jumbo v8, "close"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_4
    invoke-virtual {v4, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1348
    invoke-virtual {p0, v0, v4, p3, v3}, Lcom/kingsoft/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v7

    return-object v7

    .line 1325
    .end local v4    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "us":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "SendMail&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1326
    const/4 v5, 0x1

    goto :goto_0

    .line 1336
    .restart local v4    # "method":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "us":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_2

    .line 1337
    const-string/jumbo v8, "Content-Type"

    const-string/jumbo v9, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/kingsoft/exchange/MeetingResponseRequest;)V
    .locals 12
    .param p1, "req"    # Lcom/kingsoft/exchange/MeetingResponseRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v9, p1, Lcom/kingsoft/exchange/MeetingResponseRequest;->mMessageId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 1134
    .local v3, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v3, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v8, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1136
    .local v1, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_0

    .line 1137
    new-instance v6, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1138
    .local v6, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v8, 0x207

    invoke-virtual {v6, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x209

    invoke-virtual {v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1139
    const/16 v8, 0x20c

    iget v9, p1, Lcom/kingsoft/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1140
    const/16 v8, 0x206

    iget-object v9, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1141
    const/16 v8, 0x208

    iget-object v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1142
    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1143
    const-string/jumbo v8, "MeetingResponse"

    invoke-virtual {v6}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v4

    .line 1145
    .local v4, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 1146
    .local v7, "status":I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 1147
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1148
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1149
    .local v0, "is":Ljava/io/InputStream;
    new-instance v8, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;

    invoke-direct {v8, v0}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1150
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1151
    .local v2, "meetingInfo":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1152
    new-instance v8, Lcom/kingsoft/emailcommon/mail/PackedString;

    invoke-direct {v8, v2}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "RESPONSE"

    invoke-virtual {v8, v9}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "responseRequested":Ljava/lang/String;
    const-string/jumbo v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 1168
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto :goto_0

    .line 1159
    .end local v5    # "responseRequested":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget v8, p1, Lcom/kingsoft/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v3, v8}, Lcom/kingsoft/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "meetingInfo":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1161
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1162
    new-instance v8, Lcom/kingsoft/exchange/EasAuthenticationException;

    invoke-direct {v8}, Lcom/kingsoft/exchange/EasAuthenticationException;-><init>()V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1168
    .end local v7    # "status":I
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v8

    .line 1164
    .restart local v7    # "status":I
    :cond_5
    const/4 v8, 0x1

    :try_start_3
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Meeting response request failed, code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1165
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 1230
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    .line 1231
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mTrustSsl:Z

    .line 1232
    iget-object v1, p1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 1235
    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1238
    invoke-direct {p0}, Lcom/kingsoft/exchange/EasSyncService;->getClientConnectionManager()Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 1239
    .local v0, "connManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    iget-object v1, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 1241
    .end local v0    # "connManager":Lcom/kingsoft/emailcommon/utility/EmailClientConnectionManager;
    :cond_0
    return-void
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 4
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "usePolicyKey"    # Z

    .prologue
    .line 1209
    const-string/jumbo v2, "Authorization"

    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string/jumbo v2, "MS-ASProtocolVersion"

    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v2, "User-Agent"

    sget-object v3, Lcom/kingsoft/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    if-eqz p2, :cond_1

    .line 1217
    const-string/jumbo v1, "0"

    .line 1218
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v2, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1220
    .local v0, "accountKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1221
    move-object v1, v0

    .line 1224
    .end local v0    # "accountKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "X-MS-PolicyKey"

    invoke-virtual {p1, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method setupProtocolVersion(Lcom/kingsoft/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .locals 13
    .param p1, "service"    # Lcom/kingsoft/exchange/EasSyncService;
    .param p2, "versionHeader"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 326
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "supportedVersions":Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/String;

    const-string/jumbo v10, "Server supports versions: "

    aput-object v10, v9, v12

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 328
    const-string/jumbo v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "supportedVersionsArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 331
    .local v5, "ourVersion":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v8, v1, v3

    .line 332
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "2.5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "12.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "12.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "14.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    :cond_0
    move-object v5, v8

    .line 331
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v8    # "version":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 343
    iget-object v9, p0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No supported EAS versions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    new-instance v9, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v9

    .line 348
    :cond_3
    const-string/jumbo v9, "14.1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "Exchange14"

    invoke-static {v9, v11}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 350
    const-string/jumbo v5, "14.0"

    .line 352
    :cond_4
    iput-object v5, p1, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 353
    invoke-static {v5}, Lcom/kingsoft/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, p1, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 354
    iget-object v0, p1, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 355
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_5

    .line 356
    iput-object v5, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 358
    iget-object v9, p1, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028000000000000L

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_5

    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_5

    .line 360
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 361
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v2, "cv":Landroid/content/ContentValues;
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v9, v9, 0x1800

    iput v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 364
    const-string/jumbo v9, "flags"

    iget v10, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object v9, p1, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 370
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method protected setupService()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1800
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1801
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 1802
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1803
    iget-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 1804
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1807
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v5, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v3

    .line 1804
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1808
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1809
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v5, :cond_0

    .line 1810
    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 1811
    .local v1, "ha":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v1, :cond_0

    .line 1812
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1813
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1814
    iget-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1817
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1824
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 1826
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1827
    const-string/jumbo v3, "2.5"

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 1829
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingsoft/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 1832
    iget-object v3, p0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 1833
    .local v2, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v3, :cond_3

    .line 1839
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->resetSecurityPolicies()V

    :cond_3
    move v3, v4

    .line 1841
    goto :goto_0

    .line 1818
    .end local v2    # "policy":Lcom/android/emailcommon/provider/Policy;
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Couldn\'t retrieve certificate for connection"

    aput-object v5, v4, v3

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    .line 315
    invoke-virtual {p0}, Lcom/kingsoft/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/kingsoft/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 319
    :cond_0
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sync(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V
    .locals 24
    .param p1, "target"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1611
    .local v12, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    const/4 v13, 0x1

    .line 1612
    .local v13, "moreAvailable":Z
    const/4 v11, 0x0

    .line 1613
    .local v11, "loopingCount":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mStop:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->hasPendingRequests()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1616
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->hasConnectivity()Z

    move-result v20

    if-nez v20, :cond_2

    .line 1617
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "No connectivity in sync; finishing sync"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1618
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    .line 1797
    :goto_1
    return-void

    .line 1623
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1624
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1

    .line 1635
    .local v14, "req":Lcom/kingsoft/emailsync/Request;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "req":Lcom/kingsoft/emailsync/Request;
    check-cast v14, Lcom/kingsoft/emailsync/Request;

    .line 1640
    .restart local v14    # "req":Lcom/kingsoft/emailsync/Request;
    instance-of v0, v14, Lcom/kingsoft/emailsync/PartRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/kingsoft/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1643
    new-instance v20, Lcom/kingsoft/exchange/adapter/AttachmentLoader;

    check-cast v14, Lcom/kingsoft/emailsync/PartRequest;

    .end local v14    # "req":Lcom/kingsoft/emailsync/Request;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;-><init>(Lcom/kingsoft/exchange/EasSyncService;Lcom/kingsoft/emailsync/PartRequest;)V

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/exchange/adapter/AttachmentLoader;->loadAttachment()V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1653
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    .line 1630
    :cond_5
    const/4 v14, 0x0

    .line 1632
    .restart local v14    # "req":Lcom/kingsoft/emailsync/Request;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1657
    if-eqz v13, :cond_0

    .line 1661
    new-instance v16, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 1663
    .local v16, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    .line 1664
    .local v4, "className":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v18

    .line 1665
    .local v18, "syncKey":Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "sync, sending "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, " syncKey: "

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1666
    const/16 v20, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x1c

    invoke-virtual/range {v20 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0xf

    invoke-virtual/range {v20 .. v21}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide v22, 0x4028333333333333L

    cmpg-double v20, v20, v22

    if-gez v20, :cond_6

    .line 1671
    const/16 v20, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1673
    :cond_6
    const/16 v20, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    const/16 v21, 0x12

    iget-object v0, v12, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1677
    const/16 v19, 0x7530

    .line 1678
    .local v19, "timeout":I
    const-string/jumbo v20, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1684
    .local v9, "initialSync":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v9}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->sendSyncOptions(Ljava/lang/Double;Lcom/kingsoft/exchange/adapter/Serializer;Z)V

    .line 1685
    if-eqz v9, :cond_7

    .line 1687
    const v19, 0x1d4c0

    .line 1690
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1691
    sget-boolean v20, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v20, :cond_8

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Inhibiting upsync this cycle"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1698
    :cond_8
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 1699
    const-string/jumbo v20, "Sync"

    new-instance v21, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v15

    .line 1702
    .local v15, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_0
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v5

    .line 1703
    .local v5, "code":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v5, v0, :cond_16

    .line 1709
    const/4 v8, 0x0

    .line 1710
    .local v8, "emptyStream":Z
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_14

    .line 1711
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1713
    .local v10, "is":Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v13

    .line 1715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1716
    const/4 v13, 0x1

    .line 1719
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1720
    add-int/lit8 v11, v11, 0x1

    .line 1721
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "** Looping: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1724
    if-eqz v13, :cond_a

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v11, v0, :cond_a

    .line 1725
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "** Looping force stopped"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1726
    const/4 v13, 0x0

    .line 1734
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    .line 1735
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->cleanup()V
    :try_end_1
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1760
    .end local v10    # "is":Ljava/io/InputStream;
    :goto_5
    if-eqz v8, :cond_19

    .line 1762
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 1765
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "Empty sync response; finishing"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1767
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "Changing mailbox from push to ping"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1768
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1769
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v20, "syncInterval"

    const/16 v21, -0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1774
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1775
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1793
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 1645
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "code":I
    .end local v8    # "emptyStream":Z
    .end local v9    # "initialSync":Z
    .end local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v18    # "syncKey":Ljava/lang/String;
    .end local v19    # "timeout":I
    :cond_c
    instance-of v0, v14, Lcom/kingsoft/exchange/MeetingResponseRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1646
    check-cast v14, Lcom/kingsoft/exchange/MeetingResponseRequest;

    .end local v14    # "req":Lcom/kingsoft/emailsync/Request;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasSyncService;->sendMeetingResponse(Lcom/kingsoft/exchange/MeetingResponseRequest;)V

    goto/16 :goto_2

    .line 1647
    .restart local v14    # "req":Lcom/kingsoft/emailsync/Request;
    :cond_d
    instance-of v0, v14, Lcom/kingsoft/exchange/MessageMoveRequest;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1648
    check-cast v14, Lcom/kingsoft/exchange/MessageMoveRequest;

    .end local v14    # "req":Lcom/kingsoft/emailsync/Request;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/exchange/EasSyncService;->messageMoveRequest(Lcom/kingsoft/exchange/MessageMoveRequest;)V

    goto/16 :goto_2

    .line 1695
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v9    # "initialSync":Z
    .restart local v14    # "req":Lcom/kingsoft/emailsync/Request;
    .restart local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v18    # "syncKey":Ljava/lang/String;
    .restart local v19    # "timeout":I
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/kingsoft/exchange/adapter/Serializer;)Z

    goto/16 :goto_3

    .line 1729
    .restart local v5    # "code":I
    .restart local v8    # "emptyStream":Z
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1737
    :cond_10
    const/16 v20, 0x0

    :try_start_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_3
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 1739
    :catch_0
    move-exception v7

    .line 1740
    .local v7, "e":Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;
    const/16 v20, 0x1

    :try_start_4
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "Empty stream detected in GZIP response"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1741
    const/4 v8, 0x1

    .line 1755
    goto/16 :goto_5

    .line 1742
    .end local v7    # "e":Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException;
    :catch_1
    move-exception v7

    .line 1744
    .local v7, "e":Lcom/kingsoft/exchange/CommandStatusException;
    iget v0, v7, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    move/from16 v17, v0

    .line 1745
    .local v17, "status":I
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1746
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1793
    :goto_6
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 1747
    :cond_11
    :try_start_5
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1748
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 1793
    .end local v5    # "code":I
    .end local v7    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v8    # "emptyStream":Z
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "status":I
    :catchall_0
    move-exception v20

    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v20

    .line 1749
    .restart local v5    # "code":I
    .restart local v7    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .restart local v8    # "emptyStream":Z
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v17    # "status":I
    :cond_12
    :try_start_6
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1750
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    goto :goto_6

    .line 1752
    :cond_13
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1757
    .end local v7    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "status":I
    :cond_14
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 1793
    :cond_15
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1782
    .end local v8    # "emptyStream":Z
    :cond_16
    :try_start_7
    const-string/jumbo v20, "Sync response error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/kingsoft/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1783
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1784
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1793
    :goto_7
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 1785
    :cond_17
    :try_start_8
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1786
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    goto :goto_7

    .line 1788
    :cond_18
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 1793
    .restart local v8    # "emptyStream":Z
    :cond_19
    invoke-virtual {v15}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .line 1796
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "code":I
    .end local v8    # "emptyStream":Z
    .end local v9    # "initialSync":Z
    .end local v14    # "req":Lcom/kingsoft/emailsync/Request;
    .end local v15    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v16    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v18    # "syncKey":Ljava/lang/String;
    .end local v19    # "timeout":I
    :cond_1a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_1
.end method

.method public tryAutodiscover(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v20

    .line 683
    .local v20, "s":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    const/16 v22, 0x400

    move/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 684
    .local v15, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    :try_start_0
    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 690
    const-string/jumbo v22, "UTF-8"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 691
    const/16 v22, 0x0

    const-string/jumbo v23, "Autodiscover"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 692
    const/16 v22, 0x0

    const-string/jumbo v23, "xmlns"

    const-string/jumbo v24, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    const/16 v22, 0x0

    const-string/jumbo v23, "Request"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 694
    const/16 v22, 0x0

    const-string/jumbo v23, "EMailAddress"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "EMailAddress"

    invoke-interface/range {v22 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    const/16 v22, 0x0

    const-string/jumbo v23, "AcceptableResponseSchema"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    const-string/jumbo v22, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    const/16 v22, 0x0

    const-string/jumbo v23, "AcceptableResponseSchema"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    const/16 v22, 0x0

    const-string/jumbo v23, "Request"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    const/16 v22, 0x0

    const-string/jumbo v23, "Autodiscover"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 701
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v18

    .line 704
    .local v18, "req":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 705
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 706
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 708
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mSsl:Z

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 716
    .local v4, "amp":I
    if-gez v4, :cond_0

    .line 717
    new-instance v22, Landroid/os/RemoteException;

    invoke-direct/range {v22 .. v22}, Landroid/os/RemoteException;-><init>()V

    throw v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 795
    .end local v4    # "amp":I
    .end local v18    # "req":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 796
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v5

    .line 719
    .restart local v4    # "amp":I
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v18    # "req":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object/from16 v22, v0

    add-int/lit8 v23, v4, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "domain":Ljava/lang/String;
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "https://"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 729
    .local v17, "post":Lorg/apache/http/client/methods/HttpPost;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 730
    const-string/jumbo v22, "Content-Type"

    const-string/jumbo v23, "text/xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v22, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 732
    const/16 v22, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    .line 735
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    const/16 v22, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v19

    .line 747
    .local v19, "resp":Lcom/kingsoft/exchange/EasResponse;
    :goto_1
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 748
    .local v7, "code":I
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Code: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    const/16 v22, 0xc8

    move/from16 v0, v22

    if-eq v7, v0, :cond_1

    const/16 v22, 0x0

    .line 791
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->close()V

    move-object/from16 v5, v22

    goto/16 :goto_0

    .line 736
    .end local v7    # "code":I
    .end local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_1
    move-exception v10

    .line 737
    .local v10, "e1":Ljava/io/IOException;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "IOException in autodiscover; trying alternate address"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 739
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "https://autodiscover."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 742
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/kingsoft/exchange/EasResponse;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v19

    .restart local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    goto/16 :goto_1

    .line 751
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v7    # "code":I
    :cond_1
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 754
    .local v13, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 755
    .local v11, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 756
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 757
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v21

    .line 758
    .local v21, "type":I
    if-nez v21, :cond_2

    .line 759
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .line 760
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 761
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 762
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v22, "Autodiscover"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 763
    new-instance v12, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 764
    .end local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .local v12, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/kingsoft/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 766
    iget-object v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 774
    const/16 v22, 0x1bb

    move/from16 v0, v22

    iput v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 775
    const-string/jumbo v22, "eas"

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 776
    const/16 v22, 0x5

    move/from16 v0, v22

    iput v0, v12, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 778
    const-string/jumbo v22, "autodiscover_host_auth"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 p2, v12

    .line 791
    .end local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v14    # "name":Ljava/lang/String;
    .restart local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_2
    :goto_2
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 798
    .end local v4    # "amp":I
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "code":I
    .end local v8    # "domain":Ljava/lang/String;
    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "req":Ljava/lang/String;
    .end local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v21    # "type":I
    :catch_2
    move-exception v9

    .line 799
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 781
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .end local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4    # "amp":I
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "code":I
    .restart local v8    # "domain":Ljava/lang/String;
    .restart local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "req":Ljava/lang/String;
    .restart local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v21    # "type":I
    :cond_3
    :try_start_8
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 p2, v12

    .end local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_2

    .line 787
    .end local v7    # "code":I
    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_3
    move-exception v22

    .line 791
    :goto_3
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 801
    .end local v4    # "amp":I
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "domain":Ljava/lang/String;
    .end local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "req":Ljava/lang/String;
    .end local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_4
    move-exception v9

    .line 802
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v22, "IOException in Autodiscover"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/kingsoft/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 803
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 791
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "amp":I
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "domain":Ljava/lang/String;
    .restart local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "req":Ljava/lang/String;
    .restart local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catchall_0
    move-exception v22

    :goto_4
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v22
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_5

    .line 805
    .end local v4    # "amp":I
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "domain":Ljava/lang/String;
    .end local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "req":Ljava/lang/String;
    .end local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_5
    move-exception v9

    .line 806
    .local v9, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    const-string/jumbo v22, "autodiscover_error_code"

    const/16 v23, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 791
    .end local v9    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4    # "amp":I
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "code":I
    .restart local v8    # "domain":Ljava/lang/String;
    .restart local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "req":Ljava/lang/String;
    .restart local v19    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v21    # "type":I
    :catchall_1
    move-exception v22

    move-object/from16 p2, v12

    .end local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_4

    .line 787
    .end local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :catch_6
    move-exception v22

    move-object/from16 p2, v12

    .end local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    goto :goto_3
.end method

.method public validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 23
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v5, "bundle":Landroid/os/Bundle;
    const/4 v14, -0x1

    .line 440
    .local v14, "resultCode":I
    const/16 v19, 0x6

    :try_start_0
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    const-string/jumbo v21, "Testing EAS: "

    aput-object v21, v20, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x2

    const-string/jumbo v21, ", "

    aput-object v21, v20, v19

    const/16 v19, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x4

    const-string/jumbo v21, ", ssl = "

    aput-object v21, v20, v19

    const/16 v21, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v19

    if-eqz v19, :cond_1

    const-string/jumbo v19, "1"

    :goto_0
    aput-object v19, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 443
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 445
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 447
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/exchange/EasSyncService;->setConnectionParameters(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 448
    invoke-static/range {p2 .. p2}, Lcom/kingsoft/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 449
    new-instance v19, Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {v19 .. v19}, Lcom/android/emailcommon/provider/Account;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientOptions()Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v13

    .line 453
    .local v13, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 454
    .local v7, "code":I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Validation (OPTIONS) response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 455
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v7, v0, :cond_e

    .line 457
    const-string/jumbo v19, "MS-ASProtocolCommands"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 458
    .local v8, "commands":Lorg/apache/http/Header;
    const-string/jumbo v19, "ms-asprotocolversions"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/kingsoft/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 461
    .local v18, "versions":Lorg/apache/http/Header;
    if-eqz v8, :cond_0

    if-nez v18, :cond_2

    .line 462
    :cond_0
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "OPTIONS response without commands or versions"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 464
    new-instance v19, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v19
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    :catch_0
    move-exception v9

    .line 468
    .local v9, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_3
    const-string/jumbo v19, "validate_result_code"

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    :try_start_4
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 591
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "code":I
    .end local v8    # "commands":Lorg/apache/http/Header;
    .end local v9    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v18    # "versions":Lorg/apache/http/Header;
    :goto_1
    return-object v5

    .line 440
    .restart local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v19, "0"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 466
    .restart local v7    # "code":I
    .restart local v8    # "commands":Lorg/apache/http/Header;
    .restart local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v18    # "versions":Lorg/apache/http/Header;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->setupProtocolVersion(Lcom/kingsoft/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_5
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 474
    const/16 v19, 0x1

    :try_start_6
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Try folder sync"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 476
    const-string/jumbo v17, "0"

    .line 477
    .local v17, "syncKey":Ljava/lang/String;
    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 479
    .local v10, "existingAccount":Lcom/android/emailcommon/provider/Account;
    if-eqz v10, :cond_3

    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 480
    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 482
    :cond_3
    new-instance v15, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 483
    .local v15, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v19, 0x1d6

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1d2

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 485
    const-string/jumbo v19, "FolderSync"

    invoke-virtual {v15}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/kingsoft/exchange/EasResponse;

    move-result-object v13

    .line 486
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I
    :try_end_6
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v7

    .line 488
    const/16 v19, 0x193

    move/from16 v0, v19

    if-ne v7, v0, :cond_4

    .line 491
    const/16 v14, 0xe

    .line 574
    .end local v8    # "commands":Lorg/apache/http/Header;
    .end local v10    # "existingAccount":Lcom/android/emailcommon/provider/Account;
    .end local v15    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v17    # "syncKey":Ljava/lang/String;
    .end local v18    # "versions":Lorg/apache/http/Header;
    :goto_2
    :try_start_7
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_3

    .line 590
    .end local v7    # "code":I
    .end local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :goto_3
    const-string/jumbo v19, "validate_result_code"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 492
    .restart local v7    # "code":I
    .restart local v8    # "commands":Lorg/apache/http/Header;
    .restart local v10    # "existingAccount":Lcom/android/emailcommon/provider/Account;
    .restart local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v15    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v17    # "syncKey":Ljava/lang/String;
    .restart local v18    # "versions":Lorg/apache/http/Header;
    :cond_4
    :try_start_8
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 494
    new-instance v19, Lcom/kingsoft/exchange/CommandStatusException;

    const/16 v20, 0x8e

    invoke-direct/range {v19 .. v20}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(I)V

    throw v19
    :try_end_8
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 540
    .end local v7    # "code":I
    .end local v8    # "commands":Lorg/apache/http/Header;
    .end local v10    # "existingAccount":Lcom/android/emailcommon/provider/Account;
    .end local v15    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v17    # "syncKey":Ljava/lang/String;
    .end local v18    # "versions":Lorg/apache/http/Header;
    :catch_1
    move-exception v9

    .line 541
    .local v9, "e":Lcom/kingsoft/exchange/CommandStatusException;
    :try_start_9
    iget v0, v9, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    move/from16 v16, v0

    .line 542
    .local v16, "status":I
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->canProvision(Lcom/kingsoft/exchange/EasSyncService;)Lcom/kingsoft/exchange/adapter/ProvisionParser;

    move-result-object v12

    .line 545
    .local v12, "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 547
    const/4 v14, 0x7

    .line 548
    const-string/jumbo v19, "validate_policy_set"

    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v21, 0x402c000000000000L

    cmpl-double v19, v19, v21

    if-nez v19, :cond_5

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/EasSyncService;->sendSettings()Z

    move-result v19

    if-nez v19, :cond_5

    .line 553
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 554
    const/16 v14, 0xe

    .line 574
    .end local v12    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :cond_5
    :goto_4
    :try_start_a
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 576
    .end local v9    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v16    # "status":I
    :catch_2
    move-exception v9

    .line 577
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 578
    .local v6, "cause":Ljava/lang/Throwable;
    if-eqz v6, :cond_6

    instance-of v0, v6, Ljava/security/cert/CertificateException;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 580
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 581
    const/4 v14, 0x4

    .line 583
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "IOException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 584
    const/16 v14, 0x21

    .line 589
    goto/16 :goto_3

    .line 495
    .end local v6    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "code":I
    .restart local v8    # "commands":Lorg/apache/http/Header;
    .restart local v10    # "existingAccount":Lcom/android/emailcommon/provider/Account;
    .restart local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v15    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .restart local v17    # "syncKey":Ljava/lang/String;
    .restart local v18    # "versions":Lorg/apache/http/Header;
    :cond_7
    const/16 v19, 0x194

    move/from16 v0, v19

    if-ne v7, v0, :cond_8

    .line 497
    const/16 v14, 0x9

    goto/16 :goto_2

    .line 498
    :cond_8
    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v7, v0, :cond_a

    .line 499
    :try_start_b
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v14, 0x10

    :goto_5
    goto/16 :goto_2

    :cond_9
    const/4 v14, 0x5

    goto :goto_5

    .line 502
    :cond_a
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v7, v0, :cond_c

    .line 503
    const/16 v19, 0x1c3

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/kingsoft/exchange/EasSyncService;->getValidateRedirect(Lcom/kingsoft/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 505
    invoke-virtual/range {p0 .. p2}, Lcom/kingsoft/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_b
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v19

    .line 574
    :try_start_c
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 508
    :cond_b
    :try_start_d
    const-string/jumbo v19, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 509
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 513
    :cond_c
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d

    .line 514
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 518
    .local v11, "is":Ljava/io/InputStream;
    new-instance v19, Lcom/kingsoft/exchange/adapter/FolderSyncParser;

    new-instance v20, Lcom/kingsoft/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/kingsoft/exchange/EasSyncService;)V

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v11, v1, v2}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->parse()Z

    .line 520
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Validation successful"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 574
    .end local v7    # "code":I
    .end local v8    # "commands":Lorg/apache/http/Header;
    .end local v10    # "existingAccount":Lcom/android/emailcommon/provider/Account;
    .end local v15    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v17    # "syncKey":Ljava/lang/String;
    .end local v18    # "versions":Lorg/apache/http/Header;
    :catchall_0
    move-exception v19

    :try_start_e
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v19
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3

    .line 585
    .end local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_3
    move-exception v9

    .line 587
    .local v9, "e":Ljava/security/cert/CertificateException;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 588
    const/16 v14, 0x11

    goto/16 :goto_3

    .line 522
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "code":I
    .restart local v13    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :cond_e
    :try_start_f
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 523
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Authentication failed"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 524
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v14, 0x10

    :goto_6
    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x5

    goto :goto_6

    .line 527
    :cond_10
    const/16 v19, 0x1f4

    move/from16 v0, v19

    if-ne v7, v0, :cond_11

    .line 529
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Internal server error"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 530
    const/16 v14, 0xd

    goto/16 :goto_2

    .line 532
    :cond_11
    const/16 v19, 0x1c3

    move/from16 v0, v19

    if-ne v7, v0, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/exchange/EasSyncService;->mRedirectCount:I

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/kingsoft/exchange/EasSyncService;->getValidateRedirect(Lcom/kingsoft/exchange/EasResponse;Lcom/android/emailcommon/provider/HostAuth;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 534
    invoke-virtual/range {p0 .. p2}, Lcom/kingsoft/exchange/EasSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_f
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v19

    .line 574
    :try_start_10
    invoke-virtual {v13}, Lcom/kingsoft/exchange/EasResponse;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_3

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 537
    :cond_12
    :try_start_11
    const-string/jumbo v19, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/kingsoft/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_11
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 538
    const/16 v14, 0x21

    goto/16 :goto_2

    .line 559
    .end local v7    # "code":I
    .local v9, "e":Lcom/kingsoft/exchange/CommandStatusException;
    .restart local v12    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    .restart local v16    # "status":I
    :cond_13
    const/16 v14, 0x8

    .line 560
    :try_start_12
    const-string/jumbo v19, "validate_policy_set"

    invoke-virtual {v12}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 563
    .end local v12    # "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    :cond_14
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 564
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 565
    const/16 v14, 0xe

    goto/16 :goto_4

    .line 566
    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 567
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Transient error: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 568
    const/16 v14, 0x21

    goto/16 :goto_4

    .line 570
    :cond_16
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Unexpected response: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 571
    const/4 v14, 0x0

    goto/16 :goto_4
.end method
