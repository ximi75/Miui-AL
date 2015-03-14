.class Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStartPos:I

.field final synthetic this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)V
    .locals 0
    .param p2, "startPosition"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 314
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->mStartPos:I

    .line 315
    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .prologue
    .line 310
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->mStartPos:I

    return v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 320
    :try_start_0
    const-string/jumbo v3, "backgroundCaching"

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v0

    .line 330
    .local v0, "count":I
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$000(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I

    move-result v1

    .line 331
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-lt v1, v0, :cond_1

    .line 346
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 350
    const/4 v3, 0x0

    return-object v3

    .line 335
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$100(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 336
    .local v2, "rowData":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    iget-object v3, v2, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v3, :cond_2

    .line 339
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v3, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    new-instance v3, Lcom/kingsoft/mail/providers/Conversation;

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {v3, v4}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    iput-object v3, v2, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    add-int/lit8 v4, v1, 0x1

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I
    invoke-static {v3, v4}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$002(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    .end local v0    # "count":I
    .end local v1    # "pos":I
    .end local v2    # "rowData":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    throw v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$202(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 356
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "ConversationCursor caching complete pos=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I
    invoke-static {v4}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$000(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    return-void
.end method
