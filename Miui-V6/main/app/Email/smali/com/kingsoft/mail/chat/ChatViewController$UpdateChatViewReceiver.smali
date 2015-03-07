.class Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChatViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/ChatViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateChatViewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/chat/ChatViewController;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/chat/ChatViewController;)V
    .locals 0

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.email.action.UPDATE_CHAT_VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1789
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->setChatCache(Lcom/kingsoft/mail/chat/ChatCache;)V

    .line 1790
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->notifyDataSetChanged()V

    .line 1791
    const-string/jumbo v3, "new_email"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1792
    .local v2, "showNew":Z
    if-eqz v2, :cond_0

    .line 1793
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$900(Lcom/kingsoft/mail/chat/ChatViewController;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 1795
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mChatCache:Lcom/kingsoft/mail/chat/ChatCache;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatCache;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1796
    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3300(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/ui/AbstractActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/ui/AbstractActivityController;->onBackPressed()Z

    .line 1810
    .end local v2    # "showNew":Z
    :cond_1
    :goto_0
    return-void

    .line 1798
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1800
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "messageKey"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1802
    .local v0, "msgId":J
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.emailcommon.attachment.inlineLoad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getInlineMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    iget-object v4, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    const-string/jumbo v3, "contentId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "contentUri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/kingsoft/mail/chat/ChatViewController$UpdateChatViewReceiver;->this$0:Lcom/kingsoft/mail/chat/ChatViewController;

    # getter for: Lcom/kingsoft/mail/chat/ChatViewController;->mAdapter:Lcom/kingsoft/mail/chat/ChatViewAdapter;
    invoke-static {v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$200(Lcom/kingsoft/mail/chat/ChatViewController;)Lcom/kingsoft/mail/chat/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/mail/chat/ChatViewAdapter;->getInlineMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    # invokes: Lcom/kingsoft/mail/chat/ChatViewController;->loadUrl(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    invoke-static {v4, v5, v6, v3}, Lcom/kingsoft/mail/chat/ChatViewController;->access$3400(Lcom/kingsoft/mail/chat/ChatViewController;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0
.end method
