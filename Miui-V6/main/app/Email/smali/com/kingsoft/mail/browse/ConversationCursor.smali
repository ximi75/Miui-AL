.class public final Lcom/kingsoft/mail/browse/ConversationCursor;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Landroid/database/Cursor;
.implements Lcom/kingsoft/mail/browse/ConversationCursorOperationListener;
.implements Lcom/kingsoft/mail/utils/DrawIdler$IdleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;,
        Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;,
        Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;,
        Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;,
        Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;,
        Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;,
        Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;,
        Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;,
        Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;,
        Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;,
        Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingRowData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DUPLICATE_KEYS:Z = true

.field private static final DELETED_COLUMN:Ljava/lang/String; = "__deleted__"

.field private static final DELETED_COLUMN_INDEX:I = -0x1

.field public static final LOG_TAG:Ljava/lang/String; = "ConvCursor"

.field private static final REQUERY_ALLOWANCE_TIME:J = 0x2710L

.field public static final SEARCH_FILTER_FROM:Ljava/lang/String; = "from"

.field public static final SEARCH_FILTER_SUBJECT:Ljava/lang/String; = "subject"

.field public static final SEARCH_FILTER_TO:Ljava/lang/String; = "to"

.field public static SEARCH_FILTER_TYPE:Ljava/lang/String; = null

.field private static final UPDATE_TIME_COLUMN:Ljava/lang/String; = "__updatetime__"

.field private static final URI_COLUMN_INDEX:I = 0x1

.field public static final URI_NOTIFY_UI:Ljava/lang/String; = "notifyUI"

.field public static final URI_PARAM_IDS:Ljava/lang/String; = "ids"

.field public static final URI_PARAM_IS_POP3_SYNC_DEL:Ljava/lang/String; = "isPop3SyncDel"

.field public static final URI_PARAM_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field public static final URI_PARAM_MAX_MERGE_COUNT:Ljava/lang/String; = "maxMergeCount"

.field public static final URI_PARAM_MERGE_COUNT:Ljava/lang/String; = "mergeCount"

.field static sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sSequence:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheMapLock:Ljava/lang/Object;

.field private mColumnNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnNames:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCursorObserver:Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;

.field private mCursorObserverRegistered:Z

.field private mDeferSync:Z

.field private mDeletedCount:I

.field private mInitialConversationLimit:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalSearchType:Ljava/lang/String;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMostlyDead:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotificationTempDeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPosition:I

.field private mRefreshReady:Z

.field private mRefreshRequired:Z

.field private mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

.field mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

.field private mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

.field private volatile mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

.field private final mResolver:Landroid/content/ContentResolver;

.field public mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

.field mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private qProjection:[Ljava/lang/String;

.field private qUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I

    .line 2874
    const-string/jumbo v0, "search_filter_type"

    sput-object v0, Lcom/kingsoft/mail/browse/ConversationCursor;->SEARCH_FILTER_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialConversationLimit"    # Z
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    .line 153
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    .line 155
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    .line 157
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    .line 159
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMostlyDead:Ljava/util/List;

    .line 162
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mNotificationTempDeleted:Ljava/util/Set;

    .line 172
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserverRegistered:Z

    .line 174
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    .line 176
    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 184
    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMainThreadHandler:Landroid/os/Handler;

    .line 2486
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->NO:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2496
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    .line 2625
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .line 217
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mActivity:Landroid/app/Activity;

    .line 218
    iput-boolean p3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    .line 219
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mResolver:Landroid/content/ContentResolver;

    .line 220
    iput-object p2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    .line 221
    iput-object p4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mContext:Landroid/content/Context;

    .line 225
    sget-object v0, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qProjection:[Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserver:Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;

    .line 227
    return-void
.end method

.method static synthetic access$1002(Lcom/kingsoft/mail/browse/ConversationCursor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshReady()V

    return-void
.end method

.method static synthetic access$1400(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->underlyingChanged()V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I

    return v0
.end method

.method static synthetic access$1608()I
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/kingsoft/mail/browse/ConversationCursor;->sSequence:I

    return v0
.end method

.method static synthetic access$1700(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->recalibratePosition()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kingsoft/mail/browse/ConversationCursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/kingsoft/mail/browse/ConversationCursor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mNotificationTempDeleted:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/kingsoft/mail/browse/ConversationCursor;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/kingsoft/mail/browse/ConversationCursor;ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery4Search(ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3202(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mLocalSearchType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/kingsoft/mail/browse/ConversationCursor;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->reset4Search(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3602(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;)Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kingsoft/mail/browse/ConversationCursor;Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery(Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/mail/browse/ConversationCursor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/mail/browse/ConversationCursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kingsoft/mail/browse/ConversationCursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    return v0
.end method

.method static synthetic access$900(Lcom/kingsoft/mail/browse/ConversationCursor;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/mail/browse/ConversationCursor;
    .param p1, "x1"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    return-object p1
.end method

.method public static addFolderUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    .locals 5
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2178
    .local p0, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p1, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2179
    .local v0, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2180
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2182
    :cond_0
    const-string/jumbo v2, "folders_updated"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    return-void
.end method

.method public static addTargetFolders(Ljava/util/Collection;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2187
    .local p0, "targetFolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Folder;>;"
    const-string/jumbo v0, "rawFolders"

    invoke-static {p0}, Lcom/kingsoft/mail/providers/FolderList;->copyOf(Ljava/util/Collection;)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/providers/FolderList;->toBlob()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2188
    return-void
.end method

.method private apply(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2206
    .local p1, "operations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    invoke-virtual {v0, p1, p0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->apply(Ljava/util/Collection;Lcom/kingsoft/mail/browse/ConversationCursor;)I

    move-result v0

    return v0
.end method

.method private applyAction(Ljava/util/Collection;I)I
    .locals 5
    .param p2, "opAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2308
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2309
    .local v3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 2310
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    new-instance v2, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    invoke-direct {v2, p0, p2, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;ILcom/kingsoft/mail/providers/Conversation;)V

    .line 2312
    .local v2, "op":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2314
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    .end local v2    # "op":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    :cond_0
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->apply(Ljava/util/Collection;)I

    move-result v4

    return v4
.end method

.method private cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 941
    invoke-static {}, Lcom/kingsoft/mail/browse/ConversationCursor;->offUiThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    const-string/jumbo v4, "ConvCursor"

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    const-string/jumbo v6, "cacheValue incorrectly being called from non-UI thread"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 946
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v5

    .line 948
    :try_start_0
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 950
    .local v2, "map":Landroid/content/ContentValues;
    if-nez v2, :cond_1

    .line 951
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "map":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .restart local v2    # "map":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_1
    const-string/jumbo v4, "__deleted__"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 956
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 957
    .local v3, "state":Z
    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 958
    .local v1, "hasValue":Z
    :cond_2
    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 959
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    .line 981
    .end local v1    # "hasValue":Z
    .end local v3    # "state":Z
    :cond_3
    invoke-static {v2, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->putInValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    const-string/jumbo v4, "__updatetime__"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    monitor-exit v5

    .line 987
    :goto_0
    return-void

    .line 964
    .restart local v1    # "hasValue":Z
    .restart local v3    # "state":Z
    :cond_4
    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 965
    iget v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    .line 966
    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 971
    monitor-exit v5

    goto :goto_0

    .line 986
    .end local v1    # "hasValue":Z
    .end local v2    # "map":Landroid/content/ContentValues;
    .end local v3    # "state":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 972
    .restart local v1    # "hasValue":Z
    .restart local v2    # "map":Landroid/content/ContentValues;
    .restart local v3    # "state":Z
    :cond_5
    if-nez v3, :cond_3

    .line 978
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private checkNotifyUI()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    if-nez v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    if-nez v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshRequired()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshReady()V

    goto :goto_0
.end method

.method private doQuery(Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 9
    .param p1, "withLimit"    # Z

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    .line 662
    .local v1, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    const-string/jumbo v4, "50"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 666
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 668
    .local v7, "time":J
    const-string/jumbo v0, "query"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 673
    .local v6, "result":Landroid/database/Cursor;
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 675
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 677
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {v0, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method private doQuery4Search(ZLjava/lang/String;Ljava/lang/String;)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    .locals 7
    .param p1, "withLimit"    # Z
    .param p2, "searchFilter"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2591
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    .line 2592
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "searchFilter"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/kingsoft/mail/browse/ConversationCursor;->SEARCH_FILTER_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2596
    if-eqz p1, :cond_0

    .line 2597
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    const-string/jumbo v4, "50"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2604
    :cond_0
    const-string/jumbo v0, "query"

    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 2606
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2607
    .local v6, "result":Landroid/database/Cursor;
    invoke-static {}, Lcom/kingsoft/mail/utils/Utils;->traceEndSection()V

    .line 2608
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2610
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {v0, v6}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method private getCachedValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 995
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getInnerUri()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "uri":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getCachedValue(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1001
    .local v1, "uriMap":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 1003
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1004
    const-string/jumbo v0, "__deleted__"

    .line 1008
    .local v0, "columnName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1010
    .end local v0    # "columnName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1006
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v0, v2, p2

    .restart local v0    # "columnName":Ljava/lang/String;
    goto :goto_0

    .line 1010
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getGloabSearchUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2616
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2617
    .local v2, "uriStr":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2618
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2621
    .end local v2    # "uriStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2620
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p1

    .line 2621
    goto :goto_0
.end method

.method private getOperationsForConversations(Ljava/util/Collection;ILandroid/content/ContentValues;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "type"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;I",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2164
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2165
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Conversation;

    .line 2166
    .local v0, "conv":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {p0, v0, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->getOperationForConversation(Lcom/kingsoft/mail/providers/Conversation;ILandroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2168
    .end local v0    # "conv":Lcom/kingsoft/mail/providers/Conversation;
    :cond_0
    return-object v2
.end method

.method private log(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x6

    .line 2762
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2763
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2764
    .local v1, "index":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2766
    :cond_0
    const-string/jumbo v2, "ccc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",date = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2772
    add-int/lit8 v1, v1, 0x1

    .line 2773
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2774
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2775
    return-void
.end method

.method private notifyDataChanged()V
    .locals 4

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 1073
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;

    .line 1074
    .local v1, "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    invoke-interface {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;->onDataSetChanged()V

    goto :goto_0

    .line 1076
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 1079
    return-void
.end method

.method private notifyRefreshReady()V
    .locals 4

    .prologue
    .line 1058
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;

    .line 1060
    .local v1, "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    invoke-interface {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;->onRefreshReady()V

    goto :goto_0

    .line 1062
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    return-void
.end method

.method private notifyRefreshRequired()V
    .locals 4

    .prologue
    .line 1041
    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    if-nez v2, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 1043
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;

    .line 1044
    .local v1, "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    invoke-interface {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;->onRefreshRequired()V

    goto :goto_0

    .line 1046
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method static offUiThread()Z
    .locals 2

    .prologue
    .line 682
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putInValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "dest"    # Landroid/content/ContentValues;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1435
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1436
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1448
    :goto_1
    return-void

    .line 1436
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1437
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1438
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1439
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1440
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1441
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, [B

    if-eqz v1, :cond_4

    .line 1442
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 1444
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "cname":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value class not compatible with cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private recalibratePosition()V
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1302
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToFirst()Z

    .line 1303
    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    .line 1304
    return-void
.end method

.method private reset4Search(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2778
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2779
    .local v0, "result":Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2780
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    .line 2781
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    .line 2782
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->resetCursor4Search(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 2783
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 2784
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V

    .line 2786
    return-void

    .line 2784
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resetCursor(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 18
    .param p1, "newCursorWrapper"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v13

    .line 695
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 697
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 698
    .local v5, "now":J
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 699
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 700
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 701
    .local v10, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 702
    .local v4, "key":Ljava/lang/String;
    const/4 v11, 0x0

    .line 703
    .local v11, "withinTimeWindow":Z
    const/4 v7, 0x0

    .line 704
    .local v7, "removed":Z
    if-eqz v10, :cond_5

    .line 705
    const-string/jumbo v12, "__updatetime__"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 706
    .local v9, "updateTime":Ljava/lang/Long;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v5, v14

    const-wide/16 v16, 0x2710

    cmp-long v12, v14, v16

    if-gez v12, :cond_4

    .line 707
    const-string/jumbo v12, "ConvCursor"

    const-string/jumbo v14, "IN resetCursor, keep recent changes to %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v12, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 708
    const/4 v11, 0x1

    .line 712
    :cond_1
    :goto_1
    const-string/jumbo v12, "__deleted__"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 714
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 717
    move-object/from16 v0, p0

    iget v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    .line 718
    const/4 v7, 0x1

    .line 719
    const-string/jumbo v12, "ConvCursor"

    const-string/jumbo v14, "IN resetCursor, sDeletedCount decremented to: %d by %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-static {v12, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 728
    .end local v9    # "updateTime":Ljava/lang/Long;
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    if-eqz v7, :cond_0

    .line 729
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 755
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "now":J
    .end local v7    # "removed":Z
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v11    # "withinTimeWindow":Z
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 709
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "now":J
    .restart local v7    # "removed":Z
    .restart local v9    # "updateTime":Ljava/lang/Long;
    .restart local v10    # "values":Landroid/content/ContentValues;
    .restart local v11    # "withinTimeWindow":Z
    :cond_4
    if-nez v9, :cond_1

    .line 710
    :try_start_1
    const-string/jumbo v12, "ConvCursor"

    const-string/jumbo v14, "null updateTime from mCacheMap for key: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v12, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 725
    .end local v9    # "updateTime":Ljava/lang/Long;
    :cond_5
    const-string/jumbo v12, "ConvCursor"

    const-string/jumbo v14, "null ContentValues from mCacheMap for key: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v12, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 734
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "removed":Z
    .end local v10    # "values":Landroid/content/ContentValues;
    .end local v11    # "withinTimeWindow":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v12, :cond_7

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->close()V

    .line 737
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 739
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 740
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    invoke-virtual {v12, v14}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    .line 741
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserverRegistered:Z

    if-nez v12, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserver:Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;

    invoke-virtual {v12, v14}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 743
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserverRegistered:Z

    .line 746
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v12}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->isDataUpdated()Z

    move-result v8

    .line 751
    .local v8, "underlyingCursorUpdated":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v12}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->disableUpdateNotifications()V

    .line 752
    if-eqz v8, :cond_9

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->underlyingChanged()V

    .line 755
    :cond_9
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    return-void
.end method

.method private resetCursor4Search(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 17
    .param p1, "newCursorWrapper"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    .line 2789
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2791
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2793
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2794
    .local v5, "now":J
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2795
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2796
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 2797
    .local v9, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2798
    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2799
    .local v10, "withinTimeWindow":Z
    const/4 v7, 0x0

    .line 2800
    .local v7, "removed":Z
    if-eqz v9, :cond_5

    .line 2801
    const-string/jumbo v11, "__updatetime__"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 2802
    .local v8, "updateTime":Ljava/lang/Long;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v5, v13

    const-wide/16 v15, 0x2710

    cmp-long v11, v13, v15

    if-gez v11, :cond_4

    .line 2804
    const-string/jumbo v11, "ConvCursor"

    const-string/jumbo v13, "IN resetCursor, keep recent changes to %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2807
    const/4 v10, 0x1

    .line 2813
    :cond_1
    :goto_1
    const-string/jumbo v11, "__deleted__"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2816
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->contains(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2819
    move-object/from16 v0, p0

    iget v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    .line 2820
    const/4 v7, 0x1

    .line 2821
    const-string/jumbo v11, "ConvCursor"

    const-string/jumbo v13, "IN resetCursor, sDeletedCount decremented to: %d by %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    invoke-static {v11, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2834
    .end local v8    # "updateTime":Ljava/lang/Long;
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    if-eqz v7, :cond_0

    .line 2835
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2847
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "now":J
    .end local v7    # "removed":Z
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v10    # "withinTimeWindow":Z
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 2808
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "now":J
    .restart local v7    # "removed":Z
    .restart local v8    # "updateTime":Ljava/lang/Long;
    .restart local v9    # "values":Landroid/content/ContentValues;
    .restart local v10    # "withinTimeWindow":Z
    :cond_4
    if-nez v8, :cond_1

    .line 2809
    :try_start_1
    const-string/jumbo v11, "ConvCursor"

    const-string/jumbo v13, "null updateTime from mCacheMap for key: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2828
    .end local v8    # "updateTime":Ljava/lang/Long;
    :cond_5
    const-string/jumbo v11, "ConvCursor"

    const-string/jumbo v13, "null ContentValues from mCacheMap for key: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 2840
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "removed":Z
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v10    # "withinTimeWindow":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v11, :cond_7

    .line 2841
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->close()V

    .line 2843
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 2844
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 2845
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    invoke-virtual {v11, v13}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    .line 2846
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    .line 2847
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2850
    return-void
.end method

.method private resetNotificationActions()V
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationCursor$2;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2378
    return-void
.end method

.method private setCursor(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    .locals 7
    .param p1, "cursor"    # Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .prologue
    const/4 v6, 0x0

    .line 197
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v5, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->close()V

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mColumnNames:[Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 202
    .local v1, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mColumnNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 203
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    iput-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mColumnNameSet:Ljava/util/Set;

    .line 206
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    .line 207
    iput-boolean v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    .line 208
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    .line 209
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->resetCursor(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 211
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->resetNotificationActions()V

    .line 212
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 213
    return-void
.end method

.method private underlyingChanged()V
    .locals 2

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1027
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    .line 1029
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    if-nez v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshRequired()V

    .line 1033
    :cond_0
    monitor-exit v1

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private undoLocal()V
    .locals 1

    .prologue
    .line 2210
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationCursor;->sProvider:Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->undo(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    .line 2211
    return-void
.end method

.method private static uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "authority":Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 915
    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .line 910
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 911
    .local v3, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 912
    .local v1, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 913
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 912
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private static uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 919
    invoke-static {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriFromCachingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 921
    .local v0, "underlyingUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static uriToCachingUriString(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .param p0, "uriStr"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 883
    const-string/jumbo v2, "://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "withoutScheme":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 888
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 889
    sget-object v2, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->sUriPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 893
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationProvider;->sUriPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;

    .prologue
    .line 842
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 844
    .local v0, "numPrevListeners":I
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    if-eqz v1, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyRefreshRequired()V

    .line 856
    :cond_0
    return-void

    .line 847
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ConvCursor"

    const-string/jumbo v3, "Ignoring duplicate add of listener"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 849
    .end local v0    # "numPrevListeners":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public archive(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2239
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method clearMostlyDead(Ljava/lang/String;)Z
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1766
    const-string/jumbo v4, "ConvCursor"

    const-string/jumbo v5, "[Clearing mostly dead %s] "

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1767
    iget-object v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMostlyDead:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1768
    iput-boolean v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    .line 1769
    const/16 v4, 0x10

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 1771
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1772
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "val":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1773
    .local v0, "flags":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 1774
    const-string/jumbo v3, "conversationFlags"

    and-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1779
    .end local v0    # "flags":I
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserver:Lcom/kingsoft/mail/browse/ConversationCursor$CursorObserver;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCursorObserverRegistered:Z

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->close()V

    .line 1180
    :cond_1
    return-void

    .line 1173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method commitMostlyDead(Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 5
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v4, 0x0

    .line 1756
    iget v0, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 1757
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMostlyDead:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1758
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "[All dead: %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/kingsoft/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1759
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMostlyDead:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    .line 1761
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->checkNotifyUI()V

    .line 1763
    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 2014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2232
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->close()V

    .line 1161
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1162
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 1164
    return-void
.end method

.method public discardDrafts(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2274
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public emptyFolder()V
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursorOperationListener$OperationHelper;->emptyFolder(Landroid/database/Cursor;)V

    .line 2466
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1369
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1370
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, [B

    .end local v0    # "obj":Ljava/lang/Object;
    check-cast v0, [B

    .line 1371
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCachedBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCachedConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 8

    .prologue
    .line 1397
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v6}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v3

    .line 1398
    .local v3, "result":Lcom/kingsoft/mail/providers/Conversation;
    if-nez v3, :cond_0

    .line 1399
    const/4 v6, 0x0

    .line 1421
    :goto_0
    return-object v6

    .line 1404
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v7}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getInnerUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1405
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz v5, :cond_3

    .line 1406
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1407
    .local v2, "queryableValues":Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1408
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mColumnNameSet:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1411
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/kingsoft/mail/browse/ConversationCursor;->putInValues(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1413
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1417
    new-instance v4, Lcom/kingsoft/mail/providers/Conversation;

    invoke-direct {v4, v3}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 1418
    .end local v3    # "result":Lcom/kingsoft/mail/providers/Conversation;
    .local v4, "result":Lcom/kingsoft/mail/providers/Conversation;
    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/providers/Conversation;->applyCachedValues(Landroid/content/ContentValues;)V

    move-object v3, v4

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "queryableValues":Landroid/content/ContentValues;
    .end local v4    # "result":Lcom/kingsoft/mail/providers/Conversation;
    .restart local v3    # "result":Lcom/kingsoft/mail/providers/Conversation;
    :cond_3
    move-object v6, v3

    .line 1421
    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversation()Lcom/kingsoft/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedConversation()Lcom/kingsoft/mail/providers/Conversation;

    move-result-object v0

    .line 1380
    .local v0, "c":Lcom/kingsoft/mail/providers/Conversation;
    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Lcom/kingsoft/mail/providers/Conversation;

    .end local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    invoke-direct {v0, p0}, Lcom/kingsoft/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    .line 1383
    .restart local v0    # "c":Lcom/kingsoft/mail/providers/Conversation;
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->cacheConversation(Lcom/kingsoft/mail/providers/Conversation;)V

    .line 1386
    :cond_0
    return-object v0
.end method

.method public getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .locals 6
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;)",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;"
        }
    .end annotation

    .prologue
    .line 2192
    .local p2, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p4, "targetFolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Folder;>;"
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/mail/browse/ConversationCursor;->getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Landroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v0

    return-object v0
.end method

.method public getConversationFolderOperation(Lcom/kingsoft/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Landroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .locals 1
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p5, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Conversation;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Folder;",
            ">;",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;"
        }
    .end annotation

    .prologue
    .line 2199
    .local p2, "folderUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p3, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p4, "targetFolders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Folder;>;"
    invoke-static {p2, p3, p5}, Lcom/kingsoft/mail/browse/ConversationCursor;->addFolderUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 2200
    invoke-static {p4, p5}, Lcom/kingsoft/mail/browse/ConversationCursor;->addTargetFolders(Ljava/util/Collection;Landroid/content/ContentValues;)V

    .line 2201
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p5}, Lcom/kingsoft/mail/browse/ConversationCursor;->getOperationForConversation(Lcom/kingsoft/mail/providers/Conversation;ILandroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    move-result-object v0

    return-object v0
.end method

.method public getConversationIds()Ljava/util/Set;
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
    .line 281
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->conversationIds()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationPosition(J)I
    .locals 9
    .param p1, "conversationId"    # J

    .prologue
    .line 800
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v7, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition(J)I

    move-result v4

    .line 801
    .local v4, "underlyingPosition":I
    if-gez v4, :cond_0

    .line 833
    .end local v4    # "underlyingPosition":I
    :goto_0
    return v4

    .line 808
    .restart local v4    # "underlyingPosition":I
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 809
    move v5, v4

    .line 810
    .local v5, "updatedPosition":I
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 812
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 814
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 815
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "__deleted__"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 818
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    .local v0, "conversationUri":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v7, v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition(Ljava/lang/String;)I

    move-result v1

    .line 820
    .local v1, "deletedItemPosition":I
    if-ne v1, v4, :cond_2

    .line 822
    const/4 v4, -0x1

    monitor-exit v8

    goto :goto_0

    .line 834
    .end local v0    # "conversationUri":Ljava/lang/String;
    .end local v1    # "deletedItemPosition":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .end local v4    # "underlyingPosition":I
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 825
    .restart local v0    # "conversationUri":Ljava/lang/String;
    .restart local v1    # "deletedItemPosition":I
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .restart local v4    # "underlyingPosition":I
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ltz v1, :cond_1

    if-ge v1, v4, :cond_1

    .line 829
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 833
    .end local v0    # "conversationUri":Ljava/lang/String;
    .end local v1    # "deletedItemPosition":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-nez v0, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCount() on disabled cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v0

    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDeletedItems()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    iget-object v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v6

    .line 767
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 768
    .local v0, "deletedItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 770
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .local v3, "uriBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 772
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 773
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 774
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "__deleted__"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 777
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriToCachingUriString(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    .end local v0    # "deletedItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .end local v3    # "uriBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 780
    .restart local v0    # "deletedItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;>;"
    .restart local v3    # "uriBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 1322
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1323
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Double;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 1324
    :goto_0
    return-wide v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getDouble(I)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1330
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1331
    :goto_0
    return v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getFloat(I)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1336
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1337
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1338
    :goto_0
    return v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getLocalSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mLocalSearchType:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1344
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1345
    :goto_0
    return-wide v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getOperationForConversation(Lcom/kingsoft/mail/providers/Conversation;ILandroid/content/ContentValues;)Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;
    .locals 1
    .param p1, "conv"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "type"    # I
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2173
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;ILcom/kingsoft/mail/providers/Conversation;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1351
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Short;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 1352
    :goto_0
    return v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getShort(I)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 1359
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getInnerUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriToCachingUriString(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 1363
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1364
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getType(I)I

    move-result v0

    return v0
.end method

.method public getUnderlyingPosition(J)I
    .locals 1
    .param p1, "conversationId"    # J

    .prologue
    .line 792
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition(J)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 2065
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleNotificationActions()V
    .locals 2

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/browse/ConversationCursor$3;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2456
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2330
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 1984
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 1979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 1969
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 1974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 2024
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isRefreshReady()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    return v0
.end method

.method public isRefreshRequired()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    return v0
.end method

.method public isSearch()Z
    .locals 1

    .prologue
    .line 2493
    sget-object v0, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v2, "Create: initial creation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->doQuery(Z)Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->setCursor(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    iget-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    .line 246
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->underlyingChanged()V

    .line 249
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 240
    :catchall_0
    move-exception v0

    iget-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    if-eqz v2, :cond_1

    .line 241
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mInitialConversationLimit:Z

    .line 246
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->underlyingChanged()V

    :cond_1
    throw v0

    .line 249
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public markContentsSeen()V
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursorOperationListener$OperationHelper;->markContentsSeen(Landroid/database/Cursor;)V

    .line 2461
    return-void
.end method

.method public mostlyArchive(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2281
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v0, 0x83

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public mostlyDelete(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2288
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public mostlyDestructiveUpdate(Ljava/util/Collection;Landroid/content/ContentValues;)I
    .locals 1
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2296
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/16 v0, 0x82

    invoke-direct {p0, p1, v0, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getOperationsForConversations(Ljava/util/Collection;ILandroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->apply(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "move unsupported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveToFirst()Z
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1241
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-nez v0, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToFirst() on disabled cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    .line 1246
    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1247
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    .line 1308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "moveToLast unsupported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveToNext()Z
    .locals 2

    .prologue
    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToNext()Z

    move-result v0

    .line 1189
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 1190
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1196
    const/4 v1, 0x0

    .line 1200
    :goto_0
    return v1

    .line 1198
    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1199
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1200
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1252
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-nez v2, :cond_0

    .line 1253
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveToPosition() on disabled cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->qUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1261
    const-string/jumbo v2, "ConvCursor"

    const-string/jumbo v3, "*** Underlying cursor position is -1 asking to move from %d to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1264
    :cond_1
    if-nez p1, :cond_2

    .line 1265
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToFirst()Z

    move-result v1

    .line 1293
    :goto_0
    return v1

    .line 1266
    :cond_2
    if-gez p1, :cond_3

    .line 1267
    iput v6, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1268
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    goto :goto_0

    .line 1270
    :cond_3
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    if-ne p1, v2, :cond_5

    .line 1272
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1273
    :cond_5
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    if-le p1, v2, :cond_8

    .line 1274
    :cond_6
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    if-le p1, v2, :cond_7

    .line 1275
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_7
    move v1, v0

    .line 1279
    goto :goto_0

    .line 1280
    :cond_8
    if-ltz p1, :cond_9

    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    sub-int/2addr v2, p1

    if-le v2, p1, :cond_9

    .line 1285
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToFirst()Z

    .line 1286
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPosition(I)Z

    move-result v1

    goto :goto_0

    .line 1288
    :cond_9
    iget v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    if-ge p1, v2, :cond_a

    .line 1289
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_a
    move v1, v0

    .line 1293
    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPrevious()Z

    move-result v0

    .line 1211
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 1213
    iput v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1214
    const/4 v1, 0x0

    .line 1218
    :goto_0
    return v1

    .line 1216
    :cond_1
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getCachedValue(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1217
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPosition:I

    .line 1218
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mute(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2246
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public notifyUIPositionChange()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    # invokes: Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->notifyConversationUIPositionChange()V
    invoke-static {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$1300(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 1429
    return-void
.end method

.method public onStateChanged(Lcom/kingsoft/mail/utils/DrawIdler;I)V
    .locals 1
    .param p1, "idler"    # Lcom/kingsoft/mail/utils/DrawIdler;
    .param p2, "newState"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->onStateChanged(Lcom/kingsoft/mail/utils/DrawIdler;I)V

    .line 872
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    .line 258
    return-void
.end method

.method public refresh()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1139
    sget-object v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->searchParam:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1156
    :goto_0
    return v0

    .line 1142
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1143
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    if-eqz v3, :cond_1

    .line 1148
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v1, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->stopCaching()V

    .line 1153
    :cond_2
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Lcom/kingsoft/mail/browse/ConversationCursor$1;)V

    iput-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    .line 1154
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1155
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 2041
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2051
    return-void
.end method

.method public removeListener(Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/kingsoft/mail/browse/ConversationCursor$ConversationListener;

    .prologue
    .line 862
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    monitor-exit v1

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportNotSpam(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2260
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public reportPhishing(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2267
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public reportSpam(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2253
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->applyAction(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 2083
    const/4 v0, 0x1

    return v0
.end method

.method public requireRemoteSearch(Ljava/lang/String;Ljava/lang/String;ZJLcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;)V
    .locals 17
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "searchParam"    # Ljava/lang/String;
    .param p3, "isInit"    # Z
    .param p4, "mailboxId"    # J
    .param p6, "callBack"    # Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    .prologue
    .line 2629
    sget-object v1, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->REMOTE_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    if-eqz v1, :cond_0

    .line 2665
    :goto_0
    return-void

    .line 2633
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v1, :cond_1

    .line 2635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->stopCaching()V

    .line 2637
    :cond_1
    const/4 v15, 0x0

    .line 2638
    .local v15, "serverStamp":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getPosition()I

    move-result v13

    .line 2640
    .local v13, "currentPos":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToLast()Z

    .line 2641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 2645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToFirst()Z

    .line 2646
    const/4 v14, 0x0

    .line 2647
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v12

    .line 2649
    .local v12, "count":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 2650
    if-ne v14, v12, :cond_4

    .line 2651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 2657
    .end local v12    # "count":I
    .end local v14    # "index":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1, v13}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    .line 2659
    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v3}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_5

    const/4 v8, 0x0

    :goto_2
    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v7, p3

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;Ljava/lang/String;ZLjava/lang/String;JLcom/kingsoft/mail/browse/ConversationCursor$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .line 2662
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2664
    monitor-exit v16

    goto/16 :goto_0

    .end local v13    # "currentPos":I
    .end local v15    # "serverStamp":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2655
    .restart local v12    # "count":I
    .restart local v13    # "currentPos":I
    .restart local v14    # "index":I
    .restart local v15    # "serverStamp":Ljava/lang/Long;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 2659
    .end local v12    # "count":I
    .end local v14    # "index":I
    :cond_5
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_2
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2078
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    .line 266
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->checkNotifyUI()V

    .line 267
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2499
    sget-object v0, Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;->LOCAL_SEARCHING:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mSearchState:Lcom/kingsoft/mail/browse/ConversationCursor$SearchState;

    .line 2500
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2504
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->stopCaching()V

    .line 2508
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->stopSearchTask()V

    .line 2510
    new-instance v0, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/mail/browse/ConversationCursor$1;)V

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    .line 2511
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2513
    monitor-exit v1

    .line 2514
    const/4 v0, 0x1

    return v0

    .line 2513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConversationColumn(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "conversationUri"    # Landroid/net/Uri;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 925
    invoke-static {p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->uriStringFromCachingUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "uriStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 927
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V

    .line 930
    return-void

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setMostlyDead(Ljava/lang/String;Lcom/kingsoft/mail/providers/Conversation;)V
    .locals 5
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "conv"    # Lcom/kingsoft/mail/providers/Conversation;

    .prologue
    const/4 v4, 0x1

    .line 1747
    const-string/jumbo v0, "ConvCursor"

    const-string/jumbo v1, "[Mostly dead, deferring: %s] "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1748
    const-string/jumbo v0, "conversationFlags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->cacheValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1750
    iget v0, p2, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/kingsoft/mail/providers/Conversation;->convFlags:I

    .line 1751
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mMostlyDead:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1752
    iput-boolean v4, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    .line 1753
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2060
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stopSearchTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2853
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;->cancel(Z)Z

    .line 2855
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask4Search;

    .line 2857
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    if-eqz v0, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->cancel(Z)Z

    .line 2859
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    iget-object v0, v0, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;->mCallBack:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;

    invoke-interface {v0}, Lcom/kingsoft/mail/browse/ConversationCursor$RemoteSearchCallBack;->onCancelRemoteSearch()V

    .line 2860
    iput-object v2, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRemoteTask4Search:Lcom/kingsoft/mail/browse/ConversationCursor$RemoteTask4Search;

    .line 2862
    :cond_1
    return-void
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-nez v0, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1117
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    .line 1119
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->resetCursor(Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)V

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 1121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->notifyDataChanged()V

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public syncForCancel()V
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    if-nez v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mCacheMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1095
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    .line 1097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRequeryCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    .line 1098
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2336
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    const-string/jumbo v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    const-string/jumbo v1, " mDeferSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeferSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2341
    const-string/jumbo v1, " mRefreshRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2343
    const-string/jumbo v1, " mRefreshReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2345
    const-string/jumbo v1, " mRefreshTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mRefreshTask:Lcom/kingsoft/mail/browse/ConversationCursor$RefreshTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2347
    const-string/jumbo v1, " mPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    iget-boolean v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2349
    const-string/jumbo v1, " mDeletedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    iget v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mDeletedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2351
    const-string/jumbo v1, " mUnderlying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    iget-object v1, p0, Lcom/kingsoft/mail/browse/ConversationCursor;->mUnderlyingCursor:Lcom/kingsoft/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2353
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public undo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "undoUri"    # Landroid/net/Uri;

    .prologue
    .line 2214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/mail/browse/ConversationCursor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/mail/browse/ConversationCursor$1;-><init>(Lcom/kingsoft/mail/browse/ConversationCursor;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2224
    invoke-direct {p0}, Lcom/kingsoft/mail/browse/ConversationCursor;->undoLocal()V

    .line 2225
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 2046
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2056
    return-void
.end method

.method public updateBoolean(Lcom/kingsoft/mail/providers/Conversation;Ljava/lang/String;Z)I
    .locals 2
    .param p1, "conversation"    # Lcom/kingsoft/mail/providers/Conversation;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 2089
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kingsoft/mail/providers/Conversation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public updateBoolean(Ljava/util/Collection;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 2111
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2112
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2113
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateValues(Ljava/util/Collection;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public updateBulkValues(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2159
    .local p1, "op":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/browse/ConversationCursor$ConversationOperation;>;"
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/browse/ConversationCursor;->apply(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public updateInt(Ljava/util/Collection;Ljava/lang/String;I)I
    .locals 6
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 2097
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const-string/jumbo v1, "ConvCursor"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2098
    const-string/jumbo v1, "ConvCursor"

    const-string/jumbo v2, "ConversationCursor.updateInt(conversations=%s, columnName=%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2101
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2102
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2103
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateValues(Ljava/util/Collection;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public updateString(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2121
    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateStrings(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateStrings(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2133
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2134
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 2135
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2137
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->updateValues(Ljava/util/Collection;Landroid/content/ContentValues;)I

    move-result v2

    return v2
.end method

.method public updateValues(Ljava/util/Collection;Landroid/content/ContentValues;)I
    .locals 1
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingsoft/mail/providers/Conversation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2148
    .local p1, "conversations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/kingsoft/mail/providers/Conversation;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/kingsoft/mail/browse/ConversationCursor;->getOperationsForConversations(Ljava/util/Collection;ILandroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/browse/ConversationCursor;->apply(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
