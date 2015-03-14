.class Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;
.super Landroid/os/Handler;
.source "AutoDomainPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;-><init>(Landroid/content/Context;Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;

    .line 64
    .local v0, "obj":Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$000(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$1;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;
    invoke-static {v1}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$100(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$MyMsg;->value:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;->doDelayPrompt(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    return-void
.end method
