.class public Lcom/kingsoft/exchange/eas/EasProvision;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasProvision.java"


# static fields
.field public static final EAS_12_POLICY_TYPE:Ljava/lang/String; = "MS-EAS-Provisioning-WBXML"

.field public static final EAS_2_POLICY_TYPE:Ljava/lang/String; = "MS-WAP-Provisioning-XML"

.field private static final LOG_TAG:Ljava/lang/String; = "Exchange"

.field private static final PHASE_ACKNOWLEDGE:I = 0x1

.field private static final PHASE_INITIAL:I = 0x0

.field private static final PHASE_WIPE:I = 0x2

.field private static final PROVISION_STATUS_OK:Ljava/lang/String; = "1"

.field private static final PROVISION_STATUS_PARTIAL:Ljava/lang/String; = "2"

.field private static final RESULT_POLICY_SUPPORTED:I = 0x1

.field private static final RESULT_POLICY_UNSUPPORTED:I = 0x2

.field private static final RESULT_REMOTE_WIPE:I = 0x3


# instance fields
.field private mPhase:I

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mPolicyKey:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "connection"    # Lcom/kingsoft/exchange/service/EasServerConnection;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V

    .line 96
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 97
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/exchange/eas/EasOperation;)V
    .locals 1
    .param p1, "parentOperation"    # Lcom/kingsoft/exchange/eas/EasOperation;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 104
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 105
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    .line 108
    return-void
.end method

.method private final getPolicyType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasProvision;->getProtocolVersion()D

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

.method private performAckRequest(Landroid/content/SyncResult;Z)I
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "isPartial"    # Z

    .prologue
    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    .line 122
    if-eqz p2, :cond_0

    const-string/jumbo v0, "2"

    :goto_0
    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    return v0

    .line 122
    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method private performAckRequestForWipe(Landroid/content/SyncResult;)V
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    .line 117
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    .line 118
    return-void
.end method

.method private performInitialRequest(Landroid/content/SyncResult;)I
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    .line 112
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasProvision;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string/jumbo v0, "Provision"

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x38b

    .line 208
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 209
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 212
    iget v1, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasProvision;->getProtocolVersion()D

    move-result-wide v1

    const-wide v3, 0x402c333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasProvision;->addDeviceInformationToSerlializer(Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 216
    :cond_0
    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 217
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 218
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasProvision;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 221
    iget v1, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    const/16 v1, 0x389

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 223
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 225
    :cond_1
    iget v1, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 226
    const/16 v1, 0x38c

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 227
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 228
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 230
    :cond_2
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 232
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasProvision;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "accountId"    # J

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 6
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 238
    new-instance v0, Lcom/kingsoft/exchange/adapter/ProvisionParser;

    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/kingsoft/exchange/adapter/ProvisionParser;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 241
    .local v0, "pp":Lcom/kingsoft/exchange/adapter/ProvisionParser;
    iget v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    if-ne v4, v2, :cond_1

    move v1, v3

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 245
    :cond_1
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->parse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Error while parsing response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_2
    iget v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    if-nez v4, :cond_4

    .line 251
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 252
    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 255
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 257
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 261
    :cond_4
    iget v3, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPhase:I

    if-ne v3, v1, :cond_5

    .line 262
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 268
    goto :goto_0
.end method

.method public final provision(Landroid/content/SyncResult;J)Z
    .locals 10
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "accountId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/eas/EasProvision;->performInitialRequest(Landroid/content/SyncResult;)I

    move-result v0

    .line 153
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v6

    .line 157
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/kingsoft/exchange/eas/EasProvision;->performAckRequestForWipe(Landroid/content/SyncResult;)V

    .line 159
    const-string/jumbo v4, "Exchange"

    const-string/jumbo v5, "Executing remote wipe"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe(Landroid/content/Context;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v4, :cond_3

    .line 165
    sget-object v4, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    iput-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 169
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iput-object v9, v4, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-static {v4, p2, p3, v7, v9}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-static {v4, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    if-ne v0, v8, :cond_6

    move v4, v5

    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/eas/EasProvision;->performAckRequest(Landroid/content/SyncResult;Z)I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 182
    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicyKey:Ljava/lang/String;

    invoke-static {v4, p2, p3, v6, v7}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasProvision;->getProtocolVersion()D

    move-result-wide v2

    .line 188
    .local v2, "version":D
    const-wide v6, 0x4028333333333333L

    cmpl-double v4, v2, v6

    if-eqz v4, :cond_4

    const-wide/high16 v6, 0x402c000000000000L

    cmpl-double v4, v2, v6

    if-nez v4, :cond_5

    .line 190
    :cond_4
    new-instance v1, Lcom/kingsoft/exchange/eas/EasSettings;

    invoke-direct {v1, p0}, Lcom/kingsoft/exchange/eas/EasSettings;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 191
    .local v1, "settingsOperation":Lcom/kingsoft/exchange/eas/EasSettings;
    invoke-virtual {v1, p1}, Lcom/kingsoft/exchange/eas/EasSettings;->sendDeviceInformation(Landroid/content/SyncResult;)Z

    move-result v4

    if-nez v4, :cond_5

    .end local v1    # "settingsOperation":Lcom/kingsoft/exchange/eas/EasSettings;
    :cond_5
    move v6, v5

    .line 198
    goto :goto_0

    .end local v2    # "version":D
    :cond_6
    move v4, v6

    .line 176
    goto :goto_1
.end method

.method public final test()Lcom/android/emailcommon/provider/Policy;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/eas/EasProvision;->performInitialRequest(Landroid/content/SyncResult;)I

    move-result v0

    .line 132
    .local v0, "result":I
    if-ne v0, v4, :cond_0

    .line 134
    invoke-direct {p0, v1, v3}, Lcom/kingsoft/exchange/eas/EasProvision;->performAckRequest(Landroid/content/SyncResult;Z)I

    move-result v0

    .line 136
    :cond_0
    if-ne v0, v3, :cond_1

    .line 138
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iput-object v1, v2, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 140
    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasProvision;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    :cond_3
    return-object v1
.end method
