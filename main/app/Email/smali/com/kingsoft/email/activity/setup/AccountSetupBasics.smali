.class public Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
.super Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
.implements Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask$CheckAccountResult;
.implements Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;
.implements Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;,
        Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_ACCOUNT:Ljava/lang/String; = "com.android.email.CREATE_ACCOUNT"

.field private static final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

.field private static final ENTER_DEBUG_SCREEN:Z = false

.field private static final EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String; = "INCOMING"

.field private static final EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field private static final EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String; = "USER"

.field private static final EXTRA_FLOW_ACCOUNT_TYPE:Ljava/lang/String; = "FLOW_ACCOUNT_TYPE"

.field private static final EXTRA_FLOW_MODE:Ljava/lang/String; = "FLOW_MODE"

.field private static final REQUEST_SECURITY:I = 0x0

.field private static final STATE_KEY_PROVIDER:Ljava/lang/String; = "AccountSetupBasics.provider"

.field public static isExchange:Z

.field public static isfirstClick:Z

.field public static loginStack:I

.field public static tv_error:Landroid/widget/TextView;


# instance fields
.field private accountType:Landroid/widget/Spinner;

.field private accountTypeUi:Landroid/view/ViewGroup;

.field private accountTypeUiTxt:Landroid/widget/TextView;

.field private fromSettingsFlag:Z

.field private haveSelected:Z

.field private info:Lcom/kingsoft/email/data/AccountInfo;

.field mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

.field mAccountSettingCheckTask:Lcom/kingsoft/email/activity/setup/AccountSettingCheckTask;

.field private mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

.field private mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

.field mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

.field private final mEmailValidator:Lcom/kingsoft/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/AutoCompleteTextView;

.field mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonInhibit:Z

.field mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOwnerLookupCallable:Ljava/util/concurrent/Callable;
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

.field private mPaused:Z

.field public mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field public mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field private mReportAccountAuthenticatorError:Z

.field mScrollView:Landroid/widget/ScrollView;

.field private mShowPasswordImageButton:Landroid/widget/ImageButton;

.field private mSysAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mscrollViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private securityTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private securityTypesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/kingsoft/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    .line 152
    sput-boolean v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    .line 159
    sput-boolean v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isExchange:Z

    .line 273
    sput v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/kingsoft/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/kingsoft/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/kingsoft/email/EmailAddressValidator;

    .line 145
    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->fromSettingsFlag:Z

    .line 167
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUi:Landroid/view/ViewGroup;

    .line 168
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    .line 170
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;

    .line 171
    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    .line 873
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$7;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 1557
    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFirstProviderByProtocal(I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->validateFields()V

    return-void
.end method

.method static synthetic access$602(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Lcom/kingsoft/email/data/AccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.setupdata"

    new-instance v2, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILcom/android/emailcommon/provider/Account;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .locals 4
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 230
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.setupdata"

    new-instance v2, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public static actionAccountCreateFinishedWithResult(Landroid/app/Activity;)V
    .locals 4
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 248
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.setupdata"

    new-instance v2, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public static actionGetCreateAccountIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountManagerType"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "FLOW_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "FLOW_ACCOUNT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    return-object v0
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "FLOW_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public static actionNewAccount4Result(Landroid/app/Activity;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "FLOW_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method public static actionNewAccountWithResult(Landroid/app/Activity;)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;

    .prologue
    .line 196
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "FLOW_MODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static actionNewAccountWithResult4Result(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "FLOW_MODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method private autoEmailAddressPrompt(Ljava/lang/String;)V
    .locals 21
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v20

    .line 746
    .local v20, "temList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string/jumbo v3, "@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    const-string/jumbo v3, "@"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 748
    .local v19, "pos":I
    if-nez v19, :cond_0

    .line 779
    .end local v19    # "pos":I
    :goto_0
    return-void

    .line 751
    .restart local v19    # "pos":I
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 752
    .local v18, "loginName":Ljava/lang/String;
    add-int/lit8 v3, v19, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 755
    .local v17, "loginDomain":Ljava/lang/String;
    new-instance v16, Lcom/kingsoft/email/provider/DataBaseHelper;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 756
    .local v16, "dataBaseHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/provider/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 757
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    const-string/jumbo v4, "domain_prompt_list"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "domain"

    aput-object v7, v5, v6

    const-string/jumbo v6, "domain like ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "num desc"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 761
    .local v15, "cursor":Landroid/database/Cursor;
    new-instance v13, Ljava/util/HashSet;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 762
    .local v13, "accountSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "domain"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 765
    .local v14, "address":Ljava/lang/String;
    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 767
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 770
    .end local v14    # "address":Ljava/lang/String;
    :cond_2
    if-eqz v15, :cond_3

    .line 771
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_3
    if-eqz v2, :cond_4

    .line 774
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 778
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "accountSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "dataBaseHelper":Lcom/kingsoft/email/provider/DataBaseHelper;
    .end local v17    # "loginDomain":Ljava/lang/String;
    .end local v18    # "loginName":Ljava/lang/String;
    .end local v19    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private autoSystemAccountPrompt(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 721
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 722
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 723
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    .end local v0    # "account":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 739
    :cond_2
    :goto_1
    return-void

    .line 729
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;

    invoke-direct {v3, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$6;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private createAccountType()V
    .locals 3

    .prologue
    .line 1560
    const v0, 0x7f0c0066

    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUi:Landroid/view/ViewGroup;

    .line 1562
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUi:Landroid/view/ViewGroup;

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    .line 1563
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUi:Landroid/view/ViewGroup;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$8;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1570
    const v0, 0x7f0c006a

    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    .line 1572
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->initSecurityTypes()V

    .line 1573
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;

    .line 1575
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1577
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1579
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$9;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1596
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    const v1, 0x7f100168

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    return-void
.end method

.method private static createStatisticsStack(Z)V
    .locals 1
    .param p0, "fromSettingsFlag"    # Z

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    const/4 v0, 0x1

    sput v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    goto :goto_0
.end method

.method private forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "incoming"    # Ljava/lang/String;
    .param p4, "outgoing"    # Ljava/lang/String;

    .prologue
    .line 1235
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1237
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 1238
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v2, p3}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 1241
    .local v3, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    invoke-static {v3, p4}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 1243
    invoke-direct {p0, p2, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v2    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v3    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/net/URISyntaxException;
    const v4, 0x7f1000b4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getAccountType(Ljava/lang/String;)I
    .locals 1
    .param p0, "protocal"    # Ljava/lang/String;

    .prologue
    .line 1695
    const-string/jumbo v0, "eas"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    const/4 v0, 0x0

    .line 1702
    :goto_0
    return v0

    .line 1697
    :cond_0
    const-string/jumbo v0, "pop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    const/4 v0, 0x1

    goto :goto_0

    .line 1699
    :cond_1
    const-string/jumbo v0, "imap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    const/4 v0, 0x2

    goto :goto_0

    .line 1702
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1547
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1548
    .local v2, "email":Ljava/lang/String;
    const-string/jumbo v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1549
    .local v3, "emailParts":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1552
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "emailParts":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getFirstProviderByProtocal(I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 3
    .param p1, "protocal"    # I

    .prologue
    const/4 v1, 0x0

    .line 1678
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1691
    :cond_0
    :goto_0
    return-object v0

    .line 1681
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 1686
    .local v0, "temp":Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    :cond_3
    iget v2, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I

    if-eq p1, v2, :cond_0

    .line 1689
    iget-object v0, v0, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->next:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 1690
    if-nez v0, :cond_3

    move-object v0, v1

    .line 1691
    goto :goto_0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :goto_0
    return-object v1

    .line 863
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v1, v2

    .line 864
    goto :goto_0

    .line 865
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    move-object v1, v2

    .line 866
    goto :goto_0
.end method

.method private getProtocalString(I)Ljava/lang/String;
    .locals 1
    .param p1, "protocaltype"    # I

    .prologue
    const v0, 0x7f100305

    .line 1666
    packed-switch p1, :pswitch_data_0

    .line 1674
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1668
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1670
    :pswitch_1
    const v0, 0x7f100303

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1672
    :pswitch_2
    const v0, 0x7f100302

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1424
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1429
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    new-instance v7, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v6, :cond_0

    .line 1437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1440
    :cond_0
    return-object v7

    .line 1433
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 1436
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private hidSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1629
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1630
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1632
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1634
    :cond_0
    return-void
.end method

.method private initSecurityTypes()V
    .locals 4

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100167

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100166

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    new-instance v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100165

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1446
    if-eqz p0, :cond_0

    .line 1447
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1449
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1451
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1452
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 1455
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static linkLogin(ZI)V
    .locals 1
    .param p0, "mSettingsMode"    # Z
    .param p1, "flag"    # I

    .prologue
    .line 290
    if-nez p0, :cond_0

    sget v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    if-eqz v0, :cond_0

    .line 291
    sput p1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    .line 294
    :cond_0
    return-void
.end method

.method private login(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1136
    new-instance v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1138
    return-void
.end method

.method private onEnableProceedButtons(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1305
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1312
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUi:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1313
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1314
    return-void
.end method

.method private onNext()V
    .locals 6

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->hidSoftInput()V

    .line 1109
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1110
    invoke-static {}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;->newInstance()Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;

    move-result-object v0

    .line 1112
    .local v0, "dialogFragment":Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "NetCheckDialogFragment"

    invoke-virtual {v0, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1130
    .end local v0    # "dialogFragment":Lcom/kingsoft/email/activity/setup/AccountSetupBasics$NetCheckDialogFragment;
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "email":Ljava/lang/String;
    const-string/jumbo v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, "emailParts":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->shouldShowConfigDialog(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1123
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->showGetConfigDialog()V

    .line 1124
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    invoke-virtual {v4, v1}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->excute(Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :cond_1
    invoke-direct {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->login(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "senderName"    # Ljava/lang/String;
    .param p2, "senderEmail"    # Ljava/lang/String;

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1272
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 1275
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 1276
    return-void
.end method

.method private setActionBar4SetUpBasic()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1637
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 1638
    .local v0, "actionBar":Landroid/app/ActionBar;
    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1639
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04002a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1642
    .local v2, "mActionBarView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1644
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1648
    .local v1, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1651
    const/16 v3, 0x12

    .line 1652
    .local v3, "mask":I
    const/16 v5, 0x10

    const/16 v6, 0x12

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1654
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 1655
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1663
    .end local v1    # "lp":Landroid/app/ActionBar$LayoutParams;
    .end local v2    # "mActionBarView":Landroid/view/ViewGroup;
    .end local v3    # "mask":I
    :cond_0
    :goto_0
    return-void

    .line 1658
    :cond_1
    const/16 v3, 0x1e

    .line 1659
    .restart local v3    # "mask":I
    const/16 v4, 0xc

    .line 1660
    .local v4, "option":I
    const/16 v5, 0xc

    const/16 v6, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1661
    const v5, 0x7f100058

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private setDefaultItemsText()V
    .locals 2

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const v1, 0x7f100167

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 1600
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const v1, 0x7f100166

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 1601
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    const v1, 0x7f100165

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 1602
    return-void
.end method

.method static setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 1255
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 1256
    .local v1, "protocol":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_2

    .line 1265
    :cond_0
    :goto_1
    return-void

    .line 1255
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    goto :goto_0

    .line 1258
    .restart local v1    # "protocol":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 1260
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultSyncInterval:I

    iput v2, p1, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 1261
    iget v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLookback:I

    iput v2, p1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 1262
    iget-boolean v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLocalDeletes:Z

    if-eqz v2, :cond_0

    .line 1263
    iget v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->defaultLocalDeletes:I

    invoke-virtual {p1, v2}, Lcom/android/emailcommon/provider/Account;->setDeletePolicy(I)V

    goto :goto_1
.end method

.method private showGetConfigDialog()V
    .locals 3

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    if-nez v0, :cond_0

    .line 1822
    invoke-static {}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->newInstance()Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "GettingSetupDataDialog"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1826
    return-void
.end method

.method private typeChanged()V
    .locals 7

    .prologue
    .line 1508
    const/4 v1, -0x1

    .line 1509
    .local v1, "index":I
    const v3, 0x7f100167

    .line 1511
    .local v3, "typeid":I
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v4, v4, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->accountType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 1543
    :goto_0
    return-void

    .line 1513
    :pswitch_0
    const/4 v1, 0x0

    .line 1514
    const v3, 0x7f100167

    .line 1530
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setDefaultItemsText()V

    .line 1531
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->securityTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    iget-object v5, v5, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f100164

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 1533
    iget-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    if-eqz v4, :cond_0

    .line 1534
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    .line 1536
    .local v2, "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/kingsoft/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v4, v2, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFirstProviderByProtocal(I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    goto :goto_0

    .line 1517
    .end local v2    # "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    :pswitch_1
    const/4 v1, 0x1

    .line 1518
    const v3, 0x7f100166

    .line 1519
    goto :goto_1

    .line 1521
    :pswitch_2
    const/4 v1, 0x2

    .line 1522
    const v3, 0x7f100165

    .line 1523
    goto :goto_1

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 1539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f100168

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 1511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateData(I)V
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 296
    sget v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginStack:I

    if-ne v0, p0, :cond_0

    .line 297
    const-string/jumbo v0, "L1"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method private validateFields()V
    .locals 3

    .prologue
    .line 847
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/kingsoft/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 851
    .local v0, "valid":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 854
    return-void

    .line 847
    .end local v0    # "valid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 817
    const-string/jumbo v2, "@*#12321#*"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 819
    .local v0, "debug":Landroid/content/Intent;
    const-string/jumbo v2, "com.kingsoft.email.statistics.KingsoftAgentDebugActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->startActivity(Landroid/content/Intent;)V

    .line 830
    .end local v0    # "debug":Landroid/content/Intent;
    :goto_0
    return-void

    .line 824
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->loginValidbyHua()V

    .line 825
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->requestPrompt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public appendDomainPostfix(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "domainName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 622
    :goto_0
    return v1

    .line 617
    :cond_0
    const-string/jumbo v2, "ksdomain"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_1

    const-string/jumbo v2, "exchange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 621
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 837
    return-void
.end method

.method public doDelayPrompt(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 982
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "curEmail":Ljava/lang/String;
    const-string/jumbo v10, "@"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    const-string/jumbo v10, "@"

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 985
    .local v5, "pos":I
    if-eqz v5, :cond_0

    .line 987
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "curDomain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 991
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v10}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v8

    .line 992
    .local v8, "temList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sget v11, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-ge v10, v11, :cond_0

    .line 994
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 995
    .local v9, "temSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "curName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 998
    .local v4, "isDatasetChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 999
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1000
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 998
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, "sNet":Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1003
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    const/4 v4, 0x1

    .line 1005
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sget v11, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-lt v10, v11, :cond_2

    .line 1008
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "sNet":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1009
    if-eqz v4, :cond_0

    .line 1010
    iget-object v10, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v10}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public doPrompt(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p1, "promptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->getMList()Ljava/util/List;

    move-result-object v2

    .line 953
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 955
    .local v1, "isDatasetChanged":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 956
    const/4 v1, 0x1

    .line 967
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 968
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 969
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 970
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 958
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 959
    .local v4, "temSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 960
    .restart local v3    # "s":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 961
    const/4 v1, 0x1

    .line 962
    goto :goto_0

    .line 972
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "temSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v5}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    .line 978
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 664
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 667
    .local v0, "authenticatorResponse":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 668
    const/4 v1, 0x4

    const-string/jumbo v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 673
    .end local v0    # "authenticatorResponse":Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->finish()V

    .line 674
    return-void
.end method

.method public finishActivity()V
    .locals 5

    .prologue
    .line 1394
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 1395
    .local v1, "account1":Lcom/android/emailcommon/provider/Account;
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getUIAccount(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastViewedAccount(Ljava/lang/String;)V

    .line 1400
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountInf()Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1401
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountInf()Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getmUiAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/data/AccountInfo;->changeAccountCallBack(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    .line 1403
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountInf(Lcom/kingsoft/email/data/AccountInfo;)V

    .line 1405
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1406
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedWithResult(Landroid/app/Activity;)V

    .line 1419
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    .line 1420
    return-void

    .line 1407
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1408
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_0

    .line 1410
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1411
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_1

    .line 1412
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 1415
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setResult(I)V

    goto :goto_0
.end method

.method public finishAutoSetup()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 899
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 903
    .local v4, "password":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-virtual {v7, v2}, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->expandTemplates(Ljava/lang/String;)V

    .line 905
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v7}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 906
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 907
    .local v5, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 909
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->recvPort:I

    iput v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 911
    iget v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    if-nez v7, :cond_0

    .line 912
    iget-object v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v3

    .line 914
    .local v3, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->portSsl:I

    :goto_0
    iput v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mPort:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 918
    .end local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->from:I

    iput v7, v5, Lcom/android/emailcommon/provider/HostAuth;->from:I

    .line 923
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v6

    .line 924
    .local v6, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/provider/HostAuth;->setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V

    .line 925
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    if-eqz v7, :cond_1

    .line 927
    iget-object v7, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget v7, v7, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->sendPort:I

    iput v7, v6, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 929
    :cond_1
    iget v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    iput v7, v6, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I

    .line 930
    iget v7, v5, Lcom/android/emailcommon/provider/HostAuth;->from:I

    iput v7, v6, Lcom/android/emailcommon/provider/HostAuth;->from:I

    .line 935
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v7, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    const/4 v8, 0x1

    invoke-direct {v7, p0, p0, v2, v8}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v7, v8, v9}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 948
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v5    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v6    # "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    :goto_2
    return-void

    .line 914
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .restart local v5    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_2
    iget v7, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->port:I

    goto :goto_0

    .line 919
    .end local v3    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, -0x1

    iput v7, v5, Lcom/android/emailcommon/provider/HostAuth;->mConfigId:I
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 938
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    :catch_1
    move-exception v1

    .line 946
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p0, v10}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_2
.end method

.method public loginValidbyHua()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 781
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v1

    .line 783
    .local v1, "isValid":Z
    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddressHalf(Ljava/lang/String;)Z

    move-result v2

    .line 784
    .local v2, "isValidHalf":Z
    const/4 v3, -0x1

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 785
    const/4 v1, 0x0

    .line 787
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/kingsoft/email/EmailAddressValidator;

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    .line 788
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->isPerformingCompletion()Z

    move-result v3

    if-nez v3, :cond_1

    .line 789
    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->autoSystemAccountPrompt(Ljava/lang/String;)V

    .line 791
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    .line 792
    :cond_2
    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->autoEmailAddressPrompt(Ljava/lang/String;)V

    .line 794
    if-eqz v1, :cond_4

    .line 795
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 797
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 811
    :goto_0
    return-void

    .line 799
    :cond_3
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    goto :goto_0

    .line 803
    :cond_4
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    goto :goto_0

    .line 806
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 807
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;->notifyDataSetChanged()V

    .line 809
    :cond_6
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1372
    if-nez p1, :cond_0

    .line 1373
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finishActivity()V

    .line 1377
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1378
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCallBack(Ljava/lang/String;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V
    .locals 6
    .param p1, "domin"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .prologue
    .line 1709
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1711
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 1713
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 1714
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-eqz v3, :cond_3

    .line 1715
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->typeChanged()V

    .line 1722
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1725
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mGettingSetupDataDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$GettingSetupDataDialog;->dismissAllowingStateLoss()V

    .line 1726
    const/4 v2, -0x1

    .line 1727
    .local v2, "type":I
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    if-eqz v3, :cond_4

    .line 1728
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    iget-object v3, v3, Lcom/kingsoft/email/data/AccountInfo;->protocal:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getAccountType(Ljava/lang/String;)I

    move-result v2

    .line 1734
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFirstProviderByProtocal(I)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 1735
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    .local v0, "email":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->login(Ljava/lang/String;)V

    .line 1739
    .end local v0    # "email":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_2
    return-void

    .line 1716
    :cond_3
    iget-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    if-nez v3, :cond_0

    .line 1718
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountTypeUiTxt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f100168

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f100167

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->typeChanged()V

    goto :goto_0

    .line 1729
    .restart local v2    # "type":I
    :cond_4
    iget-boolean v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->haveSelected:Z

    if-eqz v3, :cond_1

    .line 1730
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    .line 1732
    .local v1, "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    iget-object v3, v1, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 1290
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 1291
    if-nez p1, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 1296
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 692
    :pswitch_0
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onNext()V

    .line 696
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    goto :goto_0

    .line 701
    :pswitch_1
    sget-object v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->tv_error:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x7f0c0068
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 645
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 646
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 303
    invoke-super/range {p0 .. p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 305
    sget-object v19, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setActionBar4SetUpBasic()V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 313
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "action":Ljava/lang/String;
    const-string/jumbo v19, "com.android.email.CREATE_ACCOUNT"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/ServiceProxy;->getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 317
    new-instance v19, Lcom/kingsoft/email/activity/setup/SetupData;

    const/16 v20, 0x4

    invoke-direct/range {v19 .. v20}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 327
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v9

    .line 328
    .local v9, "flowMode":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    .line 600
    :cond_1
    :goto_1
    return-void

    .line 319
    .end local v9    # "flowMode":I
    :cond_2
    const-string/jumbo v19, "FLOW_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 321
    .local v13, "intentFlowMode":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    .line 322
    new-instance v19, Lcom/kingsoft/email/activity/setup/SetupData;

    const-string/jumbo v20, "FLOW_ACCOUNT_TYPE"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    goto :goto_0

    .line 332
    .end local v13    # "intentFlowMode":I
    .restart local v9    # "flowMode":I
    :cond_3
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    .line 333
    sget-object v19, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v19

    if-lez v19, :cond_4

    .line 334
    const/16 v19, 0x1

    sput-boolean v19, Lcom/kingsoft/mail/ui/AbstractActivityController;->onReStartClearState:Z

    .line 335
    const/16 v19, 0x1

    sput-boolean v19, Lcom/kingsoft/mail/ui/AbstractActivityController;->isResultOk:Z

    .line 336
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setResult(I)V

    .line 340
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_1

    .line 338
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setResult(I)V

    goto :goto_2

    .line 342
    :cond_5
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v9, v0, :cond_6

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 344
    .local v3, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v3, :cond_6

    iget-wide v0, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_6

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_1

    .line 352
    .end local v3    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_6
    const v19, 0x7f04001c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->createAccountType()V

    .line 357
    const v19, 0x7f0c0063

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    .line 358
    new-instance v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$1;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mscrollViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mscrollViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 367
    new-instance v19, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;-><init>(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    .line 369
    new-instance v19, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;-><init>(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoDomainPrompt:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->startGetPrompt()V

    .line 373
    const v19, 0x7f0c006c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AutoCompleteTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 393
    new-instance v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$3;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 404
    new-instance v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$4;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 433
    const v19, 0x7f0c006d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 436
    new-instance v19, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAdapter:Lcom/kingsoft/email/activity/setup/EmailAddressAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics$5;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 456
    const v19, 0x7f0c0069

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 457
    const v19, 0x7f0c0068

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 464
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 466
    const v19, 0x7f0c006e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mShowPasswordImageButton:Landroid/widget/ImageButton;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mShowPasswordImageButton:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/kingsoft/email/listener/PWAutoHideListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/kingsoft/email/listener/PWAutoHideListener;-><init>(Landroid/widget/EditText;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v6

    .local v6, "arr$":[Lcom/kingsoft/mail/providers/Account;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v14, :cond_7

    aget-object v3, v6, v10

    .line 475
    .local v3, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 478
    .end local v3    # "account":Lcom/kingsoft/mail/providers/Account;
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 479
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->fromSettingsFlag:Z

    .line 483
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->fromSettingsFlag:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->createStatisticsStack(Z)V

    .line 484
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .local v6, "arr$":[Landroid/accounts/Account;
    array-length v14, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v14, :cond_a

    aget-object v3, v6, v10

    .line 486
    .local v3, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/kingsoft/email/EmailAddressValidator;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 481
    .end local v3    # "account":Landroid/accounts/Account;
    .local v6, "arr$":[Lcom/kingsoft/mail/providers/Account;
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->fromSettingsFlag:Z

    goto :goto_4

    .line 491
    .local v6, "arr$":[Landroid/accounts/Account;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSysAccounts:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 496
    const v19, 0x7f0c0065

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    sput-object v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->tv_error:Landroid/widget/TextView;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "accountAuthenticatorResponse"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/accounts/AccountAuthenticatorResponse;

    .line 506
    .local v7, "authenticatorResponse":Landroid/accounts/AccountAuthenticatorResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 507
    if-eqz v7, :cond_b

    .line 517
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 521
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 522
    .local v18, "userName":Ljava/lang/String;
    if-eqz v18, :cond_c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 526
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v16

    .line 527
    .local v16, "password":Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 533
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->appendDomainPostfix(Landroid/content/Intent;)Z

    move-result v19

    sput-boolean v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isExchange:Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 541
    sget-object v19, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v19

    if-nez v19, :cond_e

    .line 543
    sget-object v19, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "ERROR: Force account create only allowed while in test harness"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 548
    :cond_e
    const-string/jumbo v19, "EMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, "email":Ljava/lang/String;
    const-string/jumbo v19, "USER"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 552
    .local v17, "user":Ljava/lang/String;
    const-string/jumbo v19, "INCOMING"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 554
    .local v11, "incoming":Ljava/lang/String;
    const-string/jumbo v19, "OUTGOING"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 556
    .local v15, "outgoing":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 559
    :cond_f
    sget-object v19, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_1

    .line 565
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1, v11, v15}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    goto/16 :goto_1

    .line 572
    .end local v8    # "email":Ljava/lang/String;
    .end local v11    # "incoming":Ljava/lang/String;
    .end local v15    # "outgoing":Ljava/lang/String;
    .end local v17    # "user":Ljava/lang/String;
    :cond_11
    if-eqz p1, :cond_12

    const-string/jumbo v19, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 574
    const-string/jumbo v19, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 581
    :cond_12
    new-instance v19, Ljava/util/concurrent/FutureTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/email/data/AccountInfo;->createAccountInfoByIntent(Landroid/content/Intent;)Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kingsoft/email/data/AccountInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kingsoft/email/data/AccountInfo;->password:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->info:Lcom/kingsoft/email/data/AccountInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountInf(Lcom/kingsoft/email/data/AccountInfo;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    move-object/from16 v20, v0

    const-string/jumbo v19, "mUiAccount"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/kingsoft/mail/providers/Account;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/activity/setup/SetupData;->setmUiAccount(Lcom/kingsoft/mail/providers/Account;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getDomain()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->excute(Ljava/lang/String;)V

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->showGetConfigDialog()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1618
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 1619
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->updateData(I)V

    .line 1620
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->hidSoftInput()V

    .line 1622
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mscrollViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mscrollViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1626
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 712
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->finish()V

    .line 716
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onManualSetup(Z)V
    .locals 14
    .param p1, "allowAutoDiscover"    # Z

    .prologue
    .line 1150
    const-string/jumbo v11, "A14"

    invoke-static {v11}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onEvent(Ljava/lang/String;)V

    .line 1152
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, "email":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "password":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 1155
    .local v10, "user":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1156
    .local v1, "domain":Ljava/lang/String;
    const-string/jumbo v11, "@"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1157
    .local v3, "emailParts":[Ljava/lang/String;
    const/4 v11, 0x2

    array-length v12, v3

    if-ne v11, v12, :cond_0

    .line 1158
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1159
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :cond_0
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v11}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1175
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v7

    .line 1176
    .local v7, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iput-object v4, v7, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 1177
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v1, v12, v13}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1180
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 1182
    .local v8, "sendAuth":Lcom/android/emailcommon/provider/HostAuth;
    iput-object v4, v8, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 1183
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v1, v12, v13}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1186
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v11, p1}, Lcom/kingsoft/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 1190
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->accountType:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;

    .line 1192
    .local v9, "so":Lcom/kingsoft/email/activity/setup/SpinnerOption;
    iget-object v11, v9, Lcom/kingsoft/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1193
    .local v6, "protocaltype":I
    invoke-direct {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getProtocalString(I)Ljava/lang/String;

    move-result-object v5

    .line 1195
    .local v5, "protocal":Ljava/lang/String;
    iget-object v11, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p0, v11, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onProceedNext(Lcom/kingsoft/email/activity/setup/SetupData;Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 629
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 631
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    .line 632
    return-void
.end method

.method public onProceedNext(Lcom/kingsoft/email/activity/setup/SetupData;Ljava/lang/String;)V
    .locals 7
    .param p1, "mSetupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1200
    invoke-virtual {p1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1201
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 1202
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v6, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v2, p2, v3, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1204
    invoke-static {p0, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 1206
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    if-eqz v3, :cond_0

    .line 1207
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 1213
    :goto_0
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 1214
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-static {p0, p1, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Z)V

    .line 1216
    return-void

    .line 1209
    :cond_0
    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public onResult(Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    .locals 6
    .param p1, "setup"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "result"    # Lcom/kingsoft/emailcommon/mail/MessagingException;
    .param p3, "login_err_msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1744
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1747
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAccountCheckingDialog:Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/DuplicateAccountDialogFragment$AccountCheckSetupDataDialog;->dismissAllowingStateLoss()V

    .line 1748
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, "email":Ljava/lang/String;
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 1750
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    if-nez p2, :cond_1

    .line 1752
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p0, v5, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    .line 1804
    .end local v1    # "email":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1754
    .restart local v1    # "email":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 1755
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {p0, v5, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V

    goto :goto_0

    .line 1758
    :cond_2
    const v3, 0x7f10006d

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1759
    .local v2, "message":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1760
    invoke-static {p0, p2, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/activity/setup/SetupData;)Ljava/lang/String;

    move-result-object v2

    .line 1794
    :goto_1
    :try_start_0
    invoke-static {p0, p0, v2, p1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->newInstance(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;Ljava/lang/String;Lcom/kingsoft/email/activity/setup/SetupData;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;

    move-result-object v0

    .line 1795
    .local v0, "dialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "ErrorDialog"

    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1797
    .end local v0    # "dialog":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$MultiThreadErrorDialog;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1762
    :cond_3
    move-object v2, p3

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 636
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 637
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 639
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 682
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 652
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onStart()V

    .line 653
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    .line 654
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 844
    return-void
.end method

.method public shouldShowConfigDialog(Ljava/lang/String;)Z
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return v0

    .line 1810
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mProviderHead:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    iget-object v1, v1, Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1813
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->mAutoGetDominSetupData:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1817
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
