.class public Lcom/kingsoft/email/activity/setup/AccountSetupType;
.super Lcom/kingsoft/email/activity/setup/AccountSetupActivity;
.source "AccountSetupType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;
    }
.end annotation


# instance fields
.field private mButtonPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$002(Lcom/kingsoft/email/activity/setup/AccountSetupType;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupType;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/email/activity/setup/AccountSetupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AccountSetupType;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->onProceedNext()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V
    .locals 2
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "setupData"    # Lcom/kingsoft/email/activity/setup/SetupData;

    .prologue
    .line 54
    new-instance v0, Lcom/kingsoft/email/activity/setup/ForwardingIntent;

    const-class v1, Lcom/kingsoft/email/activity/setup/AccountSetupType;

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/activity/setup/ForwardingIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method private addProtocolItems()V
    .locals 9

    .prologue
    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "itemLayout":Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    .line 196
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;>;"
    const v6, 0x7f0c0062

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 197
    .local v5, "ll":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 198
    .local v1, "index":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 199
    .local v2, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040025

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "itemLayout":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 200
    .restart local v3    # "itemLayout":Landroid/view/ViewGroup;
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    if-nez v1, :cond_0

    .line 202
    const v6, 0x7f02020b

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 208
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 209
    iget-object v6, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 210
    const v6, 0x7f0c004a

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    .line 213
    goto :goto_0

    .line 203
    :cond_0
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    .line 204
    const v6, 0x7f02020e

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_1

    .line 206
    :cond_1
    const v6, 0x7f020211

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_1

    .line 214
    .end local v2    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_2
    return-void
.end method

.method private onProceedNext()V
    .locals 5

    .prologue
    .line 122
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 123
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 124
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 126
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 132
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 133
    invoke-static {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 134
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-static {p0, v3}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V

    .line 136
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->finish()V

    .line 137
    return-void

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static onProceedNext2(Lcom/kingsoft/email/activity/setup/SetupData;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "mSetupData"    # Lcom/kingsoft/email/activity/setup/SetupData;
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 223
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 224
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 226
    invoke-static {p1, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 228
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesAutodiscover:Z

    if-eqz v3, :cond_0

    .line 229
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    .line 234
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 235
    invoke-static {p1, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->setDefaultsForProtocol(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 236
    invoke-static {p1, p0}, Lcom/kingsoft/email/activity/setup/AccountSetupServer;->actionIncomingSettings(Landroid/app/Activity;Lcom/kingsoft/email/activity/setup/SetupData;)V

    .line 238
    return-void

    .line 231
    :cond_0
    iget-boolean v3, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->usesSmtp:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_1
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onSelect(Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v3}, Lcom/kingsoft/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 112
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 113
    .local v2, "recvAuth":Lcom/android/emailcommon/provider/HostAuth;
    iget-object v3, v2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget v4, v2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v5, v2, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 115
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v1

    .line 117
    .local v1, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v3, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;-><init>(Lcom/kingsoft/email/activity/setup/AccountSetupType;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupType$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    iget-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mButtonPressed:Z

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->onSelect(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->finish()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0c006f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/kingsoft/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/kingsoft/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 65
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowAccountType()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "accountType":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "matches":I
    const/4 v5, 0x0

    .line 71
    .local v5, "protocol":Ljava/lang/String;
    invoke-static {p0}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 73
    .local v2, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    iget-object v6, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    iget-object v5, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_1
    if-ne v3, v7, :cond_3

    .line 80
    invoke-direct {p0, v5}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->onSelect(Ljava/lang/String;)V

    .line 103
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "matches":I
    .end local v5    # "protocol":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 86
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getSelectedProtocal()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getSelectedProtocal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 87
    iget-object v6, p0, Lcom/kingsoft/email/activity/setup/AccountSetupType;->mSetupData:Lcom/kingsoft/email/activity/setup/SetupData;

    invoke-virtual {v6}, Lcom/kingsoft/email/activity/setup/SetupData;->getSelectedProtocal()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->onSelect(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_4
    const v6, 0x7f04001b

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->addProtocolItems()V

    .line 97
    const v6, 0x7f0c006f

    invoke-virtual {p0, v6}, Lcom/kingsoft/email/activity/setup/AccountSetupType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 98
    .local v4, "previousButton":Landroid/widget/Button;
    if-eqz v4, :cond_2

    .line 99
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
