.class Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "AuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Authenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/AuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/service/AuthenticatorService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;->this$0:Lcom/kingsoft/email/service/AuthenticatorService;

    .line 51
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 62
    if-eqz p5, :cond_3

    const-string/jumbo v6, "password"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "username"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v6, "username"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, p0, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;->this$0:Lcom/kingsoft/email/service/AuthenticatorService;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string/jumbo v7, "password"

    invoke-virtual {p5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 70
    const-string/jumbo v6, "contacts"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    const-string/jumbo v6, "contacts"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 72
    .local v4, "syncContacts":Z
    const-string/jumbo v6, "com.android.contacts"

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v6, "com.android.contacts"

    invoke-static {v0, v6, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 78
    .end local v4    # "syncContacts":Z
    :cond_0
    const-string/jumbo v6, "calendar"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    const-string/jumbo v6, "calendar"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 80
    .local v3, "syncCalendar":Z
    const-string/jumbo v6, "com.android.calendar"

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v6, "com.android.calendar"

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 87
    .end local v3    # "syncCalendar":Z
    :cond_1
    const/4 v5, 0x0

    .line 88
    .local v5, "syncEmail":Z
    const-string/jumbo v6, "email"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "email"

    invoke-virtual {p5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    const/4 v5, 0x1

    .line 92
    :cond_2
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v6, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 93
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v6, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "authAccount"

    const-string/jumbo v7, "username"

    invoke-virtual {p5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v6, "accountType"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v5    # "syncEmail":Z
    :goto_0
    return-object v1

    .line 104
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    .restart local v1    # "b":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/kingsoft/email/service/AuthenticatorService$Authenticator;->this$0:Lcom/kingsoft/email/service/AuthenticatorService;

    invoke-static {v6, p2}, Lcom/kingsoft/email/activity/setup/AccountSetupBasics;->actionGetCreateAccountIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "accountAuthenticatorResponse"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v6, "intent"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
