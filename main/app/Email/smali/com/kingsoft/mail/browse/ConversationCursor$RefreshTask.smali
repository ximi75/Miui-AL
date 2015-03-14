.class Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p2, "x1"    # Lcom/kingsoft/mail/browse/ConversationCursor$1;

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 619
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v2, 0x0

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery(Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$500(Lcom/kingsoft/mail/browse/ConversationCursor;Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    .line 621
    .local v0, "result":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    .line 622
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 0
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 654
    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->close()V

    .line 657
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method

.method protected onPostExecute(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 8
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 627
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$600(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 628
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v4, v3, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 629
    const-string/jumbo v3, "ConvCursor"

    const-string/jumbo v4, "Received notify ui callback and sending a notification is enabled? %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$700(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$800(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 634
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 636
    monitor-exit v2

    .line 647
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 629
    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$902(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 639
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v1, 0x1

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1002(Lcom/kingsoft/mail/browse/ConversationCursor;Z)Z

    .line 643
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$800(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$700(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshReady()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1100(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 646
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->onPostExecute(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method
