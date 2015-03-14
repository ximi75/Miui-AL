.class Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteTask4Search"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountId:Ljava/lang/String;

.field mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

.field mIsInit:Z

.field mMailboxId:J

.field mOffset:Ljava/lang/String;

.field mSearchParam:Ljava/lang/String;

.field mStartTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 0
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "searchParam"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;
    .param p5, "offset"    # Ljava/lang/String;
    .param p6, "isInit"    # Z
    .param p7, "startTime"    # Ljava/lang/String;
    .param p8, "mailboxId"    # J

    .prologue
    .line 2678
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2679
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mAccountId:Ljava/lang/String;

    .line 2680
    iput-object p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mSearchParam:Ljava/lang/String;

    .line 2681
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    .line 2682
    iput-object p5, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mOffset:Ljava/lang/String;

    .line 2683
    iput-boolean p6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mIsInit:Z

    .line 2684
    iput-object p7, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mStartTime:Ljava/lang/String;

    .line 2685
    iput-wide p8, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mMailboxId:J

    .line 2686
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;Ljava/lang/String;ZLjava/lang/String;JLcom/kingsoft/mail/browse/ConversationCursor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # J
    .param p10, "x8"    # Lcom/kingsoft/mail/browse/ConversationCursor$1;

    .prologue
    .line 2667
    invoke-direct/range {p0 .. p9}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;Ljava/lang/String;ZLjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 2696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://com.android.email.provider/uisearch/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2699
    .local v9, "remoteSearchUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2700
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "query"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mSearchParam:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2701
    const-string/jumbo v0, "offset"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mOffset:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2702
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mStartTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2703
    const-string/jumbo v0, "startTime"

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mStartTime:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2704
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mIsInit:Z

    if-eqz v0, :cond_1

    .line 2705
    const-string/jumbo v0, "init"

    const-string/jumbo v2, "init"

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2706
    :cond_1
    const-string/jumbo v0, "mailboxId"

    iget-wide v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mMailboxId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2707
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2709
    .local v1, "mUri":Landroid/net/Uri;
    new-instance v10, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3400(Lcom/kingsoft/mail/browse/ConversationCursor;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2715
    .local v10, "result":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mSearchParam:Ljava/lang/String;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery4Search(ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    invoke-static {v0, v12, v2, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3100(Lcom/kingsoft/mail/browse/ConversationCursor;ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v7

    .line 2717
    .local v7, "local":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2718
    :cond_2
    if-eqz v10, :cond_3

    .line 2719
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v7

    .line 2729
    :goto_0
    return-object v11

    .line 2721
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 2722
    :cond_5
    if-eqz v7, :cond_6

    .line 2723
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v11, v10

    .line 2724
    goto :goto_0

    .line 2726
    :cond_7
    const/4 v0, 0x2

    new-array v8, v0, [Landroid/database/Cursor;

    aput-object v7, v8, v12

    const/4 v0, 0x1

    aput-object v10, v8, v0

    .line 2727
    .local v8, "mCursors":[Landroid/database/Cursor;
    new-instance v11, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    new-instance v0, Lcom/kingsoft/mail/browse/MergeCursorWrap;

    invoke-direct {v0, v8}, Lcom/kingsoft/mail/browse/MergeCursorWrap;-><init>([Landroid/database/Cursor;)V

    invoke-direct {v11, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2729
    .local v11, "uResult":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2667
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 2753
    if-eqz p1, :cond_0

    .line 2754
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2756
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3602(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;)Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .line 2757
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;->onCancelRemoteSearch()V

    .line 2758
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2667
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->onCancelled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_FINISH:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2735
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$600(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2736
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->onCancelled(Landroid/database/Cursor;)V

    .line 2738
    monitor-exit v1

    .line 2746
    :goto_0
    return-void

    .line 2740
    :cond_0
    if-eqz p1, :cond_1

    .line 2741
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor;->reset4Search(Landroid/database/Cursor;)V
    invoke-static {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3500(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/database/Cursor;)V

    .line 2743
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->access$3602(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;)Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .line 2745
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;->onPostRemoteSearch()V

    goto :goto_0

    .line 2743
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2667
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 2690
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2691
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;->onPreRemoteSearch()V

    .line 2692
    return-void
.end method
