.class public Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;
.super Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupServerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/email/view/CertificateSelector$HostCallback;


# static fields
.field private static final CERTIFICATE_REQUEST:I = 0x0

.field private static final ERR_SIGN:Ljava/lang/CharSequence;

.field public static final PROVIDER:Ljava/lang/String; = "CONFIG_PROVIDER"

.field private static final SMTP_PORT_NORMAL:I = 0x19

.field private static final SMTP_PORT_SSL:I = 0x1d1

.field private static final STATE_KEY_CREDENTIAL:Ljava/lang/String; = "AccountSetupIncomingFragment.credential"

.field private static final STATE_KEY_LOADED:Ljava/lang/String; = "AccountSetupIncomingFragment.loaded"


# instance fields
.field private H:Landroid/os/Handler;

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation
.end field

.field private account_delete_policy_ll:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private delect_policy_value:[Ljava/lang/String;

.field private delete_policy:[Ljava/lang/String;

.field private isValidl:Z

.field left:I

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mChanged:Z

.field private mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

.field private mDeletePolicy:Landroid/widget/Spinner;

.field private mDeviceIdSectionView:Landroid/view/View;

.field private mDomainView:Landroid/widget/EditText;

.field private mEasViewStub:Landroid/view/ViewStub;

.field private mImapPathPrefixSectionView:Landroid/view/View;

.field private mImapPathPrefixView:Landroid/widget/TextView;

.field private mLoaded:Z

.field private mLoadedDeletePolicy:I

.field private mOwnerLookupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerLookupTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortSmtpView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field private mSecurityType:Landroid/widget/Spinner;

.field private mSecurityTypeSmtp:Landroid/widget/Spinner;

.field private mServerLabelView:Landroid/widget/TextView;

.field private mServerSmtpView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

.field private mStarted:Z

.field private mUserEmailView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;

.field private mValidationTextWatcher:Landroid/text/TextWatcher;

.field right:I

.field private setViewParent:Z

.field private type_recv:[Ljava/lang/String;

.field private type_recv_value:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "/"

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->ERR_SIGN:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->H:Landroid/os/Handler;

    .line 72
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mChanged:Z

    .line 616
    iput v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->right:I

    .line 617
    iput v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->left:I

    .line 618
    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->setViewParent:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->validateFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->updatePortFromSecuritySmtpType()V

    return-void
.end method

.method private configureEditor()V
    .locals 9

    .prologue
    const v8, 0x7f100086

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 764
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 765
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v3, :cond_5

    .line 766
    :cond_0
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "null account or host auth. account null: %b host auth null: %b"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    if-nez v0, :cond_4

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v5

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v3, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 807
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v5

    .line 766
    goto :goto_0

    .line 773
    :cond_5
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    .line 775
    .local v1, "lastView":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_2
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mBaseScheme:Ljava/lang/String;

    .line 776
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mBaseScheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 777
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mBaseScheme:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 778
    .local v2, "protocol":Ljava/lang/String;
    const-string/jumbo v3, "eas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 779
    const-string/jumbo v2, "exchange"

    .line 780
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0097

    invoke-static {v3, v4, v7}, Lcom/kingsoft/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 781
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0098

    invoke-static {v3, v4, v7}, Lcom/kingsoft/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 782
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c009f

    invoke-static {v3, v4, v7}, Lcom/kingsoft/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 784
    :cond_6
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerLabelView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v3, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    if-nez v3, :cond_8

    .line 790
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    .line 797
    :goto_3
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v3, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    if-nez v3, :cond_9

    .line 798
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->account_delete_policy_ll:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 800
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 806
    :goto_4
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_1

    .line 775
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_7
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto/16 :goto_2

    .line 794
    .restart local v2    # "protocol":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 803
    :cond_9
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 804
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->account_delete_policy_ll:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1276
    :goto_0
    return-object v1

    .line 1273
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v1, v2

    .line 1274
    goto :goto_0

    .line 1275
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    move-object v1, v2

    .line 1276
    goto :goto_0
.end method

.method private getPortFromSecurityType(Z)I
    .locals 4
    .param p1, "useSsl"    # Z

    .prologue
    .line 984
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 985
    .local v1, "mHostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    :goto_0
    if-nez v1, :cond_1

    const/16 v2, 0x50

    .line 988
    :goto_1
    return v2

    .line 984
    .end local v1    # "mHostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-object v1, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0

    .line 986
    .restart local v1    # "mHostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 988
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->portSsl:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->port:I

    goto :goto_1
.end method

.method private getPortFromSecurityTypeSmtp()I
    .locals 2

    .prologue
    .line 992
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 994
    .local v0, "securityType":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x19

    goto :goto_0
.end method

.method private getSslSelected()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1001
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    if-nez v3, :cond_1

    .line 1002
    const-string/jumbo v3, ""

    const-string/jumbo v4, "mSecurityType is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1006
    :cond_0
    :goto_0
    return v1

    .line 1005
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1006
    .local v0, "index":I
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->type_recv_value:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private getSslSelectedSmtp()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1013
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    if-nez v3, :cond_1

    .line 1014
    const-string/jumbo v3, ""

    const-string/jumbo v4, "mSecurityTypeSmtp is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1018
    :cond_0
    :goto_0
    return v1

    .line 1017
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1018
    .local v0, "index":I
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->type_recv_value:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private loadProviderSettings()V
    .locals 13

    .prologue
    .line 530
    :try_start_0
    iget-boolean v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    if-eqz v11, :cond_0

    .line 615
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v11}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 534
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 536
    .local v8, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v10, v8, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 538
    .local v10, "username":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 539
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    iget-object v12, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 551
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/HostAuth;->getPasswordDeCode()Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, "password":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 553
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-boolean v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    if-eqz v11, :cond_2

    .line 555
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    .line 559
    :cond_2
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v11, v11, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    if-eqz v11, :cond_3

    .line 560
    iget-object v7, v8, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 561
    .local v7, "prefix":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 562
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v11

    iput v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedDeletePolicy:I

    .line 567
    const/4 v5, 0x0

    .line 568
    .local v5, "index":I
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    if-nez v11, :cond_6

    .line 581
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v2, v11, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_flag:I

    .line 582
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x5

    .line 583
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v11, v11, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSsl:Z

    if-eqz v11, :cond_5

    .line 584
    or-int/lit8 v2, v2, 0x9

    .line 587
    :cond_5
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 589
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recv_address:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iput-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 594
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    .line 599
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v11}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v11, v12}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 603
    .local v9, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v11, v11, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_flag:I

    and-int/lit8 v3, v11, -0x5

    .line 605
    .local v3, "flags_smtp":I
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kingsoft/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 607
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->send_address:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v12, v12, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {v8}, Lcom/android/emailcommon/provider/HostAuth;->clone()Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v11

    iput-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 611
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 612
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "flags":I
    .end local v3    # "flags_smtp":I
    .end local v5    # "index":I
    .end local v6    # "password":Ljava/lang/String;
    .end local v8    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v9    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v10    # "username":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->loadSettings()V

    goto/16 :goto_0

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v8    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v10    # "username":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 547
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 548
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "index":I
    .restart local v6    # "password":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    :try_start_4
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    array-length v11, v11

    if-ge v4, v11, :cond_4

    .line 572
    iget v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedDeletePolicy:I

    iget-object v12, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v12

    if-ne v11, v12, :cond_7

    .line 573
    move v5, v4

    .line 574
    goto/16 :goto_2

    .line 571
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private loadSettings()V
    .locals 20

    .prologue
    .line 813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 940
    :goto_0
    return-void

    .line 816
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 817
    .local v2, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v14

    .line 819
    .local v14, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v0, v14, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 820
    .local v17, "username":Ljava/lang/String;
    iget-object v0, v14, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v14, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "@"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "@"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 821
    :cond_1
    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 825
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_3
    if-eqz v17, :cond_4

    .line 830
    const v18, 0x7f100302

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 832
    const-string/jumbo v18, "\\"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 833
    const-string/jumbo v18, "\\\\"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 834
    .local v16, "template":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 853
    .end local v16    # "template":[Ljava/lang/String;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 861
    :cond_4
    :goto_3
    invoke-virtual {v14}, Lcom/android/emailcommon/provider/HostAuth;->getPasswordDeCode()Ljava/lang/String;

    move-result-object v10

    .line 862
    .local v10, "password":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 869
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 870
    iget-object v13, v14, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 871
    .local v13, "prefix":Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedDeletePolicy:I

    .line 877
    const/4 v9, 0x0

    .line 881
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_10

    .line 891
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 894
    iget v4, v14, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 895
    .local v4, "flags":I
    and-int/lit8 v4, v4, -0x5

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSsl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 897
    or-int/lit8 v4, v4, 0x9

    .line 900
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 902
    iget-object v6, v14, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 903
    .local v6, "hostname":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 907
    :cond_9
    iget v11, v14, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 908
    .local v11, "port":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_12

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 914
    :goto_5
    invoke-virtual {v14}, Lcom/android/emailcommon/provider/HostAuth;->clone()Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 917
    iget-object v0, v14, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v18, v0

    const v19, 0x7f100302

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v15

    .line 921
    .local v15, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget v0, v15, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    move/from16 v18, v0

    and-int/lit8 v5, v18, -0x5

    .line 923
    .local v5, "flags_smtp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 925
    iget-object v7, v15, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 926
    .local v7, "hostname_smtp":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 930
    :cond_a
    iget v12, v15, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 931
    .local v12, "port_smtp":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :goto_6
    invoke-virtual {v15}, Lcom/android/emailcommon/provider/HostAuth;->clone()Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 939
    .end local v5    # "flags_smtp":I
    .end local v7    # "hostname_smtp":Ljava/lang/String;
    .end local v12    # "port_smtp":I
    .end local v15    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    goto/16 :goto_0

    .line 830
    .end local v4    # "flags":I
    .end local v6    # "hostname":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "port":I
    :cond_c
    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_1

    .line 836
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    const-string/jumbo v18, "@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 837
    const-string/jumbo v18, "@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 838
    .restart local v16    # "template":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 841
    .end local v16    # "template":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 846
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 847
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 854
    :catch_1
    move-exception v3

    .line 856
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 857
    :catch_2
    move-exception v18

    goto/16 :goto_3

    .line 884
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v9    # "index":I
    .restart local v10    # "password":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedDeletePolicy:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 886
    move v9, v8

    .line 887
    goto/16 :goto_4

    .line 884
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 911
    .end local v8    # "i":I
    .restart local v4    # "flags":I
    .restart local v6    # "hostname":Ljava/lang/String;
    .restart local v11    # "port":I
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->updatePortFromSecurityType()V

    goto/16 :goto_5

    .line 934
    .restart local v5    # "flags_smtp":I
    .restart local v7    # "hostname_smtp":Ljava/lang/String;
    .restart local v12    # "port_smtp":I
    .restart local v15    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->updatePortFromSecurityType()V

    goto/16 :goto_6
.end method

.method private onProtocalChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "protocalName"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v8}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    iget-object v2, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 401
    .local v2, "mHostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v2, :cond_4

    const/4 v3, 0x0

    .line 402
    .local v3, "mProtocol":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-static {v8, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 405
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 407
    move-object v3, p1

    .line 410
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v4, "securityTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    new-instance v8, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v11, 0x7f100081

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v8, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v11, 0x7f100082

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v8, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v11, 0x7f100083

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v8, v8, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerTls:Z

    if-eqz v8, :cond_2

    .line 424
    new-instance v8, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v11, 0x7f100084

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v8, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v9, 0x1090008

    invoke-direct {v5, v8, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 435
    .local v5, "securityTypesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    sget v8, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 437
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 438
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    new-instance v9, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$5;

    invoke-direct {v9, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 451
    const/4 v8, 0x5

    new-array v7, v8, [Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100081

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100082

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100083

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100084

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100085

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v7, v8

    .line 468
    .local v7, "securityTypessmtp":[Lcom/kingsoft/email/activity/setup/SpinnerOption;
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v9, 0x1090008

    invoke-direct {v6, v8, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 470
    .local v6, "securityTypesAdaptersmtp":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    sget v8, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 472
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 474
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    new-instance v9, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$6;

    invoke-direct {v9, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$6;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 487
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v8, v8, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    if-eqz v8, :cond_3

    .line 488
    const/4 v8, 0x2

    new-array v0, v8, [Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100077

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v0, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v12, 0x7f100075

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v0, v8

    .line 495
    .local v0, "deletePolicies":[Lcom/kingsoft/email/activity/setup/SpinnerOption;
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    const v9, 0x1090008

    invoke-direct {v1, v8, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 498
    .local v1, "deletePoliciesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    sget v8, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 500
    iget-object v8, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 502
    .end local v0    # "deletePolicies":[Lcom/kingsoft/email/activity/setup/SpinnerOption;
    .end local v1    # "deletePoliciesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    :cond_3
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->configureEditor()V

    goto/16 :goto_0

    .line 401
    .end local v3    # "mProtocol":Ljava/lang/String;
    .end local v4    # "securityTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    .end local v5    # "securityTypesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    .end local v6    # "securityTypesAdaptersmtp":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/kingsoft/email/activity/setup/SpinnerOption;>;"
    .end local v7    # "securityTypessmtp":[Lcom/kingsoft/email/activity/setup/SpinnerOption;
    :cond_4
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "senderName"    # Ljava/lang/String;
    .param p2, "senderEmail"    # Ljava/lang/String;

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1265
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method private setIncoming(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 11
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPassword"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1151
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 1152
    .local v3, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iput-object p3, v3, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 1153
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 1154
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    iget-object v7, v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1156
    .local v1, "newPolicy":I
    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    .line 1158
    .end local v1    # "newPolicy":I
    :cond_0
    const/4 v7, -0x1

    iput v7, v3, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 1160
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1163
    .local v5, "serverAddress":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1170
    .local v6, "serverPort":I
    :goto_0
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    iget-object v7, v7, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1173
    .local v4, "securityType":I
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v7, v5, v6, v4}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1174
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v7, v7, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerPrefix:Z

    if-eqz v7, :cond_2

    .line 1175
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v8

    :goto_1
    iput-object v7, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 1182
    .end local v2    # "prefix":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    invoke-virtual {v7}, Lcom/kingsoft/email/view/CertificateSelector;->getCertificate()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 1183
    return-object v3

    .line 1165
    .end local v4    # "securityType":I
    .end local v6    # "serverPort":I
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getSslSelected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getPortFromSecurityType(Z)I

    move-result v6

    .line 1167
    .restart local v6    # "serverPort":I
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Non-integer server port; using \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1177
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v4    # "securityType":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1180
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_2
    iput-object v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    goto :goto_2
.end method

.method private setOutgoing(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 1187
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 1188
    .local v1, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v1, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1189
    :cond_0
    const/4 v5, -0x1

    iput v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 1192
    iput-object p3, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 1193
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, "serverSmtpddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1196
    .local v2, "serverSmtpPort":I
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1201
    :goto_1
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1203
    .local v4, "value_smtp":I
    const-string/jumbo v5, "smtp"

    invoke-virtual {v1, v5, v3, v2, v4}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1205
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    goto :goto_0

    .line 1198
    .end local v4    # "value_smtp":I
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getSslSelectedSmtp()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getPortFromSecurityType(Z)I

    move-result v2

    goto :goto_1
.end method

.method private setValues()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method private updatePortFromSecuritySmtpType()V
    .locals 4

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getSslSelectedSmtp()Z

    move-result v1

    .line 1050
    .local v1, "sslSelected":Z
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getPortFromSecurityTypeSmtp()I

    move-result v0

    .line 1051
    .local v0, "port":I
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onUseSslChanged(Z)V

    .line 1053
    return-void
.end method

.method private updatePortFromSecurityType()V
    .locals 4

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getSslSelected()Z

    move-result v1

    .line 1044
    .local v1, "sslSelected":Z
    invoke-direct {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getPortFromSecurityType(Z)I

    move-result v0

    .line 1045
    .local v0, "port":I
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onUseSslChanged(Z)V

    .line 1047
    return-void
.end method

.method private validRepeatAccount()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 329
    iget-boolean v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    if-eqz v7, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v5

    .line 330
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->accountList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->accountList:Ljava/util/List;

    .line 333
    :cond_2
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->accountList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 334
    .local v0, "acc":Lcom/android/emailcommon/provider/Account;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "accname":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    if-eqz v7, :cond_4

    .line 337
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 339
    move-object v1, v4

    .line 342
    .end local v4    # "temp":Ljava/lang/String;
    :cond_4
    iget-object v7, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->enableNextButton(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f100010

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v7, v8, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "infoString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 347
    goto :goto_0
.end method

.method private validateFields()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 947
    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    if-nez v6, :cond_0

    .line 980
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    .line 950
    .local v1, "accountView":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    if-eqz v6, :cond_1

    .line 951
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    .line 953
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "username":Ljava/lang/String;
    const/4 v2, 0x1

    .line 956
    .local v2, "isValidEmail":Z
    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    if-ne v6, v1, :cond_2

    .line 957
    invoke-static {v3}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v2

    .line 960
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->validRepeatAccount()Z

    move-result v0

    .line 961
    .local v0, "RepeatAcc":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->ERR_SIGN:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    .line 964
    :cond_3
    iput-boolean v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->isValidl:Z

    .line 972
    :goto_1
    iget-boolean v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->isValidl:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/kingsoft/emailcommon/utility/Utility;->isServerNameValid(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/kingsoft/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->enableNextButton(Z)V

    .line 978
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mCacheLoginCredential:Ljava/lang/String;

    goto :goto_0

    .line 967
    :cond_4
    iput-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->isValidl:Z

    .line 969
    const/high16 v6, -0x1000000

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    :cond_5
    move v4, v5

    .line 972
    goto :goto_2
.end method


# virtual methods
.method public haveSettingsChanged()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1214
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 1216
    const/4 v2, 0x0

    .line 1217
    .local v2, "newDeletePolicy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 1219
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delete_policy:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1220
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1224
    :cond_0
    iget v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoadedDeletePolicy:I

    if-eq v5, v2, :cond_4

    move v0, v3

    .line 1229
    .end local v1    # "i":I
    .end local v2    # "newDeletePolicy":I
    .local v0, "deletePolicyChanged":Z
    :goto_1
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .line 1217
    .end local v0    # "deletePolicyChanged":Z
    .restart local v1    # "i":I
    .restart local v2    # "newDeletePolicy":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    .line 1224
    goto :goto_1

    .line 1226
    .end local v1    # "i":I
    .end local v2    # "newDeletePolicy":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "deletePolicyChanged":Z
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 354
    sget-boolean v4, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 355
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "AccountSetupIncomingFragment onActivityCreated"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 359
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    invoke-virtual {v4, p0}, Lcom/kingsoft/email/view/CertificateSelector;->setHostActivity(Lcom/kingsoft/email/view/CertificateSelector$HostCallback;)V

    .line 361
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 362
    check-cast v0, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;

    .line 363
    .local v0, "container":Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;
    invoke-interface {v0}, Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;->getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 368
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iget-object v2, v4, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 369
    .local v2, "mHostAuthRecv":Lcom/android/emailcommon/provider/HostAuth;
    if-nez v2, :cond_1

    .line 370
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 372
    :cond_1
    if-nez v2, :cond_3

    const/4 v3, 0x0

    .line 373
    .local v3, "mProtocol":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->onProtocalChanged(Ljava/lang/String;)V

    .line 376
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const v5, 0x7f100302

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mEasViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 382
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c01e4

    invoke-static {v4, v5}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    .line 383
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c01e5

    invoke-static {v4, v5}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    .line 384
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    :cond_2
    return-void

    .line 372
    .end local v3    # "mProtocol":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1250
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1252
    const-string/jumbo v1, "CertificateRequestor.alias"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "certAlias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    invoke-virtual {v1, v0}, Lcom/kingsoft/email/view/CertificateSelector;->setCertificate(Ljava/lang/String;)V

    .line 1258
    .end local v0    # "certAlias":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1237
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 1238
    return-void
.end method

.method public onCertificateRequested()V
    .locals 2

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.emailcommon.REQUEST_CERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "eas://com.android.emailcommon/certrequest"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1245
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1246
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1317
    :goto_0
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    .line 1318
    return-void

    .line 1284
    :sswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 1287
    :sswitch_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 1290
    :sswitch_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 1293
    :sswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1296
    :sswitch_4
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1297
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1300
    :sswitch_5
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1301
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1304
    :sswitch_6
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1305
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1308
    :sswitch_7
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1309
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1312
    :sswitch_8
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1313
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 1282
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_3
        0x7f0c0086 -> :sswitch_4
        0x7f0c0088 -> :sswitch_5
        0x7f0c008b -> :sswitch_6
        0x7f0c0091 -> :sswitch_0
        0x7f0c0094 -> :sswitch_2
        0x7f0c0099 -> :sswitch_7
        0x7f0c009b -> :sswitch_8
        0x7f0c009f -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 124
    sget-boolean v1, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "AccountSetupIncomingFragment onCreate"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_1

    .line 130
    const-string/jumbo v1, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "AccountSetupIncomingFragment.loaded"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    .line 136
    :cond_1
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 155
    new-instance v1, Ljava/util/concurrent/FutureTask;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 156
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 157
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "CONFIG_PROVIDER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    sget-boolean v18, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSettingsModle:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->context:Landroid/content/Context;

    .line 175
    sget-boolean v18, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v18, :cond_0

    sget-boolean v18, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 176
    sget-object v18, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v19, "AccountSetupIncomingFragment onCreateView"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    :cond_0
    const v15, 0x7f040024

    .line 180
    .local v15, "layoutId":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    move/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->linkLogin(ZI)V

    .line 181
    const v18, 0x7f040024

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 183
    .local v17, "view":Landroid/view/View;
    const v18, 0x7f0c0084

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 184
    .local v4, "account_incoming_username_ll":Landroid/view/View;
    const v18, 0x7f0c0088

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    .line 185
    .local v8, "account_server_ll":Landroid/view/View;
    const v18, 0x7f0c008b

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 186
    .local v5, "account_port_ll":Landroid/view/View;
    const v18, 0x7f0c0099

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 187
    .local v9, "account_server_smtp_ll":Landroid/view/View;
    const v18, 0x7f0c009b

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 188
    .local v6, "account_port_smtp_ll":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v18, 0x7f0c0086

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 193
    .local v10, "account_setup_incoming_password_ll":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 194
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 196
    :cond_1
    const v18, 0x7f0c0087

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewStub;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mEasViewStub:Landroid/view/ViewStub;

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v18, 0x7f0c0085

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    .line 199
    const v18, 0x7f0c006d

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    .line 200
    const v18, 0x7f0c0089

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 201
    const v18, 0x7f0c008a

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    .line 202
    const v18, 0x7f0c009a

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerSmtpView:Landroid/widget/EditText;

    .line 203
    const v18, 0x7f0c008c

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    .line 204
    const v18, 0x7f0c009d

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortSmtpView:Landroid/widget/EditText;

    .line 205
    const v18, 0x7f0c0096

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    .line 208
    const v18, 0x7f0c00a1

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityTypeSmtp:Landroid/widget/Spinner;

    .line 210
    const v18, 0x7f0c0094

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 212
    .local v7, "account_security_type_ll":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v18, 0x7f0c009f

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    .line 216
    .local v11, "account_setup_server_sendtype_ll":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v18, 0x7f0c0091

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->account_delete_policy_ll:Landroid/view/View;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->account_delete_policy_ll:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v18, 0x7f0c0093

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    .line 223
    const v18, 0x7f0c008e

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 225
    new-instance v14, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 226
    .local v14, "et":Landroid/widget/EditText;
    new-instance v16, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;Landroid/widget/EditText;)V

    .line 242
    .local v16, "mDialogOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lmiui/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .local v12, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v12, v14}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f10007a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f1002a0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100108

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v12}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v13

    .line 248
    .local v13, "dialog":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;Landroid/app/Dialog;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v18, 0x7f0c00a2

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeviceIdSectionView:Landroid/view/View;

    .line 261
    const v18, 0x7f0c0090

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    .line 262
    const v18, 0x7f0c008d

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/kingsoft/email/view/CertificateSelector;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSettingsMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 276
    :goto_0
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100081

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100082

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100083

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100084

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100085

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->type_recv:[Ljava/lang/String;

    .line 283
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x9

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->type_recv_value:[Ljava/lang/String;

    .line 290
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100077

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100075

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delete_policy:[Ljava/lang/String;

    .line 292
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->delect_policy_value:[Ljava/lang/String;

    .line 294
    new-instance v18, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const-string/jumbo v19, "0123456789"

    invoke-static/range {v19 .. v19}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 322
    return-object v17

    .line 270
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 726
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->updateData(I)V

    .line 727
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 732
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 733
    return-void
.end method

.method public onDestroyView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 678
    :cond_0
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    .line 679
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    .line 681
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 684
    :cond_1
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    .line 685
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 688
    :cond_2
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    .line 689
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 690
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 691
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 693
    :cond_3
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServerView:Landroid/widget/EditText;

    .line 694
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 695
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mValidationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 697
    :cond_4
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPortView:Landroid/widget/EditText;

    .line 698
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    .line 701
    :cond_5
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSecurityType:Landroid/widget/Spinner;

    .line 702
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeletePolicy:Landroid/widget/Spinner;

    .line 703
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 704
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeviceIdSectionView:Landroid/view/View;

    .line 705
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mImapPathPrefixView:Landroid/widget/TextView;

    .line 706
    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    .line 712
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    .line 713
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->left:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->right:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_6
    :goto_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onDestroyView()V

    .line 719
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNext()V
    .locals 9

    .prologue
    .line 1108
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v7}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1109
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1112
    .local v2, "emailAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 1113
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mUserEmailView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1114
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDomainView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1120
    .end local v1    # "domain":Ljava/lang/String;
    :cond_0
    move-object v5, v4

    .line 1121
    .local v5, "userName":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1124
    .local v6, "userPassword":Ljava/lang/String;
    invoke-direct {p0, v0, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->setIncoming(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 1126
    .local v3, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    invoke-direct {p0, v0, v5, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->setOutgoing(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mCallback:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v8, 0x3

    invoke-interface {v7, v8, p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V

    .line 1129
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->clearButtonBounce()V

    .line 1132
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    if-eqz v7, :cond_1

    .line 1134
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .end local v5    # "userName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v7, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->populateSetupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_1
    return-void

    .restart local v5    # "userName":Ljava/lang/String;
    :cond_2
    move-object v5, v2

    .line 1134
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 651
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 652
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 654
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 655
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 624
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onResume"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 627
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 629
    :try_start_0
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->setViewParent:Z

    if-nez v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->right:I

    .line 636
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->left:I

    .line 637
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 638
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string/jumbo v1, "#efeff1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->setViewParent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_1
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 737
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 738
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onSaveInstanceState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 741
    :cond_0
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 743
    const-string/jumbo v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string/jumbo v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 515
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 516
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mStarted:Z

    .line 520
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->configureEditor()V

    .line 521
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v0, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->loadSettings()V

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 527
    return-void

    .line 524
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->loadProviderSettings()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    sget-boolean v0, Lcom/kingsoft/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccountSetupIncomingFragment onStop"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 666
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 667
    iput-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mStarted:Z

    .line 668
    return-void
.end method

.method public onUseSslChanged(Z)V
    .locals 4
    .param p1, "useSsl"    # Z

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v2, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerCerts:Z

    if-eqz v2, :cond_0

    .line 1025
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1026
    .local v1, "mode":I
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mClientCertificateSelector:Lcom/kingsoft/email/view/CertificateSelector;

    invoke-virtual {v2, v1}, Lcom/kingsoft/email/view/CertificateSelector;->setVisibility(I)V

    .line 1027
    const-string/jumbo v0, ""

    .line 1029
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/kingsoft/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1033
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c00a3

    invoke-static {v2, v3}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mDeviceIdSectionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "mode":I
    :cond_0
    return-void

    .line 1025
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 1030
    .restart local v0    # "deviceId":Ljava/lang/String;
    .restart local v1    # "mode":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1063
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1064
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1068
    :cond_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_1

    .line 1069
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/kingsoft/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 1084
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 7

    .prologue
    .line 1092
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1093
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 1094
    .local v1, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 1098
    .local v2, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v6, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1101
    return-void
.end method

.method public setCallback(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;

    .prologue
    .line 753
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 754
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->configureEditor()V

    .line 756
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServerFragment;->loadSettings()V

    .line 758
    :cond_0
    return-void
.end method
