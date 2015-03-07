.class Lcom/kingsoft/email/service/AccountService$1;
.super Lcom/android/emailcommon/service/IAccountService$Stub;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/AccountService;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/AccountService;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountColor(J)I
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    # getter for: Lcom/kingsoft/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/service/AccountService;->access$000(Lcom/kingsoft/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/ResourceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/email/ResourceHelper;->getAccountColor(J)I

    move-result v0

    return v0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    iget-object v2, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    # getter for: Lcom/kingsoft/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kingsoft/email/service/AccountService;->access$000(Lcom/kingsoft/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/kingsoft/emailcommon/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lcom/kingsoft/email/service/AccountService$1$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/service/AccountService$1$1;-><init>(Lcom/kingsoft/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 83
    iget-object v1, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    # getter for: Lcom/kingsoft/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/service/AccountService;->access$000(Lcom/kingsoft/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyLoginFailed(JLjava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    # getter for: Lcom/kingsoft/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/kingsoft/email/service/AccountService;->access$000(Lcom/kingsoft/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v0

    .line 46
    .local v0, "nc":Lcom/kingsoft/email/NotificationController;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingsoft/email/service/AccountService$1;->this$0:Lcom/kingsoft/email/service/AccountService;

    # getter for: Lcom/kingsoft/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/service/AccountService;->access$000(Lcom/kingsoft/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 52
    return-void
.end method

.method public reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "accountManagerType"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method
