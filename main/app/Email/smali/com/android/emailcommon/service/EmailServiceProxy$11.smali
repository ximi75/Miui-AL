.class Lcom/android/emailcommon/service/EmailServiceProxy$11;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->deleteAccountPIMData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$emailAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$emailAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    # getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$11;->val$emailAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(Ljava/lang/String;)V

    .line 379
    return-void
.end method
