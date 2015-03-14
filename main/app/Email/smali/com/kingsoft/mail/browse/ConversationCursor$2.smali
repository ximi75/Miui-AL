.class Lcom/kingsoft/mail/browse/ConversationCursor$2;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;->resetNotificationActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2365
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mNotificationTempDeleted:Ljava/util/Set;
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2800(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 2367
    .local v0, "changed":Z
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mNotificationTempDeleted:Ljava/util/Set;
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2800(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/providers/Conversation;

    .line 2368
    .local v1, "conversation":Lcom/kingsoft/mail/providers/Conversation;
    sget-object v3, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    iget-object v4, v1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->undeleteLocal(Landroid/net/Uri;Lcom/kingsoft/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 2365
    .end local v0    # "changed":Z
    .end local v1    # "conversation":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2371
    .restart local v0    # "changed":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mNotificationTempDeleted:Ljava/util/Set;
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2800(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2373
    if-eqz v0, :cond_2

    .line 2374
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$2;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$2000(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 2376
    :cond_2
    return-void
.end method
