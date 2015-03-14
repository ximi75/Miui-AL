.class public Lcom/kingsoft/exchange/eas/EasFolderSync;
.super Lcom/kingsoft/exchange/eas/EasOperation;
.source "EasFolderSync.java"


# static fields
.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_WRONG_OPERATION:I = 0x2


# instance fields
.field private final mAccount:Lcom/android/emailcommon/provider/Account;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private final mStatusOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 74
    iput-object p2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 90
    iput-object p2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 91
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, p3, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 85
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/kingsoft/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 86
    return-void
.end method

.method private writeResultCode(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "resultCode"    # I

    .prologue
    .line 198
    packed-switch p2, :pswitch_data_0

    .line 240
    :pswitch_0
    const/4 v0, 0x0

    .line 243
    .local v0, "messagingExceptionCode":I
    :goto_0
    const-string/jumbo v1, "validate_result_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    return-void

    .line 200
    .end local v0    # "messagingExceptionCode":I
    :pswitch_1
    const/16 v0, 0x21

    .line 201
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 203
    .end local v0    # "messagingExceptionCode":I
    :pswitch_2
    const/16 v0, 0x21

    .line 204
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 206
    .end local v0    # "messagingExceptionCode":I
    :pswitch_3
    const/4 v0, 0x0

    .line 207
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 209
    .end local v0    # "messagingExceptionCode":I
    :pswitch_4
    const/16 v0, 0x21

    .line 210
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 212
    .end local v0    # "messagingExceptionCode":I
    :pswitch_5
    const/16 v0, 0xe

    .line 213
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 215
    .end local v0    # "messagingExceptionCode":I
    :pswitch_6
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 218
    .end local v0    # "messagingExceptionCode":I
    :cond_0
    const-string/jumbo v1, "validate_policy_set"

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v0, 0x7

    .line 223
    .restart local v0    # "messagingExceptionCode":I
    :goto_1
    goto :goto_0

    .line 219
    .end local v0    # "messagingExceptionCode":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 225
    :pswitch_7
    const/4 v0, 0x5

    .line 226
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 228
    .end local v0    # "messagingExceptionCode":I
    :pswitch_8
    const/16 v0, 0x10

    .line 229
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 231
    .end local v0    # "messagingExceptionCode":I
    :pswitch_9
    const/16 v0, 0x9

    .line 232
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 234
    .end local v0    # "messagingExceptionCode":I
    :pswitch_a
    const/4 v0, 0x0

    .line 235
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 237
    .end local v0    # "messagingExceptionCode":I
    :pswitch_b
    const/4 v0, -0x1

    .line 238
    .restart local v0    # "messagingExceptionCode":I
    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public doFolderSync(Landroid/content/SyncResult;)I
    .locals 6
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x2

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Performing sync for account %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/eas/EasFolderSync;->performOperation(Landroid/content/SyncResult;)I

    move-result v0

    goto :goto_0
.end method

.method protected getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "FolderSync"

    return-object v0
.end method

.method protected getRequestEntity()Lorg/apache/http/HttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 157
    .local v1, "syncKey":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/kingsoft/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/Serializer;-><init>()V

    .line 158
    .local v0, "s":Lcom/kingsoft/exchange/adapter/Serializer;
    const/16 v2, 0x1d6

    invoke-virtual {v0, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    invoke-virtual {v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/exchange/adapter/Serializer;->done()V

    .line 160
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/eas/EasFolderSync;->makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    return-object v2

    .line 156
    .end local v0    # "s":Lcom/kingsoft/exchange/adapter/Serializer;
    .end local v1    # "syncKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method protected handleForbidden()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    return v0
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 2
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "accountId"    # J

    .prologue
    .line 180
    iget-boolean v1, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Lcom/kingsoft/exchange/eas/EasProvision;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/eas/EasProvision;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 182
    .local v0, "provisionOperation":Lcom/kingsoft/exchange/eas/EasProvision;
    invoke-virtual {v0}, Lcom/kingsoft/exchange/eas/EasProvision;->test()Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 185
    const/4 v1, 0x0

    .line 187
    .end local v0    # "provisionOperation":Lcom/kingsoft/exchange/eas/EasProvision;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/exchange/eas/EasOperation;->handleProvisionError(Landroid/content/SyncResult;J)Z

    move-result v1

    goto :goto_0
.end method

.method protected handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .locals 6
    .param p1, "response"    # Lcom/kingsoft/exchange/EasResponse;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;

    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-boolean v5, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Account;Z)V

    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->parse()Z

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public validate()Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 113
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v5, p0, Lcom/kingsoft/exchange/eas/EasFolderSync;->mStatusOnly:Z

    if-nez v5, :cond_0

    .line 115
    const/16 v5, -0xa

    invoke-direct {p0, v0, v5}, Lcom/kingsoft/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    .line 146
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "Performing validation"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasFolderSync;->registerClientCert()Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    const-string/jumbo v5, "validate_result_code"

    const/16 v6, 0x11

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasFolderSync;->shouldGetProtocolVersion()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    new-instance v2, Lcom/kingsoft/exchange/eas/EasOptions;

    invoke-direct {v2, p0}, Lcom/kingsoft/exchange/eas/EasOptions;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 130
    .local v2, "options":Lcom/kingsoft/exchange/eas/EasOptions;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/kingsoft/exchange/eas/EasOptions;->getProtocolVersionFromServer(Landroid/content/SyncResult;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 136
    .local v4, "result":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 137
    invoke-direct {p0, v0, v4}, Lcom/kingsoft/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 131
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Exchange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getProtocolVersionFromServer error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    const-string/jumbo v5, "validate_result_code"

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":I
    :cond_2
    invoke-virtual {v2}, Lcom/kingsoft/exchange/eas/EasOptions;->getProtocolVersionString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "protocolVersion":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/eas/EasFolderSync;->setProtocolVersion(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v5, "validate_protocol_version"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v2    # "options":Lcom/kingsoft/exchange/eas/EasOptions;
    .end local v3    # "protocolVersion":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {p0, v9}, Lcom/kingsoft/exchange/eas/EasFolderSync;->performOperation(Landroid/content/SyncResult;)I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/kingsoft/exchange/eas/EasFolderSync;->writeResultCode(Landroid/os/Bundle;I)V

    goto :goto_0
.end method
