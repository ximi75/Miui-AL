.class Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/kingsoft/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field private login_err_msg:Ljava/lang/String;

.field final mAccount:Lcom/android/emailcommon/provider/Account;

.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mStoreHost:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V
    .locals 2
    .param p2, "mode"    # I
    .param p3, "checkAccount"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v1, 0x0

    .line 523
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 644
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->login_err_msg:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 525
    iput p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 526
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 527
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 529
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 531
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 533
    return-void

    .line 529
    :cond_0
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/emailcommon/mail/MessagingException;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 540
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_7

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 542
    const/4 v6, 0x0

    .line 641
    :goto_0
    return-object v6

    .line 551
    :cond_0
    sget-object v14, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "Begin check of incoming email settings"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v14, v15}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v12

    .line 555
    .local v12, "store":Lcom/kingsoft/email/mail/Store;
    invoke-virtual {v12}, Lcom/kingsoft/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 556
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 557
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 627
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :catch_0
    move-exception v6

    .line 630
    .local v6, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_1
    invoke-virtual {v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 634
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v14}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v15}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v15

    invoke-static {v14, v6, v15}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->login_err_msg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 636
    :catch_1
    move-exception v14

    goto :goto_0

    .line 560
    .end local v6    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string/jumbo v15, "validate_protocol_version"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 565
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v14}, Lcom/kingsoft/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/high16 v16, 0x4028000000000000L

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v15, v14, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v14, Lcom/android/emailcommon/provider/Account;->mFlags:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 570
    :cond_2
    :goto_1
    :try_start_4
    const-string/jumbo v14, "validate_result_code"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 572
    .local v10, "resultCode":I
    const-string/jumbo v14, "validate_redirect_address"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, "redirectAddress":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v9, v14, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 580
    :cond_3
    const/4 v14, 0x7

    if-ne v10, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v14}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 582
    const/4 v10, -0x1

    .line 584
    :cond_4
    const/4 v14, 0x7

    if-ne v10, v14, :cond_5

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v14}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v15

    const-string/jumbo v14, "validate_policy_set"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v15, v14}, Lcom/kingsoft/email/activity/setup/SetupData;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 588
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v6, v10, v14}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "redirectAddress":Ljava/lang/String;
    .end local v10    # "resultCode":I
    .end local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :catch_2
    move-exception v3

    .line 641
    .local v3, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 589
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "redirectAddress":Ljava/lang/String;
    .restart local v10    # "resultCode":I
    .restart local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_5
    const/16 v14, 0x8

    if-ne v10, v14, :cond_6

    .line 590
    const-string/jumbo v14, "validate_policy_set"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/Policy;

    .line 592
    .local v7, "policy":Lcom/android/emailcommon/provider/Policy;
    iget-object v13, v7, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 593
    .local v13, "unsupported":Ljava/lang/String;
    const-string/jumbo v14, "\u0001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "data":[Ljava/lang/String;
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v6, v10, v14, v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 597
    .end local v2    # "data":[Ljava/lang/String;
    .end local v7    # "policy":Lcom/android/emailcommon/provider/Policy;
    .end local v13    # "unsupported":Ljava/lang/String;
    :cond_6
    const/4 v14, -0x1

    if-eq v10, v14, :cond_7

    .line 599
    const-string/jumbo v14, "validate_error_message"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-direct {v6, v10, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 605
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v9    # "redirectAddress":Ljava/lang/String;
    .end local v10    # "resultCode":I
    .end local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v14, :cond_8

    const/4 v8, 0x0

    .line 607
    .local v8, "protocol":Ljava/lang/String;
    :goto_2
    if-nez v8, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 605
    .end local v8    # "protocol":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v14, v14, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v8, v14, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto :goto_2

    .line 608
    .restart local v8    # "protocol":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v14, v8}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v5

    .line 612
    .local v5, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v14, v5, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_b

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 614
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 615
    :cond_a
    sget-object v14, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "Begin check of outgoing email settings"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 617
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v14, v15}, Lcom/kingsoft/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;

    move-result-object v11

    .line 620
    .local v11, "sender":Lcom/kingsoft/email/mail/Sender;
    invoke-virtual {v11}, Lcom/kingsoft/email/mail/Sender;->close()V

    .line 621
    invoke-virtual {v11}, Lcom/kingsoft/email/mail/Sender;->open()V

    .line 622
    invoke-virtual {v11}, Lcom/kingsoft/email/mail/Sender;->close()V
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 626
    .end local v11    # "sender":Lcom/kingsoft/email/mail/Sender;
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 568
    .end local v5    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .end local v8    # "protocol":Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v12    # "store":Lcom/kingsoft/email/mail/Store;
    :catch_3
    move-exception v14

    goto/16 :goto_1

    .line 630
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/kingsoft/emailcommon/mail/MessagingException;)V
    .locals 10
    .param p1, "result"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    const/4 v9, 0x1

    .line 669
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    if-nez p1, :cond_2

    .line 672
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v7, 0x4

    const/4 v8, 0x0

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;)V
    invoke-static {v6, v7, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/kingsoft/emailcommon/mail/MessagingException;)V

    .line 676
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 677
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    move-result-object v5

    .line 678
    .local v5, "sender":Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v3, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 679
    .local v3, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v4, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 680
    .local v4, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v9

    .line 681
    .local v0, "domain":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v3, v4}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->sendBackCorrectConfig(Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 684
    .end local v0    # "domain":Ljava/lang/String;
    .end local v3    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v4    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v5    # "sender":Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    :cond_2
    const/4 v2, 0x6

    .line 685
    .local v2, "progressState":I
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    .line 687
    .local v1, "exceptionType":I
    packed-switch v1, :pswitch_data_0

    .line 723
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->login_err_msg:Ljava/lang/String;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    invoke-static {v6, v2, p1, v7}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$400(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :pswitch_1
    const/4 v2, 0x7

    .line 693
    goto :goto_1

    .line 695
    :pswitch_2
    const/16 v2, 0x8

    .line 696
    goto :goto_1

    .line 701
    :pswitch_3
    const/4 v2, 0x5

    .line 706
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;

    move-result-object v5

    .line 707
    .restart local v5    # "sender":Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v3, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 708
    .restart local v3    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    # getter for: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;
    invoke-static {v6}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-object v4, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 709
    .restart local v4    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 710
    :cond_4
    move-object v4, v3

    .line 712
    :cond_5
    const-string/jumbo v0, ""

    .line 713
    .restart local v0    # "domain":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 714
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v9

    .line 718
    :cond_6
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 719
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v3, v4}, Lcom/kingsoft/email/activity/setup/AutoSendAccountConfig;->sendBackCorrectConfig(Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_1

    .line 715
    :cond_7
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 716
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    const-string/jumbo v7, "\\\\"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    goto :goto_2

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, Lcom/kingsoft/emailcommon/mail/MessagingException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/kingsoft/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;)V
    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->access$300(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/kingsoft/emailcommon/mail/MessagingException;)V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
