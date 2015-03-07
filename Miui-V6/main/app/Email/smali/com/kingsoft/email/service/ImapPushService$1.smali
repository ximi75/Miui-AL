.class Lcom/kingsoft/email/service/ImapPushService$1;
.super Ljava/lang/Object;
.source "ImapPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapPushService;
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
    .line 85
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapPushService$1;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    :goto_0
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapPushService$1;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->threadFlag:Z
    invoke-static {v1}, Lcom/kingsoft/email/service/ImapPushService;->access$000(Lcom/kingsoft/email/service/ImapPushService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    const-string/jumbo v1, "IMAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "head beat, push folder size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/email/service/ImapPushService$1;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
