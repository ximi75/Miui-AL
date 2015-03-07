.class public Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ManualSettingsDialog;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final AUTODISCOVER_AUTHENTICATION:I = 0x2

.field public static final AUTODISCOVER_NO_DATA:I = 0x1

.field public static final AUTODISCOVER_OK:I = 0x0

.field public static final CHECK_SETTINGS_CLIENT_CERTIFICATE_NEEDED:I = 0x3

.field public static final CHECK_SETTINGS_OK:I = 0x0

.field public static final CHECK_SETTINGS_SECURITY_USER_DENY:I = 0x2

.field public static final CHECK_SETTINGS_SERVER_ERROR:I = 0x1

.field private static final GOOGLE_DOMAIN_STRING:Ljava/lang/String; = "google.com"

.field static final STATE_AUTODISCOVER_AUTH_DIALOG:I = 0x7

.field private static final STATE_AUTODISCOVER_RESULT:I = 0x8

.field private static final STATE_CHECK_AUTODISCOVER:I = 0x1

.field static final STATE_CHECK_ERROR:I = 0x6

.field private static final STATE_CHECK_INCOMING:I = 0x2

.field private static final STATE_CHECK_OK:I = 0x4

.field private static final STATE_CHECK_OUTGOING:I = 0x3

.field private static final STATE_CHECK_SHOW_SECURITY:I = 0x5

.field private static final STATE_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AccountCheckStgFrag"


# instance fields
.field private istwice:Z

.field mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mPaused:Z

.field private mProgressException:Lcom/kingsoft/emailcommon/mail/MessagingException;

.field private mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 84
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->istwice:Z

    .line 88
    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mPaused:Z

    .line 146
    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)Lcom/kingsoft/email/activity/setup/SetupData;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/kingsoft/emailcommon/mail/MessagingException;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onEditCertificateOk()V

    return-void
.end method

.method static synthetic access$800(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private static dealWithErrResponse(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 730
    if-eqz p1, :cond_0

    .line 731
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 732
    const-string/jumbo v7, "-ERR"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 733
    const-string/jumbo v7, "-ERR"

    const-string/jumbo v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 743
    :cond_0
    :goto_0
    new-instance v4, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;

    invoke-direct {v4, p0}, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;-><init>(Landroid/content/Context;)V

    .line 745
    .local v4, "loginServiceErrProm":Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .local v0, "address":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 751
    :goto_1
    :try_start_2
    invoke-static {p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getDomain(Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getProtocol(Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8, p1, v0}, Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;->getmessageNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 753
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "loginServiceErrProm":Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;
    :goto_2
    return-object v7

    .line 735
    :cond_1
    const-string/jumbo v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 736
    .local v2, "i":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 737
    .local v5, "s1":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 738
    .local v3, "i1":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 739
    .local v6, "s2":Ljava/lang/String;
    move-object p1, v6

    goto :goto_0

    .line 752
    .end local v2    # "i":I
    .end local v3    # "i1":I
    .end local v5    # "s1":Ljava/lang/String;
    .end local v6    # "s2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v7, p1

    .line 753
    goto :goto_2

    .line 748
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v4    # "loginServiceErrProm":Lcom/kingsoft/email/activity/setup/LoginServiceErrProm;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 450
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 453
    :cond_0
    return-void
.end method

.method private getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 376
    .local v1, "target":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_0

    .line 377
    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 381
    .end local v1    # "target":Landroid/app/Fragment;
    :goto_0
    return-object v1

    .line 379
    .restart local v1    # "target":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 380
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_1

    .line 381
    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0    # "activity":Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 383
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public static getDomain(Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;
    .locals 6
    .param p0, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    const/4 v5, 0x1

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iget-object v0, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 351
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_0

    .line 352
    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 360
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 354
    .restart local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 355
    .local v3, "ser":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 356
    .local v2, "i":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 359
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "ser":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method static getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p2, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 771
    .local v7, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 851
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    const v5, 0x7f10006d

    .line 855
    .local v5, "id":I
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    move-object v2, v12

    :cond_1
    :goto_2
    return-object v2

    .line 773
    .end local v5    # "id":I
    :sswitch_0
    if-eqz v7, :cond_2

    const-string/jumbo v12, "\u683c\u6797\u5c3c\u6cbb\u6807\u51c6\u65f6\u95f4"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100377

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 780
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const v5, 0x7f10006a

    .line 782
    .restart local v5    # "id":I
    :goto_4
    goto :goto_0

    .line 777
    .end local v5    # "id":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10006d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 780
    :cond_3
    const v5, 0x7f10006b

    goto :goto_4

    .line 784
    :sswitch_1
    const v5, 0x7f100052

    .line 785
    .restart local v5    # "id":I
    goto :goto_0

    .line 787
    .end local v5    # "id":I
    :sswitch_2
    const v5, 0x7f100067

    .line 788
    .restart local v5    # "id":I
    goto :goto_0

    .line 790
    .end local v5    # "id":I
    :sswitch_3
    const v5, 0x7f100070

    .line 791
    .restart local v5    # "id":I
    goto :goto_0

    .line 793
    .end local v5    # "id":I
    :sswitch_4
    const v5, 0x7f100074

    .line 794
    .restart local v5    # "id":I
    goto :goto_0

    .line 796
    .end local v5    # "id":I
    :sswitch_5
    const v5, 0x7f100064

    .line 797
    .restart local v5    # "id":I
    goto :goto_0

    .line 799
    .end local v5    # "id":I
    :sswitch_6
    const v5, 0x7f100073

    .line 802
    .restart local v5    # "id":I
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    move-object v11, v12

    check-cast v11, [Ljava/lang/String;

    .line 803
    .local v11, "unsupportedPolicies":[Ljava/lang/String;
    if-nez v11, :cond_4

    .line 804
    const-string/jumbo v12, "AccountCheckStgFrag"

    const-string/jumbo v13, "No data for unsupported policies?"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 808
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 810
    .local v3, "first":Z
    move-object v1, v11

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_5
    if-ge v4, v6, :cond_6

    aget-object v8, v1, v4

    .line 811
    .local v8, "policyName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 812
    const/4 v3, 0x0

    .line 816
    :goto_6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 814
    :cond_5
    const-string/jumbo v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 818
    .end local v8    # "policyName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 819
    goto/16 :goto_0

    .line 821
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "i$":I
    .end local v5    # "id":I
    .end local v6    # "len$":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "unsupportedPolicies":[Ljava/lang/String;
    :sswitch_7
    const v5, 0x7f100063

    .line 822
    .restart local v5    # "id":I
    goto/16 :goto_0

    .line 824
    .end local v5    # "id":I
    :sswitch_8
    const v5, 0x7f100071

    .line 825
    .restart local v5    # "id":I
    goto/16 :goto_0

    .line 827
    .end local v5    # "id":I
    :sswitch_9
    const v5, 0x7f100072

    .line 828
    .restart local v5    # "id":I
    goto/16 :goto_0

    .line 830
    .end local v5    # "id":I
    :sswitch_a
    const v5, 0x7f100066

    .line 831
    .restart local v5    # "id":I
    goto/16 :goto_0

    .line 833
    .end local v5    # "id":I
    :sswitch_b
    const v5, 0x7f100065

    .line 834
    .restart local v5    # "id":I
    goto/16 :goto_0

    .line 836
    .end local v5    # "id":I
    :sswitch_c
    const v5, 0x7f100068

    .line 837
    .restart local v5    # "id":I
    const-string/jumbo v9, ""

    .line 839
    .local v9, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    iget-object v9, v12, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_7
    const v12, 0x7f100302

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 845
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {p0, v12, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->dealWithErrResponse(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "exMes":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const v12, 0x7f10006d

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 851
    .end local v2    # "exMes":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v9    # "protocol":Ljava/lang/String;
    :cond_7
    const v5, 0x7f10006e

    goto/16 :goto_0

    .line 855
    .restart local v5    # "id":I
    :cond_8
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {p0, v5, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 841
    .restart local v9    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_7

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_9
        0x5 -> :sswitch_c
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_7
        0x10 -> :sswitch_a
        0x11 -> :sswitch_b
        0x21 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getErrorString2(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p2, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    const/4 v12, 0x0

    .line 860
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "message":Ljava/lang/String;
    invoke-static {p0, v5, p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->dealWithErrResponse(Landroid/content/Context;Ljava/lang/String;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v5

    .line 864
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 931
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v3, 0x7f10006d

    .line 935
    .local v3, "id":I
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    return-object v9

    .line 869
    .end local v3    # "id":I
    :sswitch_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v3, 0x7f10006a

    .line 871
    .restart local v3    # "id":I
    :goto_2
    goto :goto_0

    .line 869
    .end local v3    # "id":I
    :cond_1
    const v3, 0x7f10006b

    goto :goto_2

    .line 873
    :sswitch_1
    const v3, 0x7f100068

    .line 874
    .restart local v3    # "id":I
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v5

    .line 875
    goto :goto_1

    .line 879
    .end local v3    # "id":I
    :sswitch_2
    const v3, 0x7f100052

    .line 880
    .restart local v3    # "id":I
    goto :goto_0

    .line 882
    .end local v3    # "id":I
    :sswitch_3
    const v3, 0x7f100067

    .line 883
    .restart local v3    # "id":I
    goto :goto_0

    .line 885
    .end local v3    # "id":I
    :sswitch_4
    const v3, 0x7f100070

    .line 886
    .restart local v3    # "id":I
    goto :goto_0

    .line 888
    .end local v3    # "id":I
    :sswitch_5
    const v3, 0x7f100074

    .line 889
    .restart local v3    # "id":I
    goto :goto_0

    .line 891
    .end local v3    # "id":I
    :sswitch_6
    const v3, 0x7f100064

    .line 892
    .restart local v3    # "id":I
    goto :goto_0

    .line 894
    .end local v3    # "id":I
    :sswitch_7
    const v3, 0x7f100073

    .line 897
    .restart local v3    # "id":I
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v8, v9

    check-cast v8, [Ljava/lang/String;

    .line 898
    .local v8, "unsupportedPolicies":[Ljava/lang/String;
    if-nez v8, :cond_2

    .line 899
    const-string/jumbo v9, "AccountCheckStgFrag"

    const-string/jumbo v10, "No data for unsupported policies?"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 903
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 905
    .local v1, "first":Z
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 906
    .local v6, "policyName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 907
    const/4 v1, 0x0

    .line 911
    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 909
    :cond_3
    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 913
    .end local v6    # "policyName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 914
    goto :goto_0

    .line 916
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v4    # "len$":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "unsupportedPolicies":[Ljava/lang/String;
    :sswitch_8
    const v3, 0x7f100063

    .line 917
    .restart local v3    # "id":I
    goto/16 :goto_0

    .line 919
    .end local v3    # "id":I
    :sswitch_9
    const v3, 0x7f100071

    .line 920
    .restart local v3    # "id":I
    goto/16 :goto_0

    .line 922
    .end local v3    # "id":I
    :sswitch_a
    const v3, 0x7f100072

    .line 923
    .restart local v3    # "id":I
    goto/16 :goto_0

    .line 925
    .end local v3    # "id":I
    :sswitch_b
    const v3, 0x7f100066

    .line 926
    .restart local v3    # "id":I
    goto/16 :goto_0

    .line 928
    .end local v3    # "id":I
    :sswitch_c
    const v3, 0x7f100065

    .line 929
    .restart local v3    # "id":I
    goto/16 :goto_0

    .line 931
    .end local v3    # "id":I
    :cond_5
    const v3, 0x7f10006e

    goto/16 :goto_0

    .line 935
    .restart local v3    # "id":I
    :cond_6
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v12

    invoke-virtual {p0, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 864
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_a
        0x5 -> :sswitch_1
        0x8 -> :sswitch_7
        0x9 -> :sswitch_9
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_8
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getProtocol(Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;
    .locals 2
    .param p0, "setupdata"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "imap"

    goto :goto_0
.end method

.method private isAuthError(Lcom/kingsoft/emailcommon/mail/MessagingException;)Z
    .locals 2
    .param p1, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    .line 1446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1447
    const/4 v0, 0x1

    .line 1449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    .locals 1
    .param p0, "mode"    # I
    .param p1, "parentFragment"    # Landroid/app/Fragment;

    .prologue
    .line 156
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 157
    .local v0, "f":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 158
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 416
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 417
    return-void
.end method

.method private onEditCertificateOk()V
    .locals 3

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 422
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 423
    return-void
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .locals 4
    .param p1, "okPressed"    # Z

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 463
    .local v0, "callbackTarget":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v2, v3}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 467
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 468
    .local v1, "fm":Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 471
    :cond_0
    return-void

    .line 463
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private recoverAndDismissCheckingDialog()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismissAllowingStateLoss()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 404
    :cond_1
    return-void
.end method

.method private reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # I
    .param p2, "ex"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p3, "err_msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 251
    iput p1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 252
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/kingsoft/emailcommon/mail/MessagingException;

    .line 254
    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mPaused:Z

    if-nez v6, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 256
    .local v2, "fm":Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_0

    .line 328
    const-string/jumbo v4, "CheckProgressDialog"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 331
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v4, :cond_5

    .line 332
    iget v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 333
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string/jumbo v6, "CheckProgressDialog"

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 341
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local p2    # "ex":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v2    # "fm":Landroid/app/FragmentManager;
    .restart local p2    # "ex":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 262
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 264
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v5, v4, v6}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 271
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    goto :goto_0

    .line 276
    :pswitch_2
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 278
    const-string/jumbo v6, "ErrorDialog"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_0

    .line 281
    sget-boolean v6, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    if-ne v6, v5, :cond_3

    .line 282
    move-object v3, p3

    .line 283
    .local v3, "message":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-static {v6, p2, v7}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_1
    new-instance v6, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-direct {v6, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-static {v6, v7, p0, v3}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->access$000(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v1

    .line 289
    .local v1, "errorDialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const-string/jumbo v7, "ErrorDialog"

    invoke-virtual {v6, v1, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 292
    iput-boolean v5, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->istwice:Z

    .line 311
    .end local v1    # "errorDialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    :goto_1
    sput-boolean v4, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    goto :goto_0

    .line 298
    :cond_3
    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->istwice:Z

    if-eq v6, v5, :cond_2

    .line 301
    new-instance v5, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-direct {v5, p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/kingsoft/emailcommon/mail/MessagingException;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    # invokes: Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-static {v5, v6, p0, v7, v8}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->access$100(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v1

    .line 303
    .restart local v1    # "errorDialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string/jumbo v6, "ErrorDialog"

    invoke-virtual {v5, v1, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 305
    iput-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->istwice:Z

    goto :goto_1

    .line 316
    .end local v1    # "errorDialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :pswitch_3
    check-cast p2, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p2    # "ex":Lcom/kingsoft/emailcommon/mail/MessagingException;
    iget-object v0, p2, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 318
    .local v0, "autoDiscoverResult":Lcom/android/emailcommon/provider/HostAuth;
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 320
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 322
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v6

    if-eqz v0, :cond_4

    :goto_2
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v6, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    goto/16 :goto_0

    :cond_4
    move v4, v5

    goto :goto_2

    .line 336
    .end local v0    # "autoDiscoverResult":Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2    # "ex":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_5
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v5, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 184
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getTargetRequestCode()I

    move-result v1

    .line 186
    .local v1, "checkMode":I
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;

    .line 187
    .local v2, "container":Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
    invoke-interface {v2}, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;->getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 188
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 189
    .local v0, "checkAccount":Lcom/android/emailcommon/provider/Account;
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-direct {v3, p0, v1, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 193
    .end local v0    # "checkAccount":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "checkMode":I
    .end local v2    # "container":Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 222
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 224
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "CheckProgressDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 231
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 234
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 245
    return-void
.end method

.method onErrorDialogEditButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 434
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 435
    .local v0, "callbackTarget":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    iget v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v3, v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 444
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 445
    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-interface {v0, v3, v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mPaused:Z

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mPaused:Z

    .line 204
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/kingsoft/emailcommon/mail/MessagingException;

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/kingsoft/emailcommon/mail/MessagingException;)V

    .line 207
    :cond_0
    return-void
.end method
