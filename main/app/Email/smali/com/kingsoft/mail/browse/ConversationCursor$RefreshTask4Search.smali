.class Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask4Search"
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
.field mIsSearchInGloab:Z

.field mQuery:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 2524
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mIsSearchInGloab:Z

    .line 2525
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mQuery:Ljava/lang/String;

    .line 2526
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mType:Ljava/lang/String;

    .line 2527
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/kingsoft/mail/browse/ConversationCursor$1;

    .prologue
    .line 2518
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "isSearchInGloab"    # Z

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mIsSearchInGloab:Z

    .line 2530
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mQuery:Ljava/lang/String;

    .line 2531
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mType:Ljava/lang/String;

    .line 2532
    iput-boolean p4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mIsSearchInGloab:Z

    .line 2533
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2542
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mType:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery4Search(ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3100(Lcom/kingsoft/mail/browse/ConversationCursor;ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    .line 2544
    .local v0, "result":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    .line 2545
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2518
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->doInBackground([Ljava/lang/Void;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 3
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 2582
    const-string/jumbo v0, "Email"

    const-string/jumbo v1, "onCancelled refreshSearchTask"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2583
    if-eqz p1, :cond_0

    .line 2584
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->close()V

    .line 2586
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2518
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method

.method protected onPostExecute(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 8
    .param p1, "result"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2550
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2551
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$600(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2552
    :try_start_0
    const-string/jumbo v3, "ConvCursor"

    const-string/jumbo v4, "Received notify ui callback and sending a notification is enabled? %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$700(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z
    invoke-static {v7}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$800(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2558
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2559
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->onCancelled(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 2560
    monitor-exit v2

    .line 2575
    :goto_1
    return-void

    :cond_0
    move v1, v0

    .line 2552
    goto :goto_0

    .line 2562
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->mType:Ljava/lang/String;

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mLocalSearchType:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3202(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;)Ljava/lang/String;

    .line 2563
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$902(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 2564
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v3, 0x1

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z
    invoke-static {v1, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1002(Lcom/kingsoft/mail/browse/ConversationCursor;Z)Z

    .line 2569
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$800(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$700(Lcom/kingsoft/mail/browse/ConversationCursor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2570
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshReady()V
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$1100(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 2572
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$900(Lcom/kingsoft/mail/browse/ConversationCursor;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    sput v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->localSearchCount:I

    .line 2574
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2572
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$900(Lcom/kingsoft/mail/browse/ConversationCursor;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2518
    check-cast p1, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->onPostExecute(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    return-void
.end method
