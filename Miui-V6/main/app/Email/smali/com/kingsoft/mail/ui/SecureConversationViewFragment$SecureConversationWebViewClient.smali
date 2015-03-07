.class Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;
.super Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
.source "SecureConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/SecureConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureConversationWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    .line 120
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;-><init>(Lcom/kingsoft/mail/providers/Account;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # setter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2, p1}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$302(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 130
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ignoring SCVF.onPageFinished, url=%s fragment=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->isUserVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->onConversationSeen()V

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:updateSrc(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mDownloadedInlines:Ljava/util/Map;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$200(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 148
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/SecureConversationViewFragment$SecureConversationWebViewClient;->this$0:Lcom/kingsoft/mail/ui/SecureConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewFragment;->access$000(Lcom/kingsoft/mail/ui/SecureConversationViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dismissLoadingStatus()V

    goto :goto_0
.end method
