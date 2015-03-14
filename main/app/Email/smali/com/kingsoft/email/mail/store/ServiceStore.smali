.class public Lcom/kingsoft/email/mail/store/ServiceStore;
.super Lcom/kingsoft/email/mail/Store;
.source "ServiceStore.java"


# instance fields
.field protected final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 1
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingsoft/email/mail/Store;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 43
    return-void
.end method

.method private getService()Lcom/android/emailcommon/service/IEmailService;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;
    .locals 1
    .param p0, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/kingsoft/email/mail/store/ServiceStore;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/mail/store/ServiceStore;-><init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ServiceStore;->getService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ServiceStore;->getService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    .line 66
    .local v2, "svc":Lcom/android/emailcommon/service/IEmailService;
    instance-of v3, v2, Lcom/android/emailcommon/service/EmailServiceProxy;

    if-eqz v3, :cond_0

    .line 67
    move-object v0, v2

    check-cast v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    move-object v3, v0

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-interface {v2, v3}, Lcom/android/emailcommon/service/IEmailService;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 70
    .end local v2    # "svc":Lcom/android/emailcommon/service/IEmailService;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v4, "Call to validate generated an exception"

    invoke-direct {v3, v4, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
