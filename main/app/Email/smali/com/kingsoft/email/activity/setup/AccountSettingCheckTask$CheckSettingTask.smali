.class Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;
.super Ljava/lang/Object;
.source "AccountSettingCheckTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckSettingTask"
.end annotation


# instance fields
.field private login_err_msg:Ljava/lang/String;

.field mAccount:Lcom/android/emailcommon/provider/Account;

.field mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

.field private mStoreHost:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V
    .locals 2
    .param p2, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->login_err_msg:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 262
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->isUsed:Z

    .line 263
    new-instance v0, Lcom/kingsoft/email/activity/setup/SetupData;

    iget v1, p1, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->flowMode:I

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 264
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->initAccountFromProvider()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 265
    return-void
.end method

.method private initAccountFromProvider()Lcom/android/emailcommon/provider/Account;
    .locals 6

    .prologue
    .line 360
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 361
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->email:Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->email:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$300(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->expandTemplates(Ljava/lang/String;)V

    .line 363
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 366
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->password:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$400(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    iput v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :try_start_1
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    iput v4, v2, Lcom/android/emailcommon/provider/HostAuth;->from:I

    .line 376
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 378
    .local v3, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->password:Ljava/lang/String;
    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$400(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    iput v4, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 383
    :cond_0
    iget v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    iput v4, v3, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 384
    iget v4, v2, Lcom/android/emailcommon/provider/HostAuth;->from:I

    iput v4, v3, Lcom/android/emailcommon/provider/HostAuth;->from:I

    .line 389
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v3    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :goto_1
    return-object v0

    .line 371
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 388
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 389
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public check()Lcom/kingsoft/emailcommon/mail/MessagingException;
    .locals 15

    .prologue
    const/4 v2, 0x0

    .line 284
    :try_start_0
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancelled()Z
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v2

    .line 286
    :cond_1
    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Begin check of incoming email settings"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 288
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v13}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v10

    .line 289
    .local v10, "store":Lcom/kingsoft/email/mail/Store;
    invoke-virtual {v10}, Lcom/kingsoft/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 291
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v10    # "store":Lcom/kingsoft/email/mail/Store;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_1
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v12

    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-static {v12, v2, v13}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->login_err_msg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v12

    goto :goto_0

    .line 294
    .end local v2    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_2
    :try_start_2
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string/jumbo v13, "validate_protocol_version"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 296
    const-string/jumbo v12, "validate_result_code"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 298
    .local v8, "resultCode":I
    const-string/jumbo v12, "validate_redirect_address"

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "redirectAddress":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 302
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v12, v12, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v7, v12, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 305
    :cond_3
    const/4 v12, 0x7

    if-ne v8, v12, :cond_4

    .line 306
    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const-string/jumbo v12, "validate_policy_set"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v13, v12}, Lcom/kingsoft/email/activity/setup/SetupData;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 309
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v2, v8, v12}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_4
    const/16 v12, 0x8

    if-ne v8, v12, :cond_5

    .line 311
    const-string/jumbo v12, "validate_policy_set"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/Policy;

    .line 313
    .local v5, "policy":Lcom/android/emailcommon/provider/Policy;
    iget-object v11, v5, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 314
    .local v11, "unsupported":Ljava/lang/String;
    const-string/jumbo v12, "\u0001"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "data":[Ljava/lang/String;
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v2, v8, v12, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    .end local v1    # "data":[Ljava/lang/String;
    .end local v5    # "policy":Lcom/android/emailcommon/provider/Policy;
    .end local v11    # "unsupported":Ljava/lang/String;
    :cond_5
    const/4 v12, -0x1

    if-eq v8, v12, :cond_6

    .line 319
    const-string/jumbo v12, "validate_error_message"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-direct {v2, v8, v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_6
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v12, v12, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v12, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 325
    .local v6, "protocol":Ljava/lang/String;
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v4

    .line 329
    .local v4, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v12, v4, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v12, :cond_7

    .line 330
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancelled()Z
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 332
    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "Begin check of outgoing email settings"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->mActivity:Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    invoke-static {v12}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$200(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    move-result-object v12

    iget-object v13, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v12, v13}, Lcom/kingsoft/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;

    move-result-object v9

    .line 336
    .local v9, "sender":Lcom/kingsoft/email/mail/Sender;
    invoke-virtual {v9}, Lcom/kingsoft/email/mail/Sender;->close()V

    .line 337
    invoke-virtual {v9}, Lcom/kingsoft/email/mail/Sender;->open()V

    .line 338
    invoke-virtual {v9}, Lcom/kingsoft/email/mail/Sender;->close()V

    .line 341
    .end local v9    # "sender":Lcom/kingsoft/email/mail/Sender;
    :cond_7
    const-string/jumbo v12, "AccountSettingCheckTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "success & cancel = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->isCancelled()Z
    invoke-static {v14}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->access$100(Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->onResult(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mStoreHost:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->check()Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v0

    .line 278
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->login_err_msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;->onResult(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckSettingTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_1
.end method
