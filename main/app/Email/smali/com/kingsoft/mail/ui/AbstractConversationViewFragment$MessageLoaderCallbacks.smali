.class Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;
.super Ljava/lang/Object;
.source "AbstractConversationViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/kingsoft/mail/content/ObjectCursor",
        "<",
        "Lcom/kingsoft/mail/browse/ConversationMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;
    .param p2, "x1"    # Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;-><init>(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;

    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v2, v2, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Conversation;->messageListUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;>;",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;>;"
    .local p2, "data":Lcom/kingsoft/mail/content/ObjectCursor;, "Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 557
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v2

    if-eq v2, p2, :cond_0

    if-nez p2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 560
    check-cast v0, Lcom/kingsoft/mail/browse/MessageCursor;

    .line 563
    .local v0, "messageCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/browse/MessageCursor;->setController(Lcom/kingsoft/mail/browse/MessageCursor$ConversationController;)V

    .line 565
    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LOADED CONVERSATION= %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getDebugDump()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 570
    :cond_2
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/providers/UIProvider$CursorStatus;->isWaitingForResults(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mIsDetached:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$300(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 573
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mUserVisible:Z
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$400(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # invokes: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onError()V
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$500(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)V

    .line 588
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v2, v8}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/browse/MessageCursor;

    goto :goto_0

    .line 581
    :cond_4
    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CVF: offscreen conv has no messages, ignoring update in anticipation of conv cursor update. c=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v5, v5, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mConversation:Lcom/kingsoft/mail/providers/Conversation;

    iget-object v5, v5, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 593
    :cond_5
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/MessageCursor;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 598
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v2, v8}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/browse/MessageCursor;

    goto :goto_0

    .line 601
    :cond_6
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v1

    .line 604
    .local v1, "oldCursor":Lcom/kingsoft/mail/browse/MessageCursor;
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v2, v0}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/browse/MessageCursor;

    .line 605
    iget-object v2, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    iget-object v3, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    # getter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v3}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$100(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;)Lcom/kingsoft/mail/browse/MessageCursor;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->onMessageCursorLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/browse/MessageCursor;Lcom/kingsoft/mail/browse/MessageCursor;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 544
    check-cast p2, Lcom/kingsoft/mail/content/ObjectCursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/kingsoft/mail/content/ObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/kingsoft/mail/content/ObjectCursor",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/kingsoft/mail/content/ObjectCursor<Lcom/kingsoft/mail/browse/ConversationMessage;>;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment$MessageLoaderCallbacks;->this$0:Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->mCursor:Lcom/kingsoft/mail/browse/MessageCursor;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;->access$102(Lcom/kingsoft/mail/ui/AbstractConversationViewFragment;Lcom/kingsoft/mail/browse/MessageCursor;)Lcom/kingsoft/mail/browse/MessageCursor;

    .line 613
    return-void
.end method
