.class Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;
.super Ljava/lang/Object;
.source "AutoGetDomainSetupData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->access$100(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    iget-object v0, v0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;
    invoke-static {v0}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;->access$100(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData;)Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->domain:Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->access$200(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->provider:Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;
    invoke-static {v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;->access$300(Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetDomainSetupDataThread;)Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/email/activity/setup/AutoGetDomainSetupData$GetdomainSetupDataCallBack;->onCallBack(Ljava/lang/String;Lcom/kingsoft/emailcommon/VendorPolicyLoader$Provider;)V

    .line 100
    :cond_0
    return-void
.end method
