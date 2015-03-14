.class Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;
.super Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;
.source "EmlMessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/EmlMessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmlWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;Lcom/kingsoft/mail/providers/Account;)V
    .locals 0
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    .line 92
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/ui/AbstractConversationWebViewClient;-><init>(Lcom/kingsoft/mail/providers/Account;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 100
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ignoring EMLVF.onPageFinished, url=%s fragment=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    iget-object v9, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mViewController:Lcom/kingsoft/mail/ui/SecureConversationViewController;
    invoke-static {v6}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$300(Lcom/kingsoft/mail/browse/EmlMessageViewFragment;)Lcom/kingsoft/mail/ui/SecureConversationViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingsoft/mail/ui/SecureConversationViewController;->dismissLoadingStatus()V

    .line 107
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 109
    .local v4, "emailAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 110
    .local v1, "cacheCopy":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Address;>;"
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    iget-object v7, v6, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    monitor-enter v7

    .line 112
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    iget-object v6, v6, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->mAddressCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 117
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Address;

    .line 120
    .local v0, "addr":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    .end local v0    # "addr":Lcom/kingsoft/mail/providers/Address;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    # getter for: Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 117
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 123
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getContactInfoSource()Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;

    move-result-object v2

    .line 124
    .local v2, "callbacks":Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;
    invoke-virtual {v2, v4}, Lcom/kingsoft/mail/ui/ContactLoaderCallbacks;->setSenders(Ljava/util/Set;)V

    .line 125
    iget-object v6, p0, Lcom/kingsoft/mail/browse/EmlMessageViewFragment$EmlWebViewClient;->this$0:Lcom/kingsoft/mail/browse/EmlMessageViewFragment;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/EmlMessageViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v6, v12, v7, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
