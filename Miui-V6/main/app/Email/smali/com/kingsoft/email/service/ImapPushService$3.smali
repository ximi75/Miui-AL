.class Lcom/kingsoft/email/service/ImapPushService$3;
.super Ljava/lang/Object;
.source "ImapPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapPushService;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/ImapPushService;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/ImapPushService;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapPushService$3;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 288
    const-string/jumbo v4, "IMAP"

    const-string/jumbo v5, "reset()"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    iget-object v4, p0, Lcom/kingsoft/email/service/ImapPushService$3;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 290
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/service/ImapPushService$3;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .line 292
    .local v3, "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop()V

    goto :goto_0

    .line 296
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/email/service/ImapPushService$3;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 297
    iget-object v4, p0, Lcom/kingsoft/email/service/ImapPushService$3;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v4}, Lcom/kingsoft/email/service/ImapPushService;->stopSelf()V

    .line 298
    return-void
.end method
