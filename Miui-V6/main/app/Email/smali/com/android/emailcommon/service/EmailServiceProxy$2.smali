.class Lcom/android/emailcommon/service/EmailServiceProxy$2;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->startSync(JZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$deltaMessageCount:I

.field final synthetic val$mailboxId:J

.field final synthetic val$userRequest:Z


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JZI)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$mailboxId:J

    iput-boolean p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$userRequest:Z

    iput p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$deltaMessageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    # getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$mailboxId:J

    iget-boolean v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$userRequest:Z

    iget v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$2;->val$deltaMessageCount:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZI)V

    .line 163
    return-void
.end method
