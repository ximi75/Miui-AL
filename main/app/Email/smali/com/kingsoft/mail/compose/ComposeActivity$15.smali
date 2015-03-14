.class Lcom/kingsoft/mail/compose/ComposeActivity$15;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/compose/ComposeActivity;->sendOrSave(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRestoredRequestId:I

.field final synthetic this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/compose/ComposeActivity;Z)V
    .locals 0

    .prologue
    .line 3961
    iput-object p1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iput-boolean p2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->val$save:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/kingsoft/mail/providers/Message;
    .locals 2

    .prologue
    .line 4006
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2200(Lcom/kingsoft/mail/compose/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4007
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2500(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/providers/Message;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 4008
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeSendOrSave(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;)V
    .locals 6
    .param p1, "sendOrSaveTask"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;

    .prologue
    .line 3967
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3968
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3969
    .local v0, "numTasks":I
    if-nez v0, :cond_0

    .line 3972
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    const-class v5, Lcom/kingsoft/mail/compose/EmptyService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3976
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v1, v1, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3977
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3978
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3979
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;)V

    .line 3982
    :cond_1
    return-void

    .line 3977
    .end local v0    # "numTasks":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyMessageIdAllocated(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/Message;)V
    .locals 5
    .param p1, "sendOrSaveMessage"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;
    .param p2, "message"    # Lcom/kingsoft/mail/providers/Message;

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2200(Lcom/kingsoft/mail/compose/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3988
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, p1, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->mAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftAccount:Lcom/kingsoft/mail/providers/ReplyFromAccount;
    invoke-static {v0, v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2302(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/mail/providers/ReplyFromAccount;)Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 3989
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-wide v2, p2, Lcom/kingsoft/mail/providers/Message;->id:J

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J
    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2402(Lcom/kingsoft/mail/compose/ComposeActivity;J)J

    .line 3990
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;
    invoke-static {v0, p2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2502(Lcom/kingsoft/mail/compose/ComposeActivity;Lcom/kingsoft/mail/providers/Message;)Lcom/kingsoft/mail/providers/Message;

    .line 3991
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3992
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2400(Lcom/kingsoft/mail/compose/ComposeActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3996
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->saveRequestMap()V
    invoke-static {v0}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2700(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 3997
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3998
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3999
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->notifyMessageIdAllocated(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveMessage;Lcom/kingsoft/mail/providers/Message;)V

    .line 4002
    :cond_1
    return-void

    .line 3997
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendOrSaveFinished(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;Z)V
    .locals 8
    .param p1, "task"    # Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;
    .param p2, "success"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 4014
    iget-boolean v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->val$save:Z

    if-eqz v2, :cond_0

    .line 4015
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # invokes: Lcom/kingsoft/mail/compose/ComposeActivity;->updateAttachmentsView()V
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2800(Lcom/kingsoft/mail/compose/ComposeActivity;)V

    .line 4018
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mPerformedDiscard:Z
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2900(Lcom/kingsoft/mail/compose/ComposeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J
    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2400(Lcom/kingsoft/mail/compose/ComposeActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 4019
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4020
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2400(Lcom/kingsoft/mail/compose/ComposeActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4021
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, v2, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v2, v2, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4022
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v3, v3, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->expungeMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4027
    :goto_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # setter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraftId:J
    invoke-static {v2, v6, v7}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2402(Lcom/kingsoft/mail/compose/ComposeActivity;J)J

    .line 4033
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, v2, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-eqz v2, :cond_1

    .line 4034
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getInstance()Lcom/kingsoft/mail/providers/MailAppProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v3, v3, Lcom/kingsoft/mail/compose/ComposeActivity;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/providers/MailAppProvider;->setLastSentFromAccount(Ljava/lang/String;)V

    .line 4037
    :cond_1
    if-eqz p2, :cond_5

    .line 4049
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v3, v2, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4051
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, v2, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4052
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    iget-object v2, v2, Lcom/kingsoft/mail/compose/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4053
    .local v0, "numTasks":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4055
    if-nez v0, :cond_2

    .line 4057
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    const-class v5, Lcom/kingsoft/mail/compose/EmptyService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->stopService(Landroid/content/Intent;)Z

    .line 4060
    :cond_2
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4061
    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->sTestSendOrSaveCallback:Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;
    invoke-static {}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2100()Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveCallback;->sendOrSaveFinished(Lcom/kingsoft/mail/compose/ComposeActivity$SendOrSaveTask;Z)V

    .line 4063
    :cond_3
    return-void

    .line 4025
    .end local v0    # "numTasks":I
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_4
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    invoke-virtual {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    # getter for: Lcom/kingsoft/mail/compose/ComposeActivity;->mDraft:Lcom/kingsoft/mail/providers/Message;
    invoke-static {v3}, Lcom/kingsoft/mail/compose/ComposeActivity;->access$2500(Lcom/kingsoft/mail/compose/ComposeActivity;)Lcom/kingsoft/mail/providers/Message;

    move-result-object v3

    iget-object v3, v3, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 4044
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/compose/ComposeActivity$15;->this$0:Lcom/kingsoft/mail/compose/ComposeActivity;

    const v3, 0x7f100370

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4053
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
