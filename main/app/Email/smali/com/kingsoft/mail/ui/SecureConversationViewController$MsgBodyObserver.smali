.class Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Lcom/kingsoft/email/EmailApplication$BodyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgBodyObserver"
.end annotation


# instance fields
.field public mMessageKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->mMessageKey:Ljava/lang/String;

    return-object v0
.end method

.method public notifyChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1515
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mchgHandler:Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;

    invoke-virtual {v4, v7}, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$1900(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;

    move-result-object v4

    invoke-interface {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/kingsoft/mail/browse/ConversationAccountController;

    move-result-object v0

    .line 1520
    .local v0, "controller":Lcom/kingsoft/mail/browse/ConversationAccountController;
    instance-of v4, v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 1521
    check-cast v2, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 1522
    .local v2, "mConversationFragment":Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v1

    .line 1524
    .local v1, "cov":Lcom/kingsoft/mail/providers/Conversation;
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v4

    iget-wide v5, v1, Lcom/kingsoft/mail/providers/Conversation;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/EmailApplication;->containsBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1525
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$600(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1526
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$MsgBodyObserver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    iget-object v4, v4, Lcom/kingsoft/mail/ui/SecureConversationViewController;->mchgHandler:Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;

    invoke-virtual {v4, v3}, Lcom/kingsoft/mail/ui/SecureConversationViewController$ChangeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
