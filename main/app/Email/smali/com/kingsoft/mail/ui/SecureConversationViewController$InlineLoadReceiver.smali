.class public Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecureConversationViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InlineLoadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 598
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$600(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;-><init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    :cond_0
    return-void
.end method
