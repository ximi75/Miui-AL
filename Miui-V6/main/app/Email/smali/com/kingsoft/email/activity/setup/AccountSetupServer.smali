.class public Lcom/kingsoft/email/activity/setup/AccountSetupServer;
.super Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.source "AccountSetupServer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;


# static fields
.field private static final STATE_STARTED_AUTODISCOVERY:Ljava/lang/String; = "AccountSetupExchange.StartedAutoDiscovery"

.field private static mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field static mSettingsModle:Z


# instance fields
.field mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z

.field private mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

.field private mStartedAutoDiscovery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSettingsModle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 2
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Z)V

    .line 57
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;Z)V
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p2, "provider"    # Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .param p3, "mSettingModle"    # Z

    .prologue
    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingsoft/email/activity/setup/AccountSetupServer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    sput-boolean p3, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSettingsModle:Z

    .line 64
    if-eqz p2, :cond_0

    .line 65
    sput-object p2, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "CONFIG_PROVIDER"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-string/jumbo v2, "com.android.email.setupdata"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method private initActionBar()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x1

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, "mActionBar":Landroid/app/ActionBar;
    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 131
    .local v2, "mOk":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10017c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 134
    .local v1, "mCancel":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 136
    .local v3, "mTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 139
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 142
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10013d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method private startAutoDiscover()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 206
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    .line 208
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 216
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v4, :cond_2

    move-object v2, v3

    .line 217
    .local v2, "username":Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v4, :cond_3

    move-object v1, v3

    .line 218
    .local v1, "password":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 219
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->onProceedNext(ILcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0

    .line 216
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "username":Ljava/lang/String;
    :cond_2
    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    goto :goto_1

    .line 217
    .restart local v2    # "username":Ljava/lang/String;
    :cond_3
    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public finishActivity()V
    .locals 5

    .prologue
    .line 304
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 305
    .local v1, "account1":Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_0

    .line 306
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getUIAccount(J)Lcom/kingsoft/mail/providers/Account;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastViewedAccount(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountInf()Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccountInf()Lcom/kingsoft/email/data/AccountInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v4}, Lcom/kingsoft/email/activity/setup/SetupData;->getmUiAccount()Lcom/kingsoft/mail/providers/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/data/AccountInfo;->changeAccountCallBack(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V

    .line 310
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setAccountInf(Lcom/kingsoft/email/data/AccountInfo;)V

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 313
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedWithResult(Landroid/app/Activity;)V

    .line 323
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finish()V

    .line 324
    return-void

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    invoke-static {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 318
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_2

    .line 319
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V

    .line 320
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupList;->actionAccountCreateFinished(Landroid/app/Activity;Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method

.method public getUIAccount(J)Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p1, "accountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uiaccount"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    .local v6, "accountCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v7, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .local v7, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    if-eqz v6, :cond_0

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_0
    return-object v7

    .line 334
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    goto :goto_0

    .line 337
    .end local v7    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 297
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 225
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 226
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finish()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0
.end method

.method public onCheckSettingsComplete(ILcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 282
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    .line 284
    if-nez p1, :cond_0

    .line 285
    sget-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSettingsModle:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->onBackPressed()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    sget-object v1, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mProvider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 156
    :sswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    .line 159
    :sswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    .line 160
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finish()V

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finish()V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_1
        0x102001a -> :sswitch_0
        0x7f0c01c6 -> :sswitch_2
        0x7f0c0229 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->initActionBar()V

    .line 79
    invoke-static {p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 80
    sget-object v1, Lcom/kingsoft/email/activity/setup/AccountSetupEng;->loginStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v1}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    iget-object v0, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 83
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 86
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    .line 91
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mFragment:Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1, p0}, Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 93
    const v1, 0x7f0c0068

    invoke-static {p0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mNextButton:Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0c006f

    invoke-static {p0, v1}, Lcom/kingsoft/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mServiceInfo:Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    iget-boolean v1, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string/jumbo v1, "AccountSetupExchange.StartedAutoDiscovery"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    .line 106
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    .line 108
    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    if-nez v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->startAutoDiscover()V

    .line 126
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 148
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mNextButtonEnabled:Z

    .line 272
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->isfirstClick:Z

    .line 178
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->finish()V

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onProceedNext(ILcom/kingsoft/email/activity/setup/AccountServerBaseFragment;)V
    .locals 4
    .param p1, "checkMode"    # I
    .param p2, "target"    # Lcom/kingsoft/email/activity/setup/AccountServerBaseFragment;

    .prologue
    .line 246
    invoke-static {p1, p2}, Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 248
    .local v0, "checkerFragment":Lcom/kingsoft/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 250
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "AccountCheckStgFrag"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 251
    const-string/jumbo v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 259
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 191
    const-string/jumbo v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    return-void
.end method
