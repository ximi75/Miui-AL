.class public Lcom/kingsoft/email/activity/ChangePWAlertActivity;
.super Lcom/kingsoft/mail/ui/BaseActivity;
.source "ChangePWAlertActivity.java"

# interfaces
.implements Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
.implements Lcom/kingsoft/email/activity/setup/SetupData$SetupDataContainer;


# static fields
.field private static final EXTRA_LOGIN_ACCOUNT_ID:Ljava/lang/String; = "AccountSettings.accountid"

.field public static final EXTRA_LOGIN_WARNING_FOR_ACCOUNT:Ljava/lang/String; = "AccountSettings.for_account"

.field public static final EXTRA_LOGIN_WARNING_REASON_FOR_ACCOUNT:Ljava/lang/String; = "AccountSettings.for_account_reason"

.field public static final SHOW_CHANGE_PW_DIALOG:Ljava/lang/String; = "show_change_pw_dialog"

.field private static final TAG:Ljava/lang/String; = "ChangePWAlertActivity"


# instance fields
.field private isChecking:Z

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field mContext:Landroid/content/Context;

.field mDisplayName:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mPasswordView:Landroid/widget/EditText;

.field mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

.field mShowPasswordImageButton:Landroid/widget/ImageButton;

.field nextBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/BaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->isChecking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kingsoft/email/activity/ChangePWAlertActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/ChangePWAlertActivity;ZLandroid/content/DialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->setDialogCloseable(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->isChecking:Z

    return v0
.end method

.method public static actionCPWA(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acc"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email/activity/ChangePWAlertActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountSettings.for_account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    const-string/jumbo v2, "AccountSettings.for_account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v2, "AccountSettings.for_account_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    return-object v1
.end method

.method public static actionMailList(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acc"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email2/ui/MailActivityEmail;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountSettings.for_account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    const-string/jumbo v2, "AccountSettings.for_account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v2, "AccountSettings.for_account_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v2, "show_change_pw_dialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    return-object v1
.end method

.method private cancelNotify(J)V
    .locals 1
    .param p1, "accId"    # J

    .prologue
    .line 292
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v0

    .line 293
    .local v0, "nc":Lcom/kingsoft/email/NotificationController;
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 295
    return-void
.end method

.method private getContantViews(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "loginWarningAccount"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    .local v0, "flater":Landroid/view/LayoutInflater;
    const v2, 0x7f040039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 215
    .local v1, "ll":Landroid/widget/LinearLayout;
    const v2, 0x7f0c00fb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mDisplayName:Landroid/widget/TextView;

    .line 216
    const v2, 0x7f0c00fc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPasswordView:Landroid/widget/EditText;

    .line 217
    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mDisplayName:Landroid/widget/TextView;

    const v3, 0x7f100116

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-object v1
.end method

.method private popPWDlg()V
    .locals 10

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 229
    .local v4, "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "loginWarningAccount":Ljava/lang/String;
    const-string/jumbo v7, "AccountSettings.for_account_reason"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "loginWarningReason":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v0

    .line 234
    .local v0, "accountid":J
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v2, "builder":Lmiui/app/AlertDialog$Builder;
    const v7, 0x7f1003d7

    invoke-virtual {v2, v7}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f100107

    new-instance v9, Lcom/kingsoft/email/activity/ChangePWAlertActivity$2;

    invoke-direct {v9, p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity$2;-><init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)V

    invoke-virtual {v7, v8, v9}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 245
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getContantViews(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 246
    const v7, 0x7f10029f

    new-instance v8, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;

    invoke-direct {v8, p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity$3;-><init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)V

    invoke-virtual {v2, v7, v8}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    .line 261
    .local v3, "dialog":Lmiui/app/AlertDialog;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    new-instance v7, Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;

    invoke-direct {v7, p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity$4;-><init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;)V

    invoke-virtual {v3, v7}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 270
    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    .line 271
    iget-object v7, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->cancelNotify(J)V

    .line 274
    return-void
.end method

.method private setDialogCloseable(ZLandroid/content/DialogInterface;)V
    .locals 4
    .param p1, "canClose"    # Z
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mShowing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 278
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz p1, :cond_0

    .line 279
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 280
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 282
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkLogin(Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_0

    .line 96
    const v5, 0x7f1002bd

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 100
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/emailcommon/provider/Account;->setEmailAddress(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 103
    new-instance v5, Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p1}, Lcom/kingsoft/email/activity/setup/SetupData;-><init>(ILcom/android/emailcommon/provider/Account;)V

    iput-object v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 104
    new-instance v1, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v1}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 105
    .local v1, "f":Landroid/app/Fragment;
    const/4 v5, 0x1

    invoke-virtual {v1, v1, v5}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 106
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->getArgs(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 108
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 109
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v5, "TAG"

    invoke-virtual {v4, v1, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 110
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 111
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->isChecking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error while trying to invoke store settings."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSetupData()Lcom/kingsoft/email/activity/setup/SetupData;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    return-object v0
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 87
    return-void
.end method

.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 7
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 120
    if-nez p1, :cond_3

    .line 121
    invoke-virtual {p2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 122
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 123
    .local v3, "recvHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 124
    .local v4, "sendHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v3, :cond_0

    .line 125
    iget-object v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 127
    :cond_0
    if-eqz v4, :cond_1

    .line 128
    iget-object v5, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mPassword:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 130
    :cond_1
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/kingsoft/email/activity/ChangePWAlertActivity$1;-><init>(Lcom/kingsoft/email/activity/ChangePWAlertActivity;Lcom/android/emailcommon/provider/HostAuth;Lcom/android/emailcommon/provider/HostAuth;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 141
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v5, v6}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v2

    .line 146
    .local v2, "proxy":Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_start_0
    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v2, v5, v6}, Lcom/android/emailcommon/service/EmailServiceProxy;->updateFolderList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->finish()V

    .line 157
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v2    # "proxy":Lcom/android/emailcommon/service/EmailServiceProxy;
    .end local v3    # "recvHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v4    # "sendHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_2
    :goto_1
    return-void

    .line 147
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v2    # "proxy":Lcom/android/emailcommon/service/EmailServiceProxy;
    .restart local v3    # "recvHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4    # "sendHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "proxy":Lcom/android/emailcommon/service/EmailServiceProxy;
    .end local v3    # "recvHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    .end local v4    # "sendHostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_3
    const/4 v5, 0x1

    if-ne v5, p1, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->popPWDlg()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    iput-object p0, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mContext:Landroid/content/Context;

    .line 189
    const v2, 0x7f04002d

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->setContentView(I)V

    .line 190
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "AccountSettings.for_account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "AccountSettings.for_account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Account;

    iput-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 193
    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 195
    iget-object v2, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 196
    invoke-direct {p0}, Lcom/kingsoft/email/activity/ChangePWAlertActivity;->popPWDlg()V

    .line 198
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onPause()V

    .line 209
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onPause(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/kingsoft/mail/ui/BaseActivity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onResume(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public setSetupData(Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 0
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 305
    return-void
.end method
