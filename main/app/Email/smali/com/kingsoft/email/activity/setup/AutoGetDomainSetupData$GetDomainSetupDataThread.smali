.class public Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;
.super Ljava/lang/Thread;
.source "AutoGetDomainSetupData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetDomainSetupDataThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field isRunning:Z

.field private provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "con"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->isRunning:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->isRunning:Z

    .line 76
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->domain:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->context:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->domain:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/kingsoft/email/activity/setup/AccountSettingsUtils;->findProviderForDomainFromDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 84
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    if-nez v2, :cond_0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "domain"

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->domain:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHttpUtils:Lcom/kingsoft/email/statistics/KingSoftHttpUtils;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->access$000(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Lcom/kingsoft/email/statistics/KingSoftHttpUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/email/statistics/URLMap;->getFetchConfigUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->connected(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/email/statistics/KingSoftHttpUtils;->isErrRes(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->paraseJsonToPrividers(Ljava/lang/String;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    .line 94
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->access$400(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;

    invoke-direct {v3, p0}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;-><init>(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->isRunning:Z

    .line 104
    return-void
.end method
