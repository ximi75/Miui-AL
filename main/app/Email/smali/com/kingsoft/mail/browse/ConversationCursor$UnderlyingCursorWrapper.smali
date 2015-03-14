.class Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.super Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;
.source "ConversationCursor.java"

# interfaces
.implements Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/browse/ConversationCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnderlyingCursorWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;,
        Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
    }
.end annotation


# instance fields
.field private mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

.field private mCachePos:I

.field private mCachingEnabled:Z

.field private final mConversationIdPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationUriPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCursorUpdateObserver:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

.field private mCursorUpdated:Z

.field private mDrawState:I

.field private final mRowCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateObserverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 19
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 405
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 377
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 391
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    .line 393
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 402
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    .line 409
    new-instance v13, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    .line 411
    if-eqz p1, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 413
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 416
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 421
    .local v10, "start":J
    const-string/jumbo v13, "blockingCaching"

    invoke-static {v13}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 422
    invoke-super/range {p0 .. p0}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 423
    invoke-super/range {p0 .. p0}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->getCount()I

    move-result v4

    .line 424
    .local v4, "count":I
    new-array v1, v4, [Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 425
    .local v1, "cache":[Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    const/4 v7, 0x0

    .line 427
    .local v7, "i":I
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v12

    .line 428
    .local v12, "uriPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v8

    .line 434
    .local v8, "idPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "innerUriString":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v13}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->getLong(I)J

    move-result-wide v2

    .line 438
    .local v2, "convId":J
    invoke-interface {v12, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 439
    const-string/jumbo v13, "ConvCursor"

    const-string/jumbo v14, "Inserting duplicate conversation uri key: %s. Cursor position: %d, iteration: %d map position: %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 445
    const-string/jumbo v13, "ConvCursor"

    const-string/jumbo v14, "Inserting duplicate conversation id key: %dCursor position: %d, iteration: %d map position: %d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 451
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v13, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;-><init>(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)V

    aput-object v13, v1, v7

    .line 457
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v7}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->moveToPosition(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 459
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    if-ne v13, v4, :cond_4

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v13

    if-eq v13, v4, :cond_4

    .line 478
    .end local v2    # "convId":J
    .end local v7    # "i":I
    .end local v9    # "innerUriString":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    .line 479
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    .line 481
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 483
    .local v5, "end":J
    const-string/jumbo v13, "ConvCursor"

    const-string/jumbo v14, "*** ConversationCursor pre-loading took %sms n=%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sub-long v17, v5, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 486
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 490
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    .line 491
    return-void

    .line 473
    .end local v1    # "cache":[Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    .end local v4    # "count":I
    .end local v5    # "end":J
    .end local v8    # "idPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12    # "uriPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    const/4 v4, 0x0

    .line 474
    .restart local v4    # "count":I
    const/4 v13, 0x0

    new-array v1, v13, [Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 475
    .restart local v1    # "cache":[Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 476
    .restart local v12    # "uriPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .restart local v8    # "idPositionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 298
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    return v0
.end method

.method static synthetic access$002(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    return p1
.end method

.method static synthetic access$100(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->notifyConversationUIPositionChange()V

    return-void
.end method

.method static synthetic access$202(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .param p1, "x1"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    return p1
.end method

.method private notifyConversationUIPositionChange()V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/Utils;->notifyCursorUIPositionChange(Landroid/database/Cursor;I)Z

    .line 560
    return-void
.end method

.method private pauseCaching()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 512
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    if-eqz v0, :cond_0

    .line 513
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "Cancelling caching startPos=%s pos=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    # getter for: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->mStartPos:I
    invoke-static {v3}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->access$400(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 515
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    invoke-virtual {v0, v5}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->cancel(Z)Z

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 518
    :cond_0
    return-void
.end method

.method private resumeCaching()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    if-eqz v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected existing task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 504
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 505
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCacheLoaderTask:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 506
    const/4 v0, 0x1

    .line 508
    :cond_1
    return v0
.end method


# virtual methods
.method public cacheConversation(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 553
    .local v0, "rowData":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    if-nez v1, :cond_0

    .line 554
    iput-object p1, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    .line 556
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->stopCaching()V

    .line 582
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->disableUpdateNotifications()V

    .line 583
    invoke-super {p0}, Lcom/kingsoft/mail/content/ThreadSafeCursorWrapper;->close()V

    .line 584
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public conversationIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public disableUpdateNotifications()V
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdateObserver:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper$NewCursorUpdateObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mUpdateObserverRegistered:Z

    .line 576
    :cond_0
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/kingsoft/mail/providers/Conversation;

    return-object v0
.end method

.method public getInnerUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mRowCache:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;->innerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 534
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationIdPositionMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 535
    .local v0, "position":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "conversationUri"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mConversationUriPositionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 540
    .local v0, "position":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isDataUpdated()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCursorUpdated:Z

    return v0
.end method

.method public onStateChanged(Lcom/kingsoft/mail/utils/DrawIdler;I)V
    .locals 7
    .param p1, "idler"    # Lcom/kingsoft/mail/utils/DrawIdler;
    .param p2, "newState"    # I

    .prologue
    .line 588
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 589
    .local v0, "oldState":I
    iput p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mDrawState:I

    .line 590
    if-eq v0, p2, :cond_0

    .line 591
    if-nez p2, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->resumeCaching()Z

    move-result v1

    .line 594
    .local v1, "resumed":Z
    if-eqz v1, :cond_0

    .line 595
    const-string/jumbo v2, "ConvCursor"

    const-string/jumbo v3, "Resuming caching, pos=%s idler=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachePos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 602
    .end local v1    # "resumed":Z
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->pauseCaching()V

    goto :goto_0
.end method

.method public stopCaching()V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->pauseCaching()V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->mCachingEnabled:Z

    .line 523
    return-void
.end method
