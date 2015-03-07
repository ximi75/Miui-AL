.class Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;
.super Ljava/lang/Object;
.source "AutoDomainPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitPreNetReqRunnable"
.end annotation


# instance fields
.field private curKey:Ljava/lang/String;

.field private preKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkey"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->preKey:Ljava/lang/String;

    .line 314
    iput-object p3, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->curKey:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 318
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$000(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->preKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 319
    .local v2, "preCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->MAX_DATA_SIZE:I

    if-lt v4, v5, :cond_1

    .line 321
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->curKey:Ljava/lang/String;

    # invokes: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->requestNetPrompt(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$300(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "curCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, "tem":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->curKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    .end local v3    # "tem":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mNetCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$000(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->curKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v4, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->this$0:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;

    # getter for: Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->mCallBack:Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;
    invoke-static {v4}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;->access$100(Lcom/kingsoft/email/activity/setup/AutoDomainPrompt;)Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$WaitPreNetReqRunnable;->curKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/kingsoft/email/activity/setup/AutoDomainPrompt$RequestDomainPromptCallback;->doDelayPrompt(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
