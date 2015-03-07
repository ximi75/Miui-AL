.class Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewController;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewController;->mWebView:Lcom/kingsoft/mail/browse/MessageWebView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewController;)Lcom/kingsoft/mail/browse/MessageWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:updateSrc(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "contentId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewController$InlineLoadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "contentUri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/MessageWebView;->loadUrl(Ljava/lang/String;)V

    .line 609
    return-void
.end method
