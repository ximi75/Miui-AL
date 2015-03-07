.class Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;
.super Landroid/os/Handler;
.source "AutoDomainPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 350
    .local v2, "partDomain":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    # invokes: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->getDataFromNet(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v4, v2}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->access$400(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 352
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;

    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    iget-object v4, v4, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;-><init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;)V

    .line 353
    .local v1, "obj":Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;
    iput-object v2, v1, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->key:Ljava/lang/String;

    .line 354
    iput-object v3, v1, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->value:Ljava/util/ArrayList;

    .line 356
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "m":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread$1;->this$1:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;

    iget-object v4, v4, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$GetNetPromptThread;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mHandler1:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$600(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    return-void
.end method
