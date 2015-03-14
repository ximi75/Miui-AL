.class Lcom/kingsoft/mail/chat/ChatViewController$17;
.super Ljava/lang/Object;
.source "ChatViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/chat/ChatViewController;->loadUrl(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;

.field final synthetic val$contentId:Ljava/lang/String;

.field final synthetic val$contentUri:Ljava/lang/String;

.field final synthetic val$mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    iput-object p2, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$mWebView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$contentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$contentUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:updateSrc(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$contentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$contentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v0}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getInlineMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/chat/ChatViewController$17;->val$contentId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    return-void
.end method
