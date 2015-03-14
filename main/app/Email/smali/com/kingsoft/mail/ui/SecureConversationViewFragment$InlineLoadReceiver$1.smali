.class Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;
.super Ljava/lang/Object;
.source "SecureConversationViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

.field final synthetic val$contentId:Ljava/lang/String;

.field final synthetic val$contentUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->val$contentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->val$contentUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->this$1:Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;

    iget-object v0, v0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$300(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:updateSrc(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->val$contentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$InlineLoadReceiver$1;->val$contentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
