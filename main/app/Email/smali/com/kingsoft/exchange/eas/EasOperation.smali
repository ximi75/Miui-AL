.class public abstract Lcom/kingsoft/exchange/eas/EasOperation;
.super Ljava/lang/Object;
.source "EasOperation.java"


# static fields
.field private static final EAS_14_MIME_TYPE:Ljava/lang/String; = "application/vnd.ms-sync.wbxml"

.field public static final LOG_TAG:Ljava/lang/String; = "Exchange"

.field private static final MAX_REDIRECTS:I = 0x3

.field public static final RESULT_ABORT:I = -0x1

.field public static final RESULT_AUTHENTICATION_ERROR:I = -0x7

.field public static final RESULT_CLIENT_CERTIFICATE_REQUIRED:I = -0x8

.field public static final RESULT_FORBIDDEN:I = -0x5

.field public static final RESULT_OTHER_FAILURE:I = -0xa

.field public static final RESULT_PROTOCOL_VERSION_UNSUPPORTED:I = -0x9

.field public static final RESULT_PROVISIONING_ERROR:I = -0x6

.field public static final RESULT_REQUEST_FAILURE:I = -0x4

.field public static final RESULT_RESTART:I = -0x2

.field public static final RESULT_TOO_MANY_REDIRECTS:I = -0x3


# instance fields
.field protected final mAccountId:J

.field private final mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "connection"    # Lcom/kingsoft/exchange/service/EasServerConnection;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    .line 109
    iput-wide p2, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mAccountId:J

    .line 110
    iput-object p4, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 118
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 114
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    new-instance v2, Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-direct {v2, p1, p2, p3}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V

    .line 115
    return-void
.end method

.method protected constructor <init>(Lcom/kingsoft/exchange/eas/EasOperation;)V
    .locals 4
    .param p1, "parentOperation"    # Lcom/kingsoft/exchange/eas/EasOperation;

    .prologue
    .line 127
    iget-object v0, p1, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/kingsoft/exchange/eas/EasOperation;->mAccountId:J

    iget-object v3, p1, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingsoft/exchange/eas/EasOperation;-><init>(Landroid/content/Context;JLcom/kingsoft/exchange/service/EasServerConnection;)V

    .line 128
    return-void
.end method

.method private final makeRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getRequestUri()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "requestUri":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeOptions()Lorg/apache/http/client/methods/HttpOptions;

    move-result-object v1

    .line 366
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getRequestEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getRequestContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->addPolicyKeyHeaderToRequest()Z

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/kingsoft/exchange/service/EasServerConnection;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    goto :goto_0
.end method

.method protected static requestNoOpSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "amAccount"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 626
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "__noop__"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 628
    return-void
.end method

.method protected static requestSyncForMailbox(Landroid/accounts/Account;J)V
    .locals 3
    .param p0, "amAccount"    # Landroid/accounts/Account;
    .param p1, "mailboxId"    # J

    .prologue
    .line 600
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v0

    .line 602
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 604
    return-void
.end method

.method protected static requestSyncForMailboxes(Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "amAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "mailboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 610
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "expedited"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 611
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 612
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->stop(I)V

    .line 136
    return-void
.end method

.method protected final addDeviceInformationToSerlializer(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 12
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 511
    iget-object v8, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 516
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_6

    .line 517
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "operatorName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "operatorNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "operatorNumber":Ljava/lang/String;
    .local v3, "operator":Ljava/lang/String;
    :goto_0
    const/16 v8, 0x496

    invoke-virtual {p1, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x488

    invoke-virtual {v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 541
    const/16 v8, 0x497

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 542
    if-eqz v1, :cond_0

    .line 543
    const/16 v8, 0x498

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 547
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 549
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 550
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "friendlyName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 552
    const/16 v8, 0x499

    invoke-virtual {p1, v8, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 555
    .end local v2    # "friendlyName":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x49a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Android "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 556
    if-eqz v6, :cond_2

    .line 557
    const/16 v8, 0x49c

    invoke-virtual {p1, v8, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 564
    :cond_2
    const/16 v8, 0x4a0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 565
    if-eqz v3, :cond_3

    .line 566
    const/16 v8, 0x4a2

    invoke-virtual {p1, v8, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 568
    :cond_3
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 569
    return-void

    .line 526
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "operator":Ljava/lang/String;
    .restart local v4    # "operatorName":Ljava/lang/String;
    .restart local v5    # "operatorNumber":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 527
    move-object v3, v4

    .restart local v3    # "operator":Ljava/lang/String;
    goto :goto_0

    .line 529
    .end local v3    # "operator":Ljava/lang/String;
    :cond_5
    move-object v3, v5

    .restart local v3    # "operator":Ljava/lang/String;
    goto/16 :goto_0

    .line 532
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "operatorNumber":Ljava/lang/String;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .line 533
    .restart local v1    # "deviceId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 534
    .restart local v6    # "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "operator":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected addPolicyKeyHeaderToRequest()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getCommand()Ljava/lang/String;
.end method

.method protected final getProtocolVersion()D
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getProtocolVersion()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getRequestContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string/jumbo v0, "application/vnd.ms-sync.wbxml"

    return-object v0
.end method

.method protected abstract getRequestEntity()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getRequestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->makeUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeout()J
    .locals 2

    .prologue
    .line 439
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method protected final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleForbidden()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method protected handleProvisionError(Landroid/content/SyncResult;J)Z
    .locals 2
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "accountId"    # J

    .prologue
    .line 459
    new-instance v0, Lcom/kingsoft/exchange/eas/EasProvision;

    invoke-direct {v0, p0}, Lcom/kingsoft/exchange/eas/EasProvision;-><init>(Lcom/kingsoft/exchange/eas/EasOperation;)V

    .line 460
    .local v0, "provisionOperation":Lcom/kingsoft/exchange/eas/EasProvision;
    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/exchange/eas/EasProvision;->provision(Landroid/content/SyncResult;J)Z

    move-result v1

    return v1
.end method

.method protected abstract handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method protected final makeEntity(Lcom/kingsoft/exchange/adapter/Serializer;)Lorg/apache/http/HttpEntity;
    .locals 2
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;

    .prologue
    .line 471
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-object v0
.end method

.method protected final performOperation(Landroid/content/SyncResult;)I
    .locals 12
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 176
    .local v2, "redirectCount":I
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-direct {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->makeRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getTimeout()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/kingsoft/exchange/service/EasServerConnection;->executeHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;J)Lcom/kingsoft/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 226
    .local v3, "response":Lcom/kingsoft/exchange/EasResponse;
    :try_start_1
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isSuccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_8

    .line 229
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/kingsoft/exchange/eas/EasOperation;->handleResponse(Lcom/kingsoft/exchange/EasResponse;Landroid/content/SyncResult;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/kingsoft/exchange/CommandStatusException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 252
    .local v4, "responseResult":I
    :goto_0
    move v5, v4

    .line 259
    .end local v4    # "responseResult":I
    .local v5, "result":I
    :goto_1
    if-ltz v5, :cond_9

    .line 318
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 328
    .end local v3    # "response":Lcom/kingsoft/exchange/EasResponse;
    .end local v5    # "result":I
    :goto_2
    return v5

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v7}, Lcom/kingsoft/exchange/service/EasServerConnection;->getStoppedReason()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 188
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 190
    const-string/jumbo v1, "(no message)"

    .line 192
    :cond_1
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "IOException while sending request: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    if-eqz p1, :cond_2

    .line 194
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    .line 196
    :cond_2
    const/4 v5, -0x4

    goto :goto_2

    .line 181
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_0
    const/4 v5, -0x1

    goto :goto_2

    .line 183
    :pswitch_1
    const/4 v5, -0x2

    goto :goto_2

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "CertificateException while sending request: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    if-eqz p1, :cond_3

    .line 202
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 204
    :cond_3
    const/4 v5, -0x8

    goto :goto_2

    .line 205
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Exception while sending request"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    if-eqz p1, :cond_4

    .line 210
    const/4 v7, 0x1

    iput-boolean v7, p1, Landroid/content/SyncResult;->databaseError:Z

    .line 212
    :cond_4
    const/16 v5, -0xa

    goto :goto_2

    .line 230
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "response":Lcom/kingsoft/exchange/EasResponse;
    :catch_3
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Exception while handling response"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    if-eqz p1, :cond_5

    .line 233
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    :cond_5
    const/4 v5, -0x4

    .line 318
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 242
    .local v0, "e":Lcom/kingsoft/exchange/CommandStatusException;
    :try_start_4
    iget v6, v0, Lcom/kingsoft/exchange/CommandStatusException;->mStatus:I

    .line 243
    .local v6, "status":I
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "CommandStatusException: %s, %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 244
    invoke-static {v6}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 245
    const/4 v4, -0x6

    .restart local v4    # "responseResult":I
    goto/16 :goto_0

    .line 246
    .end local v4    # "responseResult":I
    :cond_6
    invoke-static {v6}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 247
    const/4 v4, -0x5

    .restart local v4    # "responseResult":I
    goto/16 :goto_0

    .line 249
    .end local v4    # "responseResult":I
    :cond_7
    const/16 v4, -0xa

    .restart local v4    # "responseResult":I
    goto/16 :goto_0

    .line 254
    .end local v0    # "e":Lcom/kingsoft/exchange/CommandStatusException;
    .end local v4    # "responseResult":I
    .end local v6    # "status":I
    :cond_8
    const/16 v5, -0xa

    .restart local v5    # "result":I
    goto/16 :goto_1

    .line 264
    :cond_9
    const/4 v7, -0x5

    if-eq v5, v7, :cond_a

    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isForbidden()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->handleForbidden()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 265
    :cond_a
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Forbidden response"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    if-eqz p1, :cond_b

    .line 268
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    :cond_b
    const/4 v5, -0x5

    .line 318
    .end local v5    # "result":I
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    .line 274
    .restart local v5    # "result":I
    :cond_c
    const/4 v7, -0x6

    if-eq v5, v7, :cond_d

    :try_start_5
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 275
    :cond_d
    iget-wide v7, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mAccountId:J

    invoke-virtual {p0, p1, v7, v8}, Lcom/kingsoft/exchange/eas/EasOperation;->handleProvisionError(Landroid/content/SyncResult;J)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 278
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Provisioning error handled during %s, retrying"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 320
    :goto_3
    const/4 v7, 0x3

    if-lt v2, v7, :cond_0

    .line 324
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Too many redirects"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    if-eqz p1, :cond_e

    .line 326
    const/4 v7, 0x1

    iput-boolean v7, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 328
    :cond_e
    const/4 v5, -0x3

    goto/16 :goto_2

    .line 282
    :cond_f
    if-eqz p1, :cond_10

    .line 283
    :try_start_6
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Issue with provisioning"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 287
    :cond_10
    const/4 v5, -0x6

    .line 318
    .end local v5    # "result":I
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    .line 291
    .restart local v5    # "result":I
    :cond_11
    :try_start_7
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 292
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Authentication error"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    if-eqz p1, :cond_12

    .line 294
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 296
    :cond_12
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isMissingCertificate()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    if-eqz v7, :cond_13

    .line 297
    const/4 v5, -0x8

    .line 318
    .end local v5    # "result":I
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    .line 299
    .restart local v5    # "result":I
    :cond_13
    const/4 v5, -0x7

    .line 318
    .end local v5    # "result":I
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    .line 303
    .restart local v5    # "result":I
    :cond_14
    :try_start_8
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->isRedirectError()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    iget-object v7, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->getRedirectAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/exchange/service/EasServerConnection;->redirectHostAuth(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 318
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto :goto_3

    .line 309
    :cond_15
    :try_start_9
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "Generic error for operation %s: status %d, result %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    if-eqz p1, :cond_16

    .line 313
    iget-object v7, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 315
    :cond_16
    const/16 v5, -0xa

    .line 318
    .end local v5    # "result":I
    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v7

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final registerClientCert()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->registerClientCert()Z

    move-result v0

    return v0
.end method

.method public final restart()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/service/EasServerConnection;->stop(I)V

    .line 144
    return-void
.end method

.method protected final sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 10
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v9, 0x4

    .line 577
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5, v9}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 579
    .local v0, "mailboxId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 580
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v4, "No outbox for account %d, creating it"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 581
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5, v9}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 583
    .local v2, "outbox":Lcom/android/emailcommon/provider/Mailbox;
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 584
    iget-wide v0, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 586
    .end local v2    # "outbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    iput-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 587
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 588
    iget-object v3, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 589
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0, v1}, Lcom/kingsoft/exchange/eas/EasOperation;->requestSyncForMailbox(Landroid/accounts/Account;J)V

    .line 591
    return-void
.end method

.method protected final setProtocolVersion(Ljava/lang/String;)V
    .locals 11
    .param p1, "protocolVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v0, p1}, Lcom/kingsoft/exchange/service/EasServerConnection;->setProtocolVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 338
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mAccountId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 340
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/kingsoft/exchange/eas/EasOperation;->getProtocolVersion()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028000000000000L

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 344
    .local v10, "oldFlags":I
    or-int/lit16 v9, v10, 0x1800

    .line 346
    .local v9, "newFlags":I
    if-eq v10, v9, :cond_0

    .line 347
    const-string/jumbo v0, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    .end local v9    # "newFlags":I
    .end local v10    # "oldFlags":I
    :cond_0
    const-string/jumbo v0, "protocolVersion"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 353
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method protected final shouldGetProtocolVersion()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/kingsoft/exchange/eas/EasOperation;->mConnection:Lcom/kingsoft/exchange/service/EasServerConnection;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EasServerConnection;->isProtocolVersionSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
