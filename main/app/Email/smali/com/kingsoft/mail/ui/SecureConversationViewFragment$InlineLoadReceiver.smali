.class public Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecureConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InlineLoadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const-string/jumbo v5, "contentId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "contentId":Ljava/lang/String;
    const-string/jumbo v5, "contentUri"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "contentUri":Ljava/lang/String;
    const-string/jumbo v5, "messageKey"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 97
    .local v2, "messageKey":J
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->getMessage()Lcom/kingsoft/mail/browse/ConversationMessage;

    move-result-object v4

    .line 98
    .local v4, "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    if-eqz v4, :cond_0

    iget-wide v5, v4, Lcom/kingsoft/mail/browse/ConversationMessage;->id:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    .line 99
    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v5, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$400(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .end local v0    # "contentId":Ljava/lang/String;
    .end local v1    # "contentUri":Ljava/lang/String;
    .end local v2    # "messageKey":J
    .end local v4    # "msg":Lcom/kingsoft/mail/browse/ConversationMessage;
    :cond_0
    return-void
.end method
